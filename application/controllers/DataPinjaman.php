<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPinjaman extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pinjaman';
        $this->page_data['page']->menu = 'datapinjaman';
		$this->load->model(data_pinjaman_model);
		$this->load->model(users_model);

    }
                                     
    public function index()
    {
		ifPermissions('pinjaman_list');
		$this->page_data['data_pinjaman'] = $this->data_pinjaman_model->getPinjamanJoin();
        
		$this->load->view('pinjaman/list', $this->page_data);
    }
    
	public function add()
	{
		ifPermissions('pinjaman_add');
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 $this->load->model('data_pinjaman_model');
		 $this->page_data['inventaris_list'] = $this->data_pinjaman_model->getInventarisTidakDipasang();
	
		$this->load->view('pinjaman/add', $this->page_data);
	}
	
    
	public function save()
	{
		ifPermissions('pinjaman_add');
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
				redirect('datapinjaman/add');
				return;
			}

				$available_stock = $this->data_pinjaman_model->getAvailableStock($nama_barang);
				if ($available_stock === null || $available_stock < $stock_barang) {
					$this->session->set_flashdata('alert-type', 'danger');
					$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
					redirect('datapinjaman/add');
					return;
				}
	
		$pinjaman_id = $this->data_pinjaman_model->create([
			'id_pengguna' => $id_pengguna,
			'nama_barang' => $nama_barang,
			'stock' => $stock_barang,
			'id_jurusan' => $id_jurusan,
			'tanggal_terpakai' => $tanggal_terpakai,
			'kelas' => $kelas,
			'alasan_pinjam' => $alasan_pinjam,
			'status' => 'Menunggu Konfirmasi'
		]);
	
		$this->activity_model->add('Data Pinjaman Ditambahkan ' . $pinjaman_id . ' Created by User:' . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pinjaman Created Successfully');
		redirect('datapinjaman');
	}
	
	public function pengembalian ($id) {
		ifPermissions('pengembalian_add');
		
		$this->page_Data['user_login'] = logged('name');
		$this->page_data['Pinjam'] = $this->data_pinjaman_model->getPinjamanJoinByIDD($id);
    	$this->load->view('pengembalian/add', $this->page_data);
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
	
		$pinjaman = $this->data_pinjaman_model->getById($id);
	
		$this->data_pinjaman_model->updateInventoryStockOnDelete($pinjaman->nama_barang, $pinjaman->stock);
	
		$this->data_pinjaman_model->delete($id);
	
		$this->activity_model->add('Data Pinjaman Dikembalikan ' . $id . ' Created by User:' . logged('name'), logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris Dikembalikan');
	
		redirect('datapinjaman');
	}
	

	public function delete($id)
	{
		ifPermissions('pinjaman_delete');
	
		$pinjaman_entry = $this->data_pinjaman_model->getById($id);
		if (!$pinjaman_entry) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Pinjaman not found.');
			redirect('datapinjaman');
			return;
		}
	
		$this->data_pinjaman_model->updateInventoryStockOnDelete($pinjaman_entry->nama_barang, $pinjaman_entry->stock);

		$this->data_pinjaman_model->delete($id);
		$this->activity_model->add("#$id Data Pinjaman Deleted by User:" . logged('name'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('datapinjaman');
	}
	

	public function konfirmasi($id)
	{
		ifPermissions('pinjaman_confirmation');
	
		$data = [
			'status' => 'Dikonfirmasi - Belum Dikembalikan',
		];
	
		$id = $this->data_pinjaman_model->update($id, $data);
	
		// Tambahkan langkah pengurangan stok disini
		$pinjaman = $this->data_pinjaman_model->getById($id);
		$this->data_pinjaman_model->updateInventoryStock($pinjaman->nama_barang, $pinjaman->stock);
	
		$this->activity_model->add("Data Pinjaman Inventaris #$id Dikonfirmasi Oleh Operator :" . logged('name'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Operator menngkonfirmasi peminjaman barang inventaris');
	
		redirect('datapinjaman');
	}
	
	

	public function edit($id)
	{

		ifPermissions('pinjaman_edit');

		$this->page_data['data_pinjaman'] = $this->data_pinjaman_model->getById($id);
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 $this->load->model('data_pinjaman_model');
		 $this->page_data['inventaris_list'] = $this->data_pinjaman_model->getInventarisTidakDipasang();
		$this->load->view('pinjaman/edit', $this->page_data);

	}

	
	public function update($id)
	{
		postAllowed();
	
		ifPermissions('pinjaman_edit');
	
		$data = [
			'id_pengguna' => $this->input->post('id_pengguna'),
			'nama_barang' => $this->input->post('nama_barang'),
			'stock' => $this->input->post('stock_barang'),
			'id_jurusan' => $this->input->post('id_jurusan'),
			'tanggal_terpakai' => $this->input->post('tanggal_terpakai'),
			'kelas' => $this->input->post('kelas'),
			'alasan_pinjam' => $this->input->post('alasan_pinjam'),
		];
	
		// Check if the updated stock exceeds available stock
		$available_stock = $this->data_pinjaman_model->getAvailableStock($data['nama_barang']);
		if ($available_stock === null || $data['stock'] > $available_stock) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
			redirect('datapinjaman/edit/' . $id); // Redirect back to the edit page
			return;
		}
	
		$permission = $this->data_pinjaman_model->update($id, $data);
	
		$this->activity_model->add("Data Pinjaman #$id Updated by User: #" . logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pinjaman has been Updated Successfully');
	
		redirect('datapinjaman');
	}
	
	

	
	public function getStockByNamaBarang()
	{
		$namabarang = $this->input->post('nama_barang');

		$this->load->model('Data_pinjaman_model');
	
		$data = $this->Data_pinjaman_model->getStockByNamaBarang($namabarang);
	
		echo json_encode($data);
	}
};