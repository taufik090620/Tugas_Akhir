<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPinjaman extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pinjaman';
        // not mandatory, takes default value if not passed
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
	
		// Get users with role ID 4 (ganti 4 dengan ID peran yang diinginkan)
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 // Get data inventaris with status "Tidak Dipasang"
		 $this->load->model('data_pinjaman_model');
		 $this->page_data['inventaris_list'] = $this->data_pinjaman_model->getInventarisTidakDipasang();
	
		$this->load->view('pinjaman/add', $this->page_data);
	}
	
    
	public function save()
	{
		ifPermissions('pinjaman_add');
		postAllowed();
	
		// Extract data from the POST request and create a new pinjaman entry in the database
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
				redirect('datapinjaman/add');
				return;
			}
			    // Check if the item exists in 'data_inventaris' table
				$available_stock = $this->data_pinjaman_model->getAvailableStock($nama_barang);
				if ($available_stock === null || $available_stock < $stock_barang) {
					// Show an error message if the requested stock exceeds the available stock
					$this->session->set_flashdata('alert-type', 'danger');
					$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
					redirect('datapinjaman/add');
					return;
				}
	
		// Create a new entry in 'data_pinjam' table
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
	
		// Update the stock in 'data_inventaris' table
		$this->data_pinjaman_model->updateInventoryStock($nama_barang, $stock_barang);
	
		// Log the activity and set success flashdata before redirecting to 'datapinjaman' page.
		// Note: The 'activity_model' and other helper functions (ifPermissions, postAllowed) are not shown in the provided code.
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
	
		// Get the pinjaman data
		$pinjaman = $this->data_pinjaman_model->getById($id);
	
		// Update the stok data inventaris
		$this->data_pinjaman_model->updateInventoryStockOnDelete($pinjaman->nama_barang, $pinjaman->stock);
	
		// Delete the pinjaman entry from the database
		$this->data_pinjaman_model->delete($id);
	
		$this->activity_model->add('Data Pinjaman Dikembalikan ' . $id . ' Created by User:' . logged('name'), logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris Dikembalikan');
	
		redirect('datapinjaman');
	}
	

	public function delete($id)
	{
		ifPermissions('pinjaman_delete');
	
		// Get the data_pinjam entry to be deleted
		$pinjaman_entry = $this->data_pinjaman_model->getById($id);
		if (!$pinjaman_entry) {
			// If the data_pinjam entry doesn't exist, show an error message and redirect
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Pinjaman not found.');
			redirect('datapinjaman');
			return;
		}
	
		// Restore the stock in 'data_inventaris' table
		$this->data_pinjaman_model->updateInventoryStockOnDelete($pinjaman_entry->nama_barang, $pinjaman_entry->stock);
	
		// Delete the data_pinjam entry from the database
		$this->data_pinjaman_model->delete($id);
	
		// Log the activity and set success flashdata before redirecting to 'datapinjaman' page.
		$this->activity_model->add("#$id Data Pinjaman Deleted by User:" . logged('name'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('datapinjaman');
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

		ifPermissions('pinjaman_edit');

		$this->page_data['data_pinjaman'] = $this->data_pinjaman_model->getById($id);
		// Get users with role ID 4 (ganti 4 dengan ID peran yang diinginkan)
		$this->load->model('users_model');
		$this->page_data['users_list'] = $this->users_model->getUsersByRole(4);
		 // Get data inventaris with status "Tidak Dipasang"
		 $this->load->model('data_pinjaman_model');
		 $this->page_data['inventaris_list'] = $this->data_pinjaman_model->getInventarisTidakDipasang();
		$this->load->view('pinjaman/edit', $this->page_data);

	}

	
	public function update($id)
	{
		ifPermissions('pinjaman_edit');
		postAllowed();
	
		// Get the existing pinjaman entry from the database
		$existing_pinjaman = $this->data_pinjaman_model->getById($id);
	
		if (!$existing_pinjaman) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Pinjaman not found.');
			redirect('datapinjaman');
			return;
		}
	
		// Extract data from the POST request and create an array with the updated pinjaman information
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
			redirect('datapinjaman/edit/' . $id);
			return;
		}
	
		// Check if the item exists in 'data_inventaris' table
		$available_stock = $this->data_pinjaman_model->getAvailableStock($data['nama_barang']);
	
		if ($available_stock === null) {
			// If the item doesn't exist in 'data_inventaris', show an error message and redirect
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Data Barang not found in inventory.');
			redirect('datapinjaman/edit/' . $id);
			return;
		}
	
		// Compare the current stock of the item with the stock requested for update
		// If the requested stock is greater than the current stock, update both the entry in 'data_pinjam' table and the stock in 'data_inventaris' table
		// Otherwise, update only the non-stock related fields (e.g., 'id_pengguna', 'nama_barang', 'id_jurusan', 'tanggal_terpakai', 'kelas')
		if ($stock_barang > $existing_pinjaman->stock) {
			// Check if the requested stock exceeds the available stock in 'data_inventaris' table
			if ($available_stock < ($stock_barang - $existing_pinjaman->stock)) {
				// Show an error message if the requested stock exceeds the available stock
				$this->session->set_flashdata('alert-type', 'danger');
				$this->session->set_flashdata('alert', 'Maaf Stock Alat Habis Atau Stock Alat Kurang.');
				redirect('datapinjaman/edit/' . $id);
				return;
			} else {
				// Update the stock in 'data_inventaris' table only if the requested stock is greater than the current stock
				$this->data_pinjaman_model->updateInventoryStock($data['nama_barang'], $stock_barang - $existing_pinjaman->stock);
			}
		}
	
		// Update the entry in 'data_pinjam' table
		$data['stock'] = $stock_barang;
		$this->data_pinjaman_model->update($id, $data);
	
		// Log the activity and set success flashdata before redirecting to 'datapinjaman' page.
		$this->activity_model->add("Data Pinjaman #$id Updated by User: " . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pinjaman has been Updated Successfully');
		redirect('datapinjaman');
	}
	
	public function getStockByNamaBarang()
	{
		$namabarang = $this->input->post('nama_barang');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_pinjaman_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_pinjaman_model->getStockByNamaBarang($namabarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}
};