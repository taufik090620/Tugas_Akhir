<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPengajuankajur extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pengajuan';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datapengajuankajur';
		$this->load->model(data_pengajuankajur_model);

    }
                                     
    public function index()
    {
		ifPermissions('pengajuan_kajur_list');
		$user_id = logged('id'); // Mengambil ID user yang login
		$this->page_data['data_pengajuankajur'] = $this->data_pengajuankajur_model->getPengajuankajurJoin($user_id);
		$this->load->view('pengajuankajur/list', $this->page_data);
    }
    
    public function add()
	{
		ifPermissions('pengajuan_add');
		$this->load->view('pengajuankajur/add', $this->page_data);
	}
    
    public function save()
	{
		ifPermissions('pengajuan_add');
		postAllowed();

		$id = $this->data_pengajuankajur_model->create([
            'id_pengguna' => logged('id'),
			'id_jurusan' => post('id_jurusan'),
            'nama_alat' => post('nama_alat'),
			'spesifikasi' => post('spesifikasi'),
			'tahun_pengajuan' => post('tahun_pengajuan'),
			'banyak_alat' => post('banyak_alat'),
			'satuan' => post('satuan'),
			'harga_satuan' => post('harga_satuan'),
            'link_beli' => post('link_beli'),
			'status' => 'Menunggu Konfirmasi'
		]);


		$this->activity_model->add('Data Pengajuan Ditambahkan '.$id.' Created by User:'.logged('name'), logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pengajuan Created Successfully');
		
		redirect('datapengajuankajur');

	}

    public function delete($id)
	{

		
		ifPermissions('pengajuan_delete');

		$id = $this->data_pengajuankajur_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		
		redirect('datapengajuankajur');

	}
	

	public function edit($id)
	{

		ifPermissions('pengajuan_edit');

		$this->page_data['datapengajuankajur'] = $this->data_pengajuankajur_model->getById($id);
		$this->load->view('pengajuankajur/edit', $this->page_data);

	}


	public function update($id)
	{

		postAllowed();

		ifPermissions('pengajuan_edit');

		$data = [
            'id_pengguna' => logged('id'),
			'id_jurusan' => $this->input->post ('id_jurusan'),
            'nama_alat' => $this->input->post('nama_alat'),
			'spesifikasi' => $this->input->post('spesifikasi'),
			'tahun_pengajuan' => $this->input->post('tahun_pengajuan'),
			'banyak_alat' => $this->input->post('banyak_alat'),
			'satuan' => $this->input->post('satuan'),
			'harga_satuan' => $this->input->post('harga_satuan'),
            'link_beli' => $this->input->post('link_beli'),
			'status' => 'Menunggu Konfirmasi'
		];

		$permission = $this->data_pengajuankajur_model->update($id, $data);

		$this->activity_model->add("Data pengajuan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pengajuan has been Updated Successfully');

		redirect('datapengajuankajur');
	}
    public function view($id)
	{

		ifPermissions('pengajuan_view');

		$this->page_data['data_pengajuankajur'] = $this->data_pengajuankajur_model->getById($id);
		$this->load->view('pengajuankajur/view', $this->page_data);

	}
};