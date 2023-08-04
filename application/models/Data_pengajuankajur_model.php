<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pengajuankajur_model extends MY_Model {
 
    public $table = 'data_pengajuan';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPengajuankajurJoin($user_id)
	{
        $this->db->select('data_pengajuan.id, data_pengajuan.id_pengguna, data_pengajuan.nama_alat, data_pengajuan.tahun_pengajuan, data_pengajuan.spesifikasi, data_pengajuan.status, data_pengajuan.banyak_alat, data_pengajuan.satuan, data_pengajuan.harga_satuan, data_pengajuan.link_beli, data_pengajuan.id_jurusan, users.name, jurusan.nama_jurusan, jurusan.singkatan_jurusan');    
        $this->db->from('data_pengajuan');
        $this->db->join('users', 'data_pengajuan.id_pengguna = users.id');
        $this->db->join('jurusan', 'data_pengajuan.id_jurusan = jurusan.id', 'left');
        $this->db->where('data_pengajuan.id_pengguna', $user_id); // Filter berdasarkan ID user yang login
        $this->db->order_by('data_pengajuan.id', 'DESC');
        $query = $this->db->get();
		return $query->result();
	}
    

    public function getPengajuankajurJoinByID($id)
	{
        $this->db->select('data_pengajuan.id, data_pengajuan.spesifikasi, data_pengajuan.nama_alat, data_pengajuan.tahun_pengajuan, data_pengajuan.banyak_alat, data_pengajuan.satuan, data_pengajuan.harga_satuan, data_pengajuan.link_beli, users.name, jurusan.nama_jurusan, jurusan.singkatan_jurusan');   
        $this->db->from('data_pengajuan');
        $this->db->join('users', 'data_pengajuan.id_pengguna = users.id');
        $this->db->join('jurusan', 'data_pengajuan.id_jurusan = jurusan.id');
        $this->db->where("data_pengajuan.id", $id );
        $query = $this->db->get();
		return $query->result();
	}


    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

}