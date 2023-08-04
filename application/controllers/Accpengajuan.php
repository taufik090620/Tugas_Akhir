<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class Accpengajuan extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pengajuan';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datariwayatpengajuan';
    }
                                     
    public function index()
    {
		ifPermissions('acc_pengajuan_list');
		$this->page_data['accpengajuan'] = $this->accpengajuan_model->get();
		$this->load->view('accpengajuan/list', $this->page_data);
    }
    public function view($id)
    {
  
      ifPermissions('pengajuan_view');
  
      $this->page_data['accpengajuan'] = $this->accpengajuan_model->getById($id);
      $this->load->view('accpengajuan/view', $this->page_data);
  
    }
};