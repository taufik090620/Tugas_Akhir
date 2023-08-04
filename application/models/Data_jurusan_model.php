<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_jurusan_model extends MY_Model {
 
    public $table = 'jurusan';
 
    public function __construct()
    {
        parent::__construct();
    }
    function jurusan_dashboard(){
        $this->db->select('*');
        $this->db->from('jurusan');
        return $this->db->get()->num_rows();

    }
}