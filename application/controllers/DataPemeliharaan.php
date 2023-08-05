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
		
		$this->page_data['data_pemeliharaan'] = $this->data_pemeliharaan_model->getPemeliharaanJoin();
        
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

		$id = $this->data_pemeliharaan_model->create([
			'nama_barang' => post('nama_barang'),
			'jumlah_baik' => post('jumlah_baik'),
			'jumlah_rusak' => post('jumlah_rusak'),
			'jumlah_hilang' => post('jumlah_hilang'),
			'tanggal_pemeliharaan' => post('tanggal_pemeliharaan'),
			'keterangan' => post('keterangan')
		]);


		$this->activity_model->add('Data Pemeliharaan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-tyPe', 'success');
		$this->session->set_flashdata('alert', 'Data Pemeliharaan Created Successfully');

		redirect('datapemeliharaan');
	}
	
	public function delete($id)
	{

		ifPermissions('pemeliharaan_delete');

		$id = $this->data_pemeliharaan_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Laporkan Kerusakan has been Deleted Successfully');
		
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
			'keterangan' => $this->input->post('keterangan')
		];

		$permission = $this->data_pemeliharaan_model->update($id, $data);

		$this->activity_model->add("Data pemeliharaan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'pemeliharaan has been Updated Successfully');

		redirect('datapemeliharaan');
	}
	public function print()
	{
		ifPermissions('pemeliharaan_print');
		$data['pemeliharaan'] = $this->data_pemeliharaan_model->getPemeliharaanJoin();
		$this->load->view('data_pemeliharaan/print_pemeliharaan', $data);
	}
	public function view($id)
	{

		ifPermissions('pemeliharaan_view');

		
		$this->page_data['data_pemeliharaan'] = $this->data_pemeliharaan_model->getById($id);
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
	
}