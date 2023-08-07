<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_inventarispeminjam_model extends MY_Model {
 
    public $table = 'data_inventaris';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getInventarispeminjamJoin()
    {
        $this->db->select('data_inventaris.id, data_inventaris.kode_barang, data_inventaris.total_alat, data_inventaris.nama_barang, data_inventaris.merek, data_inventaris.id_jurusan, data_inventaris.asal_usul, data_inventaris.tahun_peredaran, data_inventaris.harga_barang, data_inventaris.keterangan, data_inventaris.stock, data_inventaris.dipasang, data_inventaris.masa_hidup_alat, data_inventaris.kategori, data_inventaris.id_ruangan, jurusan.nama_jurusan, jurusan.singkatan_jurusan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan');
        $this->db->from('data_inventaris');
        $this->db->join('ruangan', 'data_inventaris.id_ruangan = ruangan.id', 'left');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id', 'left');
        $query = $this->db->get();
        return $query->result();
    }
    
}