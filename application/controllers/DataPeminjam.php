<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPeminjam extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Peminjam';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datapeminjam';
		$this->load->model(data_peminjam_model);
        $this->load->model(data_pinjaman_model);
		$this->load->model(users_model);

    }
                                     
    public function index()
    {
		ifPermissions('peminjam_list');
		$user_id = logged('id'); // Mengambil ID user yang login
		$this->page_data['data_peminjam'] = $this->data_peminjam_model->getPeminjamJoin($user_id);
		$this->load->view('peminjam/list', $this->page_data);
    }
    
	public function add()
	{
		ifPermissions('peminjam_add');
	
		// Get users with role ID 4 (ganti 4 dengan ID peran yang diinginkan)
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 // Get data inventaris with status "Tidak Dipasang"
		$this->load->view('peminjam/add', $this->page_data);
	}
	
    
	public function save()
	{
		ifPermissions('peminjam_add');
		postAllowed();

		$id_pengguna = post('id_pengguna');
		$nama_barang = post('nama_barang');
		$stock_barang = post('stock_barang');
		$id_jurusan = post('id_jurusan');
		$tanggal_terpakai = post('tanggal_terpakai');
		$kelas = post('kelas');
		$alasan_pinjam = post('alasan_pinjam');
	
			if (empty($stock_barang) || $stock_barang == 0) {
				$this->session->set_flashdata('alert-type', 'danger');
				$this->session->set_flashdata('alert', 'Jumlah pinjam tidak boleh kosong atau 0.');
				redirect('datapeminjam/add');
				return;
			}

				$available_stock = $this->data_peminjam_model->getAvailableStock($nama_barang);
				if ($available_stock === null || $available_stock < $stock_barang) {
					$this->session->set_flashdata('alert-type', 'danger');
					$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
					redirect('datapeminjam/add');
					return;
				}
	
		$peminjam_id = $this->data_peminjam_model->create([
			'id_pengguna' => logged('id'),
			'nama_barang' => $nama_barang,
			'stock' => $stock_barang,
			'id_jurusan' => $id_jurusan,
			'tanggal_terpakai' => $tanggal_terpakai,
			'kelas' => $kelas,
			'alasan_pinjam' => $alasan_pinjam,
			'status' => 'Menunggu Konfirmasi'
		]);
	
		$this->activity_model->add('Data Pinjaman Ditambahkan ' . $peminjam_id . ' Created by User:' . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pinjaman Created Successfully');
		redirect('datapeminjam');
	}
	
	public function pengembalian ($id) {
		ifPermissions('pengembalian_add');
		
		$this->page_Data['user_login'] = logged('name');
		$this->page_data['Peminjam'] = $this->data_peminjam_model->getPeminjamJoinByIDD($id);
    	$this->load->view('pengembalian/add_peminjam', $this->page_data);
	}
	
	public function savepengembalian($id)
	{
		ifPermissions('pengembalian_add');
		postAllowed();
	
		$this->historys_model->create([
			'nama_barang' => post('nama_barang'),
			'kode_barang' => post('kode_barang'),
			'kelas' => post('kelas'),
			'tanggal_masuk' => post('tanggal_masuk'),
			'tanggal_keluar' => post('tanggal_keluar'),
			'nama_pemindah_barang' => post('nama_pemindah_barang'),
			'jurusan' => post('jurusan'),
			'kondisi_barang' => post('kondisi_barang'),
			'statuss' => 'Sudah Dikembalikan'
		]);
	
		// Get the pinjaman data
		$peminjam = $this->data_peminjam_model->getById($id);
	
		// Update the stok data inventaris
		$this->data_peminjam_model->updateInventoryStockOnDelete($peminjam->nama_barang, $peminjam->stock);
	
		// Delete the pinjaman entry from the database
		$this->data_peminjam_model->delete($id);
	
		$this->activity_model->add('Data Pinjaman Dikembalikan ' . $id . ' Created by User:' . logged('name'), logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris Dikembalikan');
	
		redirect('datapeminjam');
	}
	

	public function delete($id)
	{
		ifPermissions('peminjam_delete');
	
		$peminjam_entry = $this->data_peminjam_model->getById($id);
		if (!$peminjam_entry) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Pinjaman not found.');
			redirect('datapeminjam');
			return;
		}
	

		$this->data_peminjam_model->delete($id);
		$this->activity_model->add("#$id Data Pinjaman Deleted by User:" . logged('name'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('datapeminjam');
	}
	

	public function konfirmasi ($id) {
		ifPermissions('peminjam_confirmation');

		$data = [
			'status' => 'Dikonfirmasi - Belum Dikembalikan'
			
		];

		$id = $this->data_peminjam_model->update($id, $data);

		$this->activity_model->add("Data peminjam Inventaris #$id Dikonfirmasi Oleh Operator :".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Operator menngkonfirmasi peminjaman barang inventaris');
		
		redirect('datapeminjam');
	}

	public function edit($id)
	{

		ifPermissions('peminjam_edit');

		$this->page_data['data_peminjam'] = $this->data_peminjam_model->getById($id);
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 $this->load->model('data_peminjam_model');
		 $this->page_data['inventaris_list'] = $this->data_peminjam_model->getInventarisTidakDipasang();
		$this->load->view('peminjam/edit', $this->page_data);

	}

	
	public function update($id)
	{
		postAllowed();
	
		ifPermissions('peminjam_edit');
	
		$data = [
			'id_pengguna' => logged('id'),
			'nama_barang' => $this->input->post('nama_barang'),
			'stock' => $this->input->post('stock_barang'),
			'id_jurusan' => $this->input->post('id_jurusan'),
			'tanggal_terpakai' => $this->input->post('tanggal_terpakai'),
			'kelas' => $this->input->post('kelas'),
			'alasan_pinjam' => $this->input->post('alasan_pinjam'),
		];
	
		// Check if the updated stock exceeds available stock
		$available_stock = $this->data_peminjam_model->getAvailableStock($data['nama_barang']);
		if ($available_stock === null || $data['stock'] > $available_stock) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
			redirect('datapeminjam/edit/' . $id); // Redirect back to the edit page
			return;
		}
	
		$permission = $this->data_peminjam_model->update($id, $data);
	
		$this->activity_model->add("Data Pinjaman #$id Updated by User: #" . logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pinjaman has been Updated Successfully');
	
		redirect('datapeminjam');
	}
	

	public function getStockByNamaBarang()
	{
		$namabarang = $this->input->post('nama_barang');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_peminjam_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_peminjam_model->getStockByNamaBarang($namabarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}
	
	
};