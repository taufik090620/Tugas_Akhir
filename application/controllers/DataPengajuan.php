<?php defined('BASEPATH') OR exit('No direct script access allowed');
                                     
class DataPengajuan extends MY_Controller {
                                     
    public function __construct()
    {
        parent::__construct();
        $this->page_data['page']->title = 'Data Pengajuan';
        // not mandatory, takes default value if not passed
        $this->page_data['page']->menu = 'datapengajuan';
		$this->load->model(data_pengajuan_model);
		$this->load->model(accpengajuan_model);
		
    }
                                     
    public function index()
    {
		ifPermissions('pengajuan_list');
		$this->page_data['data_pengajuan'] = $this->data_pengajuan_model->getPengajuanJoin();
        
		$this->load->view('pengajuan/list', $this->page_data);
    }
    
    public function add()
	{
		ifPermissions('pengajuan_add');
		$this->load->view('pengajuan/add', $this->page_data);
	}
    
    public function save()
	{
		ifPermissions('pengajuan_add');
		postAllowed();

		$id = $this->data_pengajuan_model->create([
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
		
		redirect('datapengajuan');

	}

    public function delete($id)
	{

		
		ifPermissions('pengajuan_delete');

		$id = $this->data_pengajuan_model->delete($id);

		$this->activity_model->add(" #$id Deleted by User:".logged('name'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Inventaris has been Deleted Successfully');
		
		redirect('datapengajuan');

	}
	

	public function edit($id)
	{

		ifPermissions('pengajuan_edit');

		$this->page_data['datapengajuan'] = $this->data_pengajuan_model->getById($id);
		$this->load->view('pengajuan/edit', $this->page_data);

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

		$permission = $this->data_pengajuan_model->update($id, $data);

		$this->activity_model->add("Data pengajuan #$id Updated by User: #" . logged('id'));

		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Pengajuan has been Updated Successfully');

		redirect('datapengajuan');
	}
    public function view($id)
	{

		ifPermissions('pengajuan_view');

		$this->page_data['data_pengajuan'] = $this->data_pengajuan_model->getById($id);
		$this->load->view('pengajuan/view', $this->page_data);

	}
	public function konfirmasi($id) {
		ifPermissions('konfirmasi_pengajuan_add');
			
		$this->page_data['user_login'] = logged('name');
		$this->page_data['Pengajuan'] = $this->data_pengajuan_model->getPengajuanJoinByID($id);
		$this->load->view('konfirmasi_pengajuan/add', $this->page_data);
	} 
	public function savekonfirmasi($id) {
		ifPermissions('konfirmasi_pengajuan_add');
		postAllowed();
	
		$newData = [
			'nama_pemohon'  => post('nama_pemohon'),
			'spesifikasi_acc' => post('spesifikasi_acc'),
			'banyak_alat_acc' => post('banyak_alat_acc'),
			'harga_satuan_acc' => post('harga_satuan_acc'),
			'tahun_pengajuan_acc' => post('tahun_pengajuan_acc'),
			'satuan_acc' => post('satuan_acc'),
			'link_beli_acc' => post('link_beli_acc'),
			'jurusan' => post('jurusan'),
			'nama_alat_acc' => post('nama_alat_acc'),
			'status_acc' => 'Alat Sudah Di Approve'
		];
	
		$this->accpengajuan_model->create($newData);
		$this->data_pengajuan_model->update($id, $newData);
		$this->activity_model->add('Data Pengajuan Sudah Di Approve ' . $id . ' Created by User:' . logged('name'), logged('id'));
		$this->data_pengajuan_model->delete($id);
	
		$this->session->set_flashdata('alert-type', 'success');
		$this->session->set_flashdata('alert', 'Data Pengajuan Sudah Di Approve');
		
		redirect('datapengajuan', 'refresh');
	}
};