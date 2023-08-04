<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataInventarispeminjam extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Inventaris';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datainventarispeminjam';
		$this->load->model(data_inventarispeminjam_model);
    }
                                     
    public function index()
    {
		ifPermissions('inventaris_peminjam_list');
		$this->page_data['inventarispeminjam'] = $this->data_inventarispeminjam_model->getInventarispeminjamJoin();
		$this->load->view('data_inventarispeminjam/list', $this->page_data);
    }

	
};