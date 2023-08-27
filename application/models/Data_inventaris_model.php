<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Data_inventaris_model extends MY_Model {
 
    public $table = 'data_inventaris';
 
    public function __construct()
    {
        parent::__construct();
    }
    public function get_print() {
        $query = $this->db->get('data_inventaris');
        return $query->result();
    }

    public function getInventarisJoin()
    {
        $this->db->select('data_inventaris.id, data_inventaris.kode_barang, data_inventaris.total_alat, data_inventaris.total_alat_pinjam, data_inventaris.nama_barang, data_inventaris.merek, data_inventaris.id_jurusan, data_inventaris.asal_usul, data_inventaris.tahun_peredaran, data_inventaris.harga_barang, data_inventaris.keterangan, data_inventaris.stock, data_inventaris.dipasang, data_inventaris.masa_hidup_alat, data_inventaris.kategori, data_inventaris.id_ruangan, jurusan.nama_jurusan, jurusan.singkatan_jurusan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan');
        $this->db->from('data_inventaris');
        $this->db->join('ruangan', 'data_inventaris.id_ruangan = ruangan.id', 'left');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id', 'left');
        $query = $this->db->get();
        return $query->result();
    }
    
    public function getInventarisJoinByID($id)
    {
        $this->db->select('data_inventaris.id, data_inventaris.kode_barang, data_inventaris.total_alat, data_inventaris.total_alat_pinjam, data_inventaris.nama_barang, data_inventaris.merek, data_inventaris.asal_usul, data_inventaris.tahun_peredaran, data_inventaris.harga_barang, data_inventaris.masa_hidup_alat, data_inventaris.kategori, data_inventaris.ruangan, data_inventaris.keterangan, data_inventaris.stock, data_inventaris.dipasang, jurusan.nama_jurusan, jurusan.singkatan_jurusan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan');
        $this->db->from('data_inventaris');
        $this->db->join('ruangan', 'data_inventaris.id_ruangan = ruangan.id', 'left');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id', 'left');
        $this->db->where('data_inventaris.id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function getInventarisJoinByJurusan($id = null)
    {
        $this->db->select('data_inventaris.id, data_inventaris.kode_barang, data_inventaris.total_alat, data_inventaris.total_alat_pinjam, data_inventaris.nama_barang, data_inventaris.merek, data_inventaris.asal_usul, data_inventaris.tahun_peredaran, data_inventaris.harga_barang, data_inventaris.masa_hidup_alat, data_inventaris.kategori, data_inventaris.keterangan, data_inventaris.stock, data_inventaris.dipasang, jurusan.nama_jurusan, jurusan.singkatan_jurusan, ruangan.nama_ruangan, ruangan.kapasitas_ruangan');
        $this->db->from('data_inventaris');
        $this->db->join('ruangan', 'data_inventaris.id_ruangan = ruangan.id', 'left');
        $this->db->join('jurusan', 'data_inventaris.id_jurusan = jurusan.id', 'left');
        if ($id !== null) {
            $this->db->where('jurusan.singkatan_jurusan', $id);
        }
        $query = $this->db->get();
        return $query->result();
    }

    public function getListPemeliharaanKosong()
    {
        $this->db->select('data_inventaris.id, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('pemeliharaan', 'pemeliharaan.nama_barang = data_inventaris.id', 'left');
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

    public function getListLaporKosong()
    {
        $this->db->select('data_inventaris.id, data_inventaris.nama_barang');  
        $this->db->from('data_inventaris');
        $this->db->join('lapor_kerusakan', 'lapor_kerusakan.nama_barang = data_inventaris.id', 'left');
        $this->db->where("data_inventaris.id NOT IN (SELECT nama_barang FROM lapor_kerusakan)", null, false);
        $query = $this->db->get();
        return $query->result();
    }
    
    function inventaris_dashboard(){
        $this->db->select('*');
        $this->db->from('data_inventaris');
        return $this->db->get()->num_rows();

    }

    public function getById($nama_barang)
    {
        $this->db->where('id', $nama_barang);
        $query = $this->db->get($this->table);

        return $query->row();
    }

    public function getListPemeliharaanKosongByJurusan($id_jurusan)
    {
        $this->db->select('id, nama_barang');
        $this->db->from('data_inventaris');
        $this->db->where('id_jurusan', $id_jurusan);
        $this->db->where_not_in('id', "(SELECT nama_barang FROM pemeliharaan)");
        $query = $this->db->get();
        return $query->result();
    }

    public function reduceDipasang($nama_barang, $jumlah)
    {
        $this->db->set('dipasang', 'dipasang - ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');
    }

    public function increaseDipasang($nama_barang, $jumlah)
    {
        $this->db->set('dipasang', 'dipasang + ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');
    }

    public function getJumlahAlatByDipasang($idbarang)
    {
        $this->db->select('id, dipasang');
        $this->db->from('data_inventaris');
        $this->db->where('id', $idbarang);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row(); // Return a single row as an object
        } else {
            return null; // Return null if no data is found for the given ID
        }
    }

    public function getNamaAlatById($id)
    {
        $this->db->select('id, nama_barang');
        $this->db->from('data_inventaris');
        $this->db->where('id', $id);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row(); // Return a single row as an object
        } else {
            return null; // Return null if no data is found for the given ID
        }
    }
    
    public function getJumlahAlatByNamaBarang($idbarang)
    {
        $this->db->select('id, total_alat');
        $this->db->from('data_inventaris');
        $this->db->where('id', $idbarang);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row(); // Return a single row as an object
        } else {
            return null; // Return null if no data is found for the given ID
        }
    }
    public function getJumlahAlatByStock($idbarang)
    {
        $this->db->select('id, stock');
        $this->db->from('data_inventaris');
        $this->db->where('id', $idbarang);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row(); // Return a single row as an object
        } else {
            return null; // Return null if no data is found for the given ID
        }
    }

    public function reduceStock($nama_barang, $jumlah)
    {
        $this->db->trans_start(); // Start a transaction
        
        // Update stock
        $this->db->set('stock', 'stock - ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');
        
        // Update total_alat_pinjam
        $this->db->set('total_alat_pinjam', 'total_alat_pinjam - ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');
    
        $this->db->trans_complete(); // Complete the transaction
    }
    
    public function increaseStock($nama_barang, $jumlah)
    {
        $this->db->set('stock', 'stock + ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');

        // Update total_alat_pinjam
        $this->db->set('total_alat_pinjam', 'total_alat_pinjam + ' . $jumlah, false);
        $this->db->where('id', $nama_barang);
        $this->db->update('data_inventaris');
    
        $this->db->trans_complete(); // Complete the transaction
    }
    
    public function getDipasangByNamaBarang($nama_barang)
{
    $this->db->select('dipasang');
    $this->db->where('id', $nama_barang);
    return $this->db->get('data_inventaris')->row()->dipasang;
}

}