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
		 $this->load->model('data_peminjam_model');
		 $this->page_data['inventaris_list'] = $this->data_peminjam_model->getInventarisTidakDipasang();
	
		$this->load->view('peminjam/add', $this->page_data);
	}
	
    
	public function save()
	{
		ifPermissions('peminjam_add');
		postAllowed();
	
		// Extract data from the POST request and create a new peminjam entry in the database
		$id_pengguna = post('id_pengguna');
		$nama_barang = post('nama_barang');
		$stock_barang = post('stock_barang');
		$id_jurusan = post('id_jurusan');
		$tanggal_terpakai = post('tanggal_terpakai');
		$kelas = post('kelas');
		$alasan_pinjam = post('alasan_pinjam');
	
			// Validate the 'stock_barang' field
			if (empty($stock_barang) || $stock_barang == 0) {
				$this->session->set_flashdata('alert-type', 'danger');
				$this->session->set_flashdata('alert', 'Jumlah pinjam tidak boleh kosong atau 0.');
				redirect('datapeminjam/add');
				return;
			}
			    // Check if the item exists in 'data_inventaris' table
				$available_stock = $this->data_peminjam_model->getAvailableStock($nama_barang);
				if ($available_stock === null || $available_stock < $stock_barang) {
					// Show an error message if the requested stock exceeds the available stock
					$this->session->set_flashdata('alert-type', 'danger');
					$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
					redirect('datapeminjam/add');
					return;
				}
	
		// Create a new entry in 'data_pinjam' table
		$peminjam_id = $this->data_peminjam_model->create([
			'id_pengguna' => $id_pengguna,
			'nama_barang' => $nama_barang,
			'stock' => $stock_barang,
			'id_jurusan' => $id_jurusan,
			'tanggal_terpakai' => $tanggal_terpakai,
			'kelas' => $kelas,
			'alasan_pinjam' => $alasan_pinjam,
			'status' => 'Menunggu Konfirmasi'
		]);
	
		// Update the stock in 'data_inventaris' table
		$this->data_peminjam_model->updateInventoryStock($nama_barang, $stock_barang);
	
		// Log the activity and set success flashdata before redirecting to 'datapeminjam' page.
		// Note: The 'activity_model' and other helper functions (ifPermissions, postAllowed) are not shown in the provided code.
		$this->activity_model->add('Data Peminjam Ditambahkan ' . $peminjam_id . ' Created by User:' . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Peminjam Created Successfully');
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
	
		// Get the data_pinjam entry to be deleted
		$peminjam_entry = $this->data_peminjam_model->getById($id);
		if (!$peminjam_entry) {
			// If the data_pinjam entry doesn't exist, show an error message and redirect
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data peminjam not found.');
			redirect('datapeminjam');
			return;
		}
	
		// Restore the stock in 'data_inventaris' table
		$this->data_peminjam_model->updateInventoryStockOnDelete($peminjam_entry->nama_barang, $peminjam_entry->stock);
	
		// Delete the data_pinjam entry from the database
		$this->data_peminjam_model->delete($id);
	
		// Log the activity and set success flashdata before redirecting to 'datapeminjam' page.
		$this->activity_model->add("#$id Data peminjam Deleted by User:" . logged('name'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('datapeminjam');
	}
	

	public function konfirmasi ($id) {
		ifPermissions('pinjaman_confirmation');

		$data = [
			'status' => 'Dikonfirmasi - Belum Dikembalikan'
			
		];
		


		$id = $this->data_pinjaman_model->update($id, $data);

		$this->activity_model->add("Data Pinjaman Inventaris #$id Dikonfirmasi Oleh Operator :".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Operator menngkonfirmasi peminjaman barang inventaris');
		
		redirect('datapinjaman');
	}

	public function edit($id)
	{

		ifPermissions('peminjam_edit');

		$this->page_data['data_peminjam'] = $this->data_peminjam_model->getById($id);
		// Get users with role ID 4 (ganti 4 dengan ID peran yang diinginkan)
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 // Get data inventaris with status "Tidak Dipasang"
		 $this->load->model('data_peminjam_model');
		 $this->page_data['inventaris_list'] = $this->data_peminjam_model->getInventarisTidakDipasang();
		$this->load->view('peminjam/edit', $this->page_data);

	}

	
	public function update($id)
	{
		ifPermissions('peminjam_edit');
		postAllowed();
	
		// Get the existing pinjaman entry from the database
		$existing_peminjam = $this->data_peminjam_model->getById($id);
	
		if (!$existing_peminjam) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data peminjam not found.');
			redirect('datapeminjam');
			return;
		}
	
		// Extract data from the POST request and create an array with the updated peminjam information
		$data = [
			'id_pengguna' => post('id_pengguna'),
			'nama_barang' => post('nama_barang'),
			'id_jurusan' => post('id_jurusan'),
			'tanggal_terpakai' => post('tanggal_terpakai'),
			'kelas' => post('kelas'),
			'status' => 'Menunggu Konfirmasi'
		];
	
		// Validate the 'stock_barang' field
		$stock_barang = post('stock_barang');
		if (empty($stock_barang) || $stock_barang == 0) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Jumlah pinjam tidak boleh kosong atau 0.');
			redirect('datapeminjam/edit/' . $id);
			return;
		}
	
		// Check if the item exists in 'data_inventaris' table
		$available_stock = $this->data_peminjam_model->getAvailableStock($data['nama_barang']);
	
		if ($available_stock === null) {
			// If the item doesn't exist in 'data_inventaris', show an error message and redirect
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Barang not found in inventory.');
			redirect('datapeminjam/edit/' . $id);
			return;
		}
	
		// Compare the current stock of the item with the stock requested for update
		// If the requested stock is greater than the current stock, update both the entry in 'data_pinjam' table and the stock in 'data_inventaris' table
		// Otherwise, update only the non-stock related fields (e.g., 'id_pengguna', 'nama_barang', 'id_jurusan', 'tanggal_terpakai', 'kelas')
		if ($stock_barang > $existing_peminjam->stock) {
			// Check if the requested stock exceeds the available stock in 'data_inventaris' table
			if ($available_stock < ($stock_barang - $existing_peminjam->stock)) {
				// Show an error message if the requested stock exceeds the available stock
				$this->session->set_flashdata('alert-type', 'danger');
				$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
				redirect('datapeminjam/edit/' . $id);
				return;
			} else {
				// Update the stock in 'data_inventaris' table only if the requested stock is greater than the current stock
				$this->data_peminjam_model->updateInventoryStock($data['nama_barang'], $stock_barang - $existing_peminjam->stock);
			}
		}
	
		// Update the entry in 'data_pinjam' table
		$data['stock'] = $stock_barang;
		$this->data_peminjam_model->update($id, $data);
	
		// Log the activity and set success flashdata before redirecting to 'datapeminjam' page.
		$this->activity_model->add("Data peminjam #$id Updated by User: " . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'peminjam has been Updated Successfully');
		redirect('datapeminjam');
	}
	
	
};