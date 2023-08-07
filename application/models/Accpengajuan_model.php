<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Accpengajuan_model extends MY_Model {
 
    public $table = 'acc_pengajuan';
 
    public function __construct()
    {
        parent::__construct();
    }
    public function get_tahun_pengajuan_acc_data()
    {
        // Query untuk mengambil data tahun_pengajuan_acc dari tabel acc_pengajuan
        $this->db->select("DATE_FORMAT(tahun_pengajuan_acc, '%Y') AS tahun_pengajuan, COUNT(*) AS total", FALSE);
        $this->db->group_by("DATE_FORMAT(tahun_pengajuan_acc, '%Y')");
        $query = $this->db->get($this->table);

        // Mengembalikan hasil query sebagai array
        return $query->result_array();
    }
 
}