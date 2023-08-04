<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataRuanganPindah extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Ruangan Pindah';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'dataruanganpindah';
	}

	public function index()
	{
		ifPermissions('ruangan_pindah_list');
		$this->page_data['ruanganpindah'] = $this->data_ruangan_model->get();
		$this->load->view('data_ruangan_pindah/list', $this->page_data);
	}

	public function add()
	{
		ifPermissions('ruangan_add');
		$this->load->view('data_ruangan/add', $this->page_data);
	}

	public function save()
	{
		ifPermissions('ruangan_add');
		postAllowed();

		$id = $this->data_ruangan_model->create([
			'nama_ruangan' => post('nama_ruangan'),
			'kapasitas_ruangan' => post('kapasitas_ruangan'),
		]);


		$this->activity_model->add('Data Ruangan Ditambahkan ' . $id . ' Created by User:' . logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Ruangan Created Successfully');

		redirect('dataruangan');
	}

	public function edit($id)
	{

		ifPermissions('ruangan_edit');

		$this->page_data['data_ruangan'] = $this->data_ruangan_model->getById($id);
		$this->load->view('data_ruangan/edit', $this->page_data);

	}

	public function view($id)
	{

		ifPermissions('ruangan_view');

		$this->page_data['data_ruangan'] = $this->data_ruangan_model->getById($id);
		$this->load->view('data_ruangan/view', $this->page_data);
	}

	public function update($id)
	{

		postAllowed();

		ifPermissions('ruangan_edit');

		$data = [
			'nama_ruangan' => $this->input->post('nama_ruangan'),
			'kapasitas_ruangan' => $this->input->post('kapasitas_ruangan')
		];

		$permission = $this->data_ruangan_model->update($id, $data);

		$this->activity_model->add("Data Ruangan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Ruangan has been Updated Successfully');

		redirect('dataruangan');
	}

	public function delete($id)
	{
		ifPermissions('ruangan_delete');

		$id = $this->data_ruangan_model->delete($id);

		$this->activity_model->add("Data Inventaris #$id Deleted by User:" . logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		redirect('dataruangan');
	}

	public function pindah_inventaris()
	{

		ifPermissions('ruangan_pindah_edit');

		$this->page_data['ruanganpindah'] = $this->data_ruangan_model->get();
		$this->load->view('data_ruangan_pindah/list', $this->page_data);
	}

	public function save_pindah_inventaris()
	{

		postAllowed();

		ifPermissions('ruangan_edit');

		$data = [
			'id_ruangan' => $this->input->post('id_ruangan'),
		];

		$permission = $this->data_inventaris_model->update($this->input->post('barang'), $data);

		$this->activity_model->add("Data Inventaris Dipindahkan Ke Ruangan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Ruangan has been Updated Successfully');

		redirect('dataruanganpindah');
	}
}
