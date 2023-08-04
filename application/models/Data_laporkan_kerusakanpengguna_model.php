<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_laporkan_kerusakanpengguna_model extends MY_Model {
 
    public $table = 'lapor_kerusakan';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getLaporkanKerusakanPenggunaJoin($user_id)
	{
        $this->db->select('lapor_kerusakan.id, lapor_kerusakan.status, lapor_kerusakan.nama_barang, lapor_kerusakan.tingkat_kerusakan, lapor_kerusakan.keterangan, lapor_kerusakan.tanggal_laporan, data_inventaris.nama_barang, data_inventaris.nama_barang, users.name, users.email');    
        $this->db->from('lapor_kerusakan');
        $this->db->join('data_inventaris', 'lapor_kerusakan.nama_barang = data_inventaris.id');
        $this->db->join('users', 'lapor_kerusakan.id_pengguna = users.id');
        $this->db->where('lapor_kerusakan.id_pengguna', $user_id); // Filter berdasarkan ID user yang login
        $this->db->order_by('lapor_kerusakan.id', 'DESC');
        $query = $this->db->get();
		return $query->result();
	}

    public function getLaporkanKerusakanPenggunaJoinByID($id)
	{
        $this->db->select('lapor_kerusakan.id, lapor_kerusakan.nama_barang, lapor_kerusakan.tingkat_kerusakan, lapor_kerusakan.keterangan, lapor_kerusakan.tanggal_laporan, data_inventaris.nama_barang, data_inventaris.nama_barang, users.name, users.email');      
        $this->db->from('lapor_kerusakan');
        $this->db->join('data_inventaris', 'lapor_kerusakan.nama_barang = data_inventaris.id');
        $this->db->join('users', 'lapor_kerusakan.id_pengguna = users.id');
        $this->db->where("lapor_kerusakan.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListLaporkanKerusakanPenggunaKosong()
    {
        $this->db->select('lapor_kerusakan.id, lapor_kerusakan.nama_barang, lapor_kerusakan.tingkat_kerusakan, lapor_kerusakan.keterangan, data_inventaris.nama_barang, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('lapor_kerusakan', 'lapor_kerusakan.nama_barang = data_inventaris.nama_barang', 'left');
        $this->db->where("data_inventaris.nama_barang NOT IN (SELECT nama_barang FROM lapor_kerusakan)", null, false);
        $query = $this->db->get();
        return $query->result();
    }
    
    
    public function getListLaporkanKerusakanPenggunaEdit()
    {
        $this->db->select('lapor_kerusakan.id, lapor_kerusakan.nama_barang, lapor_kerusakan.tingkat_kerusakan, lapor_kerusakan.keterangan');
        $this->db->from('lapor_kerusakan');
        $this->db->join('data_inventaris', 'lapor_kerusakan.nama_barang = data_inventaris.nama_barang', 'left');
        $this->db->where('lapor_kerusakan.nama_barang IS NOT NULL');
        $query = $this->db->get();
        return $query->result();
    }

    public function getListLaporEdit()
    {
        $this->db->select('data_inventaris.id, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('lapor_kerusakan', 'lapor_kerusakan.nama_barang = data_inventaris.id', 'left');
        $query = $this->db->get();
        return $query->result();
    }
    
  
    public function get_print() {
        $query = $this->db->get('data_laporkan_kerusakan');
        return $query->result();
    }
    
    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

}