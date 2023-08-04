<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataLaporkanKerusakanPengguna extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Laporkan Kerusakan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datalaporkankerusakanpengguna';
		$this->load->model(data_laporkan_kerusakanpengguna_model);
	}

	public function index()
    {
		ifPermissions('laporkan_kerusakan_pengguna_list');
		$user_id = logged('id'); // Mengambil ID user yang login
		$this->page_data['data_laporkan_kerusakanpengguna'] = $this->data_laporkan_kerusakanpengguna_model->getLaporkanKerusakanPenggunaJoin($user_id);
        
		$this->load->view('data_laporkan_kerusakanpengguna/list', $this->page_data);
    }

	
	public function add()
	{
		ifPermissions('laporkan_kerusakan_add');
		$this->load->view('data_laporkan_kerusakanpengguna/add', $this->page_data);
	}

	public function save()
	{
		ifPermissions('laporkan_kerusakan_add');
		postAllowed();

		$id = $this->data_laporkan_kerusakanpengguna_model->create([
			'id_pengguna' => logged('id'),
			'nama_barang' => post('nama_barang'),
			'tanggal_laporan' => post('tanggal_laporan'),
			'tingkat_kerusakan' => post('tingkat_kerusakan'),
			'keterangan' => post('keterangan'),
			'status' => 'Menunggu Di Cek Oleh Teknisi'
		]);


		$this->activity_model->add('Data Laporan Kerusakan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-tyPe', 'success');
		$this->session->set_flashdata('alert', 'Data Laporan Kerusakan Created Successfully');

		redirect('datalaporkankerusakanpengguna');
	}

	public function delete($id)
	{

		ifPermissions('laporkan_kerusakan_delete');

		$id = $this->data_laporkan_kerusakanpengguna_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Laporkan Kerusakan has been Deleted Successfully');
		
		redirect('datalaporkankerusakanpengguna');

	}
	
	public function edit($id)
	{

		ifPermissions('laporkan_kerusakan_edit');

		$this->page_data['data_laporkan_kerusakanpengguna'] = $this->data_laporkan_kerusakanpengguna_model->getById($id);
		$this->load->view('data_laporkan_kerusakanpengguna/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('laporkan_kerusakan_view');

		$this->page_data['data_laporkan_kerusakanpengguna'] = $this->data_laporkan_kerusakanpengguna_model->getById($id);
		$this->load->view('data_laporkan_kerusakanpengguna/view', $this->page_data);

	}
	
	public function update($id)
	{

		postAllowed();

		ifPermissions('laporkan_kerusakan_edit');

		$data = [
			'id_pengguna' => logged('id'),
			'nama_barang' =>  $this->input->post('nama_barang'),
			'tanggal_laporan' => $this->input->post('tanggal_laporan'),
			'tingkat_kerusakan' =>  $this->input->post('tingkat_kerusakan'),
			'keterangan' =>  $this->input->post('keterangan'),
			'status' => 'Menunggu Di Cek Oleh Teknisi'
		];

		$permission = $this->data_laporkan_kerusakanpengguna_model->update($id, $data);

		$this->activity_model->add("Data Laporkan Kerusakan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'laporan kerusakan has been Updated Successfully');

		redirect('datalaporkankerusakanpengguna');
	}

	public function konfirmasi($id) {
		ifPermissions('konfirmasi_add');
			
		$this->page_data['user_login'] = logged('name');
		$this->page_data['Laporan'] = $this->data_laporkan_kerusakanpengguna_model->getLaporkanKerusakanPenggunaJoinByID($id);
		$this->load->view('konfirmasi/add', $this->page_data);
	} 
	
	public function savekonfirmasi($id) {
		ifPermissions('konfirmasi_add');
		postAllowed();
	
		$newData = [
			'nama_barang' => post('nama_barang'),
			'tingkat_kerusakan' => post('tingkat_kerusakan'),
			'tanggal_laporan' => post('tanggal_laporan'),
			'keterangan_perbaikan' => post('keterangan_perbaikan'),
			'nama_pelapor' => post('nama_pelapor'),
			'keterangan' => post('keterangan'),
			'statuss' => 'Sudah Dicek Oleh Teknisi'
		];
	
		$this->perbaikan_model->create($newData);
		$this->data_laporkan_kerusakanpengguna_model->update($id, $newData);
		$this->activity_model->add('Data Laporan Sudah Dicek ' . $id . ' Created by User:' . logged('name'), logged('id'));
		$this->data_laporkan_kerusakanpengguna_model->delete($id);
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Laporan Sudah Dicek');
		
		redirect('datalaporkankerusakanpengguna', 'refresh');
	}
	
}
