<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataPemeliharaan extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Pemeliharaan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datapemeliharaan';
		$this->load->model(data_pemeliharaan_model);
		$this->load->model(data_inventaris_model);
	}

	public function index()
    {
		ifPermissions('pemeliharaan_list');
		
        $conditions = ['status_alat' => 'Dipasang']; // Define the filter conditions
        $this->page_data['data_pemeliharaan'] = $this->data_pemeliharaan_model->getPemeliharaanJoin($conditions);
    
        $this->load->view('data_pemeliharaan/list', $this->page_data);
    }

	
	public function add()
	{
		ifPermissions('pemeliharaan_add');
		$this->page_data['nama_barang_list'] = $this->data_inventaris_model->getListPemeliharaanKosong();
		$this->load->view('data_pemeliharaan/add', $this->page_data);
	}
	
	public function getNamaBarangByJurusan()
	{
		$id_jurusan = $this->input->post('id_jurusan');
		$nama_barang_list = $this->data_inventaris_model->getListPemeliharaanKosongByJurusan($id_jurusan);
		echo json_encode($nama_barang_list);
	}	

	public function save()
	{
		ifPermissions('pemeliharaan_add');
		postAllowed();
	
		$nama_barang = post('nama_barang');
		$jumlah_baik = post('jumlah_baik');
		$jumlah_rusak = post('jumlah_rusak');
		$jumlah_hilang = post('jumlah_hilang');
		$tanggal_pemeliharaan = post('tanggal_pemeliharaan');
		$keterangan = post('keterangan');
		$dipasang = post('dipasang');
	
		// Check if jumlah_rusak + jumlah_hilang is greater than dipasang
		$dipasangValue = $this->data_inventaris_model->getJumlahAlatByDipasang($nama_barang)->dipasang;
	
		if (($jumlah_rusak + $jumlah_hilang) > $dipasangValue) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Maaf, Jumlah Alat Dipasang Kurang');
			redirect('datapemeliharaan/add'); // Redirect back to the add page
			return; // Stop further execution
		}
	
		// Continue with saving data
		// ...
	
		// Menyimpan data pemeliharaan baru
		$id = $this->data_pemeliharaan_model->create([
			'nama_barang' => $nama_barang,
			'jumlah_baik' => $jumlah_baik,
			'jumlah_rusak' => $jumlah_rusak,
			'jumlah_hilang' => $jumlah_hilang,
			'tanggal_pemeliharaan' => $tanggal_pemeliharaan,
			'keterangan' => $keterangan,
			'status_alat' => 'Dipasang'
		]);
	
		// Mengurangi nilai 'dipasang' berdasarkan jumlah rusak dan hilang
		if ($dipasang && ($jumlah_rusak > 0 || $jumlah_hilang > 0)) {
			$this->data_inventaris_model->reduceDipasang($nama_barang, $jumlah_rusak + $jumlah_hilang);
		}
	
		// Catat aktivitas dan set pesan flash
		$this->activity_model->add('Data Pemeliharaan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Berhasil Tambah Data Pemeliharaan Alat Dipasang');
	
		redirect('datapemeliharaan');
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
			$this->data_inventaris_model->increaseDipasang($nama_barang, $total_pengurangan);
		}
	
		$this->activity_model->add(" #$id Deleted by User:".logged('name'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Berhasil Hapus Data Pemeliharaan Alat Dipasang');
		
		redirect('datapemeliharaan');
	}
	
	
	
	public function edit($id)
	{

		ifPermissions('pemeliharaan_edit');

		$this->page_data['data_pemeliharaan'] = $this->data_pemeliharaan_model->getById($id);
		$this->load->view('data_pemeliharaan/edit', $this->page_data);

	}

	
	public function update($id)
	{
		postAllowed();
		ifPermissions('pemeliharaan_edit');
	
		$data = [
			'nama_barang' => $this->input->post('nama_barang'),
			'jumlah_baik' => $this->input->post('jumlah_baik'),
			'jumlah_rusak' => $this->input->post('jumlah_rusak'),
			'jumlah_hilang' => $this->input->post('jumlah_hilang'),
			'tanggal_pemeliharaan' => $this->input->post('tanggal_pemeliharaan'),
			'keterangan' => $this->input->post('keterangan'),
			'status_alat' => 'Dipasang'
		];
	
		// Get the existing data before updating
		$existing_data = $this->data_pemeliharaan_model->getById($id);
	
		// Calculate the differences in jumlah_rusak and jumlah_hilang
		$selisih_rusak = $data['jumlah_rusak'] - $existing_data->jumlah_rusak;
		$selisih_hilang = $data['jumlah_hilang'] - $existing_data->jumlah_hilang;
	
		// Check if jumlah_rusak + jumlah_hilang is greater than dipasang
		$dipasangValue = $this->data_inventaris_model->getJumlahAlatByDipasang($data['nama_barang'])->dipasang;
	
		if (($data['jumlah_rusak'] + $data['jumlah_hilang']) > $dipasangValue) {
			$this->session->set_flashdata('alert-type', 'danger');
			$this->session->set_flashdata('alert', 'Maaf, Alat yang Dipasang Kurang');
			redirect('datapemeliharaan/edit/' . $id); // Redirect back to the edit page
			return; // Stop further execution
		}
	
		$this->data_pemeliharaan_model->update($id, $data);
	
		// Update dipasang based on selisih_rusak and selisih_hilang
		if ($selisih_rusak !== 0 || $selisih_hilang !== 0) {
			$this->load->model('Data_inventaris_model');
			$id_barang = $data['nama_barang'];
	
			if ($selisih_rusak !== 0) {
				if ($selisih_rusak < 0) {
					$this->Data_inventaris_model->increaseDipasang($id_barang, abs($selisih_rusak));
				} else {
					$this->Data_inventaris_model->reduceDipasang($id_barang, abs($selisih_rusak));
				}
			}
	
			if ($selisih_hilang !== 0) {
				if ($selisih_hilang < 0) {
					$this->Data_inventaris_model->increaseDipasang($id_barang, abs($selisih_hilang));
				} else {
					$this->Data_inventaris_model->reduceDipasang($id_barang, abs($selisih_hilang));
				}
			}
		}
	
		$this->activity_model->add("Data pemeliharaan #$id Updated by User: #" . logged('id'));
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Berhasil Update Data Pemeliharaan Dipasang');
	
		redirect('datapemeliharaan');
	}
	
	
	
	
	public function print()
	{
		ifPermissions('pemeliharaan_print');
		$conditions = ['status_alat' => 'Dipasang']; // Define the filter conditions
		$data['pemeliharaan'] = $this->data_pemeliharaan_model->getPemeliharaanJoin($conditions);
		$this->load->view('data_pemeliharaan/print_pemeliharaan', $data);
	}
	
	public function view($id)
	{

		ifPermissions('pemeliharaan_view');

		
		$this->page_data['data_pemeliharaan'] = $this->data_pemeliharaan_model->getPemeliharaanviewJoin($id);
		$this->load->view('data_pemeliharaan/view', $this->page_data);

	}
	public function getJumlahAlatByNamaBarang()
	{
		$idbarang = $this->input->post('id');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_pemeliharaan_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_pemeliharaan_model->getJumlahAlatByNamaBarang($idbarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}

	public function getJumlahAlatByDipasang()
	{
		$idbarang = $this->input->post('id');

		// Load the model (if not already autoloaded)
		$this->load->model('Data_pemeliharaan_model');
	
		// Call the model method to get data by ID
		$data = $this->Data_pemeliharaan_model->getJumlahAlatByDipasang($idbarang);
	
		// Return the data as JSON
		echo json_encode($data);
	}
	
}