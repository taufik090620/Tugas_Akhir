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
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_rusak, pemeliharaan.status_alat, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.kode_barang, data_inventaris.tahun_peredaran, data_inventaris.dipasang');    
        $this->db->from('pemeliharaan');
        $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.id');
        $query = $this->db->get();
		return $query->result();
	}

    public function getPemeliharaanJoinByID($id)
    {
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_rusak, pemeliharaan.status_alat, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.stock, data_inventaris.dipasang');      
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
        $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_rusak, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.stock, data_inventaris.dipasang');      
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.id', 'left');
        $this->db->where("data_inventaris.id");
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

    public function getJumlahAlatByNamaBarang($idbarang)
{
    // Assuming you have a database table that contains the jumlah_alat information for each nama_barang
    $this->db->select('id, total_alat');
    $this->db->from('data_inventaris');
    $this->db->where('id', $idbarang); // Use 'id' as the column name to match the primary key in the "data_inventaris" table
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
        return $query->row(); // Return a single row as an object
    } else {
        return null; // Return null if no data is found for the given ID
    }
}

public function getJumlahAlatByDipasang($idbarang)
{
    // Assuming you have a database table that contains the jumlah_alat information for each nama_barang
    $this->db->select('id, dipasang');
    $this->db->from('data_inventaris');
    $this->db->where('id', $idbarang); // Use 'id' as the column name to match the primary key in the "data_inventaris" table
    $query = $this->db->get();

    if ($query->num_rows() > 0) {
        return $query->row(); // Return a single row as an object
    } else {
        return null; // Return null if no data is found for the given ID
    }
}

public function getPemeliharaanviewJoin($id)
{
    $this->db->select('pemeliharaan.id, pemeliharaan.nama_barang, pemeliharaan.tanggal_pemeliharaan, pemeliharaan.keterangan, pemeliharaan.jumlah_rusak, pemeliharaan.status_alat, pemeliharaan.jumlah_hilang, data_inventaris.nama_barang, data_inventaris.total_alat, data_inventaris.kode_barang, data_inventaris.tahun_peredaran, data_inventaris.dipasang');    
    $this->db->from('pemeliharaan');
    $this->db->join('data_inventaris', 'pemeliharaan.nama_barang = data_inventaris.id');
    $this->db->where('pemeliharaan.id', $id); // Filter data berdasarkan ID
    $query = $this->db->get();
    return $query->row(); // Menggunakan row() untuk mengambil satu baris data
}

}