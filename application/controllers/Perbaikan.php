<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class Perbaikan extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Perbaikan';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'dataperbaikan';
    }
                                     
    public function index()
    {
		ifPermissions('history_konfirmasi_list');
		$this->page_data['perbaikan'] = $this->perbaikan_model->get();
		$this->load->view('perbaikan/list', $this->page_data);
    }
    
};