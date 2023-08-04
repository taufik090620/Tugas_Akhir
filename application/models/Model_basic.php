<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_basic extends CI_Model {

	public function __construct() {
		parent::__construct();
	}
    function get_all_row($table){
		$this->db->select($table.'.*');
		$this->db->from($table);
		return $this->db->get()->row();
	}
    function select_where($table,$column,$where){
		$this->load->database('default',TRUE);
		$this->db->select('*');
		$this->db->from($table);
		$this->db->where($column,$where);
		$data = $this->db->get();
		return $data;
	}
    function select_where_array($table,$where){
		$this->load->database('default',TRUE);
		$this->db->select('*');
		$this->db->from($table);
		$this->db->where($where);
		$data = $this->db->get();
		return $data;
	}
}