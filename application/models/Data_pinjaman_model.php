<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_pinjaman_model extends MY_Model {
 
    public $table = 'data_pinjam';
 
    public function __construct()
    {
        parent::__construct();
    }

    public function getPinjamanJoin()
	{
        $this->db->select('data_pinjam.id, data_pinjam.status, data_pinjam.nama_barang, data_pinjam.tanggal_terpakai, data_pinjam.kelas, data_pinjam.id_jurusan, data_pinjam.stock, data_pinjam.alasan_pinjam, data_inventaris.nama_barang, data_inventaris.kode_barang, users.name, jurusan.nama_jurusan, jurusan.singkatan_jurusan');    
        $this->db->from('data_pinjam');
        $this->db->join('data_inventaris', 'data_pinjam.nama_barang = data_inventaris.nama_barang');
        $this->db->join('users', 'data_pinjam.id_pengguna = users.id');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id', 'left');
        $query = $this->db->get();
		return $query->result();
	}
    

    public function getPinjamanJoinByID($id)
	{
        $this->db->select('data_pinjam.id, data_pinjam.nama_barang, data_pinjam.stock, data_pinjam.alasan_pinjam, data_pinjam.tanggal_terpakai, data_inventaris.nama_barang, data_inventaris.kode_barang, users.name, data_pinjam.alasan_pinjam, jurusan.nama_jurusan, jurusan.singkatan_jurusan, data_inventaris.tahun_peredaran');    
        $this->db->from('data_pinjam');
        $this->db->join('data_inventaris', 'data_pinjam.nama_barang = data_inventaris.id');
        $this->db->join('users', 'data_pinjam.id_pengguna = users.id');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id');
        $this->db->where("data_pinjam.id", $id );
        $query = $this->db->get();
		return $query->result();
	}
    public function getPinjamanJoinByIDD($id)
	{
        $this->db->select('data_pinjam.id, data_pinjam.nama_barang, data_pinjam.tanggal_terpakai, data_pinjam.kelas, data_pinjam.stock, jurusan.singkatan_jurusan, users.name, users.email, data_inventaris.kode_barang    ');    
        $this->db->from('data_pinjam');
        $this->db->join('jurusan', 'data_pinjam.id_jurusan = jurusan.id');
        $this->db->join('users', 'data_pinjam.id_pengguna = users.id');
        $this->db->join('data_inventaris', 'data_pinjam.nama_barang = data_inventaris.nama_barang');
        $this->db->where("data_pinjam.id", $id );
        $query = $this->db->get();
		return $query->result();
	}

    public function getListPinjamanKosong()
	{
        $this->db->select('data_pinjam.id, data_pinjam.nama_barang, data_pinjam.stock, data_pinjam.alasan_pinjam, data_pinjam.tanggal_terpakai, data_inventaris.nama_barang, data_inventaris.nama_barang');    
        $this->db->from('data_inventaris');
        $this->db->join('data_pinjam', 'data_pinjam.nama_barang = data_inventaris.nama_barang', 'left');
        $query = $this->db->get();
		return $query->result();
	}
    
    public function getListPinjamanEdit()
	{
        $this->db->select('data_pinjam.id, data_pinjam.nama_barang, data_pinjam.stock, data_pinjam.alasan_pinjam, data_pinjam.tanggal_terpakai, data_inventaris.nama_barang, data_inventaris.nama_barang');    
        $this->db->from('data_inventaris');
        $this->db->join('data_pinjam', 'data_pinjam.nama_barang = data_inventaris.nama_barang', 'left');
        $query = $this->db->get();
		return $query->result();
	}
    function pinjaman_dashboard(){
        $this->db->select('*');
        $this->db->from('data_pinjam');
        return $this->db->get()->num_rows();

    }

    public function getAvailableStock($nama_barang)
    {
        $this->db->select('stock');
        $this->db->where('nama_barang', $nama_barang);
        $query = $this->db->get('data_inventaris');
        $result = $query->row();
    
        return $result ? $result->stock : null;
    }
    
    public function updateInventoryStock($nama_barang, $stock_borrowed)
    {
        $available_stock = $this->getAvailableStock($nama_barang);
    
        if ($available_stock !== null) {
            $updated_stock = $available_stock - $stock_borrowed;
            if ($updated_stock >= 0) {
                $this->db->set('stock', $updated_stock);
                $this->db->where('nama_barang', $nama_barang);
                $this->db->update('data_inventaris');
            }
        }
    }
    
public function updateInventoryStockOnDelete($nama_barang, $stock_returned)
{
    $available_stock = $this->getAvailableStock($nama_barang);

    if ($available_stock !== null) {
        $updated_stock = $available_stock + $stock_returned;
        $this->db->set('stock', $updated_stock);
        $this->db->where('nama_barang', $nama_barang);
        $this->db->update('data_inventaris');
    }
}
public function getTotalBorrowedItems($nama_barang)
{
    $this->db->select_sum('stock');
    $this->db->where('nama_barang', $nama_barang);
    $query = $this->db->get('data_pinjam');
    $result = $query->row();

    return $result ? $result->stock : 0;
}

public function checkBorrowedItem($user_id, $nama_barang)
{
    $this->db->select('COUNT(*) as total_borrowed');
    $this->db->from('data_pinjam');
    $this->db->where('id_pengguna', $user_id);
    $this->db->where('nama_barang', $nama_barang);
    $query = $this->db->get();
    $result = $query->row();

    if ($result) {
        return $result->total_borrowed > 0 ? 1 : 0;
    }

    return 0;
}

public function getInventarisTidakDipasang()
{
    $this->db->select('*');
    $this->db->from('data_inventaris');
    $query = $this->db->get();
    return $query->result();
}


    public function test () {
        $response[] = "Model_2 fun1";
		return $response;
    }
    public function getStockByNamaBarang($namabarang)
    {
        // Assuming you have a database table that contains the jumlah_alat information for each nama_barang
        $this->db->select('nama_barang, stock');
        $this->db->from('data_inventaris');
        $this->db->where('nama_barang', $namabarang); // Use 'id' as the column name to match the primary key in the "data_inventaris" table
        $query = $this->db->get();
    
        if ($query->num_rows() > 0) {
            return $query->row(); // Return a single row as an object
        } else {
            return null; // Return null if no data is found for the given ID
        }
    }

}