<?php defined('BASEPATH') or exit('No direct script access allowed');

class DataPemeliharaanrekap extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->page_data['page']->title = 'Data Pemeliharaan';
		// not mandatory, takes default value if not passed
		$this->page_data['page']->menu = 'datapemeliharaanrekap';
        $this->load->model(data_pemeliharaanrekap_model);
		$this->load->model(data_inventaris_model);
	}

    public function index()
    {
        ifPermissions('pemeliharaan_list');

        $this->page_data['data_pemeliharaanrekap'] = $this->data_pemeliharaanrekap_model->getPemeliharaanrekapJoin();
    
        $this->load->view('data_pemeliharaanrekap/list', $this->page_data);
    }
    public function print()
	{
		ifPermissions('pemeliharaan_print');
		$data['pemeliharaanrekap'] = $this->data_pemeliharaanrekap_model->getPemeliharaanrekapJoin();
		$this->load->view('data_pemeliharaanrekap/print_pemeliharaan', $data);
	}

    public function view($id)
	{

		ifPermissions('pemeliharaan_view');

		
		$this->page_data['data_pemeliharaanrekap'] = $this->data_pemeliharaanrekap_model->getPemeliharaanviewJoin($id);
		$this->load->view('data_pemeliharaanrekap/view', $this->page_data);

	}
}