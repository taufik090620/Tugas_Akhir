<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pemeliharaan_model extends MY_Model {
 
    public $table = 'pemeliharaan';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPemeliharaanJoin()
	{
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_baik, pemeliharaan.jumlah_rusak, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.kode_barang, data_inventaris.tahun_peredaran');    
        $this->db->from('pemeliharaan');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPemeliharaanJoinByID($id)
    {
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_baik, pemeliharaan.jumlah_rusak, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.stock');      
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.id', 'left');
        $this->db->where("data_inventaris.nama_barang NOT IN (SELECT nama_barang FROM pemeliharaan)", null, false);
        $this->db->where("data_inventaris.id", $id );
        $query = $this->db->get();
        return $query->result();
    }
    

    public function getListPemeliharaanKosong()
    {
        $this->db->select('data_inventaris.id, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.id', 'left');
        $this->db->where("data_inventaris.id NOT IN (SELECT nama_barang FROM pemeliharaan)", null, false);
        $query = $this->db->get();
        return $query->result();
    }
    
    
    public function getListPemeliharaanEdit()
    {
        $this->db->select('data_inventaris.id, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.id', 'left');
        $query = $this->db->get();
        return $query->result();
    }
    
  
    public function get_print() {
        $query = $this->db->get('data_pemeliharaan');
        return $query->result();
    }
    
    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }

    

}