<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataJurusan extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Jurusan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datajurusan';
	}

	public function index()
	{
		ifPermissions('jurusan_list');
		$this->page_data['jurusan'] = $this->data_jurusan_model->get();
		$this->load->view('data_jurusan/list', $this->page_data);
	}

	public function add()
	{
		ifPermissions('jurusan_add');
		$this->load->view('data_jurusan/add', $this->page_data);
	}

	public function save()
	{
		ifPermissions('jurusan_add');
		postAllowed();

		$id = $this->data_jurusan_model->create([
			'nama_jurusan' => post('nama_jurusan'),
			'singkatan_jurusan' => post('singkatan_jurusan')
		]);


		$this->activity_model->add('Data Jurusan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Jurusan Created Successfully');

		redirect('datajurusan');
	}

	public function edit($id)
	{

		ifPermissions('jurusan_edit');

		$this->page_data['data_jurusan'] = $this->data_jurusan_model->getById($id);
		$this->load->view('data_jurusan/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('jurusan_view');

		$this->page_data['data_jurusan'] = $this->data_jurusan_model->getById($id);
		$this->load->view('data_jurusan/view', $this->page_data);
	}

	public function update($id)
	{

		postAllowed();

		ifPermissions('jurusan_edit');

		$data = [
			'nama_jurusan' => $this->input->post('nama_jurusan'),
			'singkatan_jurusan' => $this->input->post('singkatan_jurusan')
		];

		$permission = $this->data_jurusan_model->update($id, $data);

		$this->activity_model->add("Data Jurusan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Jurusan has been Updated Successfully');

		redirect('datajurusan');
	}

	public function delete($id)
	{
		ifPermissions('jurusan_delete');

		$id = $this->data_jurusan_model->delete($id);

		$this->activity_model->add("Data Jurusan #$id Deleted by User:" . logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Jurusan has been Deleted Successfully');
		redirect('datajurusan');
	}

}
