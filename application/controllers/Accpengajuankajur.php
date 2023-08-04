<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class Accpengajuankajur extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pengajuan';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datariwayatpengajuankajur';
    }
                                     
    public function index()
    {
		ifPermissions('acc_pengajuan_kajur_list');
		$this->page_data['accpengajuankajur'] = $this->accpengajuankajur_model->get();
		$this->load->view('accpengajuankajur/list', $this->page_data);
    }
    public function view($id)
    {
  
      ifPermissions('pengajuan_view');
  
      $this->page_data['accpengajuankajur'] = $this->accpengajuankajur_model->getById($id);
      $this->load->view('accpengajuankajur/view', $this->page_data);
  
    }
};