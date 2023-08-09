<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataPemeliharaanpinjam extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Pemeliharaan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datapemeliharaanpinjam';
        $this->load->model(data_pemeliharaanpinjam_model);
		$this->load->model(data_inventaris_model);
	}

    public function index()
    {
        ifPermissions('pemeliharaan_list');
    
        $conditions = ['status_alat' => 'Alat Untuk Dipinjam']; // Define the filter conditions
        $this->page_data['data_pemeliharaanpinjam'] = $this->data_pemeliharaanpinjam_model->getPemeliharaanpinjamJoin($conditions);
    
        $this->load->view('data_pemeliharaanpinjam/list', $this->page_data);
    }
    

    public function add()
	{
		ifPermissions('pemeliharaan_add');
		$this->page_data['nama_barang_list'] = $this->data_inventaris_model->getListPemeliharaanKosong();
		$this->load->view('data_pemeliharaanpinjam/add', $this->page_data);
	}

    public function save()
	{
		ifPermissions('pemeliharaan_add');
		postAllowed();
	
		$nama_barang = post('nama_barang');
		$jumlah_rusak = post('jumlah_rusak');
		$jumlah_hilang = post('jumlah_hilang');
		$tanggal_pemeliharaan = post('tanggal_pemeliharaan');
		$keterangan = post('keterangan');
		$stock = post('stock');
	
		// Check if jumlah_rusak + jumlah_hilang is greater than stock
		$stockValue = $this->data_inventaris_model->getJumlahAlatByStock($nama_barang)->stock;
	
		if (($jumlah_rusak + $jumlah_hilang) > $stockValue) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Maaf, Jumlah Alat Dipasang Kurang');
			redirect('datapemeliharaan/add'); // Redirect back to the add page
			return; // Stop further execution
		}
	
		// Continue with saving data
		// ...
	
		// Menyimpan data pemeliharaan baru
		$id = $this->data_pemeliharaanpinjam_model->create([
			'nama_barang' => $nama_barang,
			'jumlah_rusak' => $jumlah_rusak,
			'jumlah_hilang' => $jumlah_hilang,
			'tanggal_pemeliharaan' => $tanggal_pemeliharaan,
			'keterangan' => $keterangan,
			'status_alat' => 'Alat Untuk Dipinjam'
		]);
	
		// Mengurangi nilai 'stock' berdasarkan jumlah rusak dan hilang
		if ($stock && ($jumlah_rusak > 0 || $jumlah_hilang > 0)) {
			$this->data_inventaris_model->reduceStock($nama_barang, $jumlah_rusak + $jumlah_hilang);
		}
	
		// Catat aktivitas dan set pesan flash
		$this->activity_model->add('Data Pemeliharaan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pemeliharaan Created Successfully');
	
		redirect('datapemeliharaanpinjam');
	}

    public function delete($id)
	{
		ifPermissions('pemeliharaan_delete');
	
		// Mengambil data pemeliharaan yang akan dihapus
		$pemeliharaan = $this->data_pemeliharaan_model->getById($id);
	
		// Menghapus data pemeliharaan dari tabel pemeliharaan
		$this->data_pemeliharaan_model->delete($id);
	
		// Mengembalikan jumlah_hilang dan jumlah_rusak ke data dipasang
		$jumlah_hilang = $pemeliharaan->jumlah_hilang;
		$jumlah_rusak = $pemeliharaan->jumlah_rusak;
	
		if ($jumlah_hilang > 0 || $jumlah_rusak > 0) {
			$nama_barang = $pemeliharaan->nama_barang;
			$total_pengurangan = $jumlah_hilang + $jumlah_rusak;
			
			// Menggunakan model data_inventaris_model untuk mengembalikan nilai dipasang
			$this->data_inventaris_model->increaseStock($nama_barang, $total_pengurangan);
		}
	
		$this->activity_model->add(" #$id Deleted by User:".logged('name'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Laporkan Kerusakan has been Deleted Successfully');
		
		redirect('datapemeliharaanpinjam');
	}
    public function getJumlahAlatByNamaBarang()
	{
		$idbarang = $this->input->post('id');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_pemeliharaanpinjam_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_pemeliharaanpinjam_model->getJumlahAlatByNamaBarang($idbarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}

	public function getJumlahAlatByStock()
	{
		$idbarang = $this->input->post('id');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_pemeliharaanpinjam_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_pemeliharaanpinjam_model->getJumlahAlatByStock($idbarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}
}