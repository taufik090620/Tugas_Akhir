<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Dashboard';
		$this->page_data['page']->menu = 'dashboard';
		// Load model data_inventaris_model
		$this->load->model('data_inventaris_model');
		$this->load->model('data_pinjaman_model');
		$this->load->model('data_ruangan_model');
		$this->load->model('data_jurusan_model');
	}

	public function index()
	{
		ifPermissions('dashboard_list');
		$data['inventaris'] = $this->data_inventaris_model->inventaris_dashboard();
		$data['pinjaman'] = $this->data_pinjaman_model->pinjaman_dashboard();
		$data['ruangan'] = $this->data_ruangan_model->ruangan_dashboard();
		$data['jurusan'] = $this->data_jurusan_model->jurusan_dashboard();
		$this->load->view('dashboard', array_merge($this->page_data, $data));
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */
