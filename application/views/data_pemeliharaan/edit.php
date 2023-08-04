<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Data Pemeliharaan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datapemeliharaan') ?>"><?php echo lang('data_pemeliharaan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('edit_pemeliharaan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapemeliharaan/update/'.$data_pemeliharaan->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


<div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
            <div class="card">
        <div class="card-header">
          <h3 class="card-title">Pengguna</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="formClient-Role">Pengguna</label>
            <input type="text" class="form-control" value="<?php echo logged('name') ?>" readonly>
          </div>
        </div>
      </div>


      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Nama Alat</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
          <label for="formClient-Role">Nama Alat</label>
          <select name="nama_barang" id="nama_barang" class="form-control select2" required onchange="getJurusanRuangan(this)">
            <?php $selected = ''; ?>
            <?php foreach ($this->data_pemeliharaan_model->getListPemeliharaanEdit() as $row): ?>
              <?php if (!empty($_GET['role']) && $_GET['role'] == $row->id): ?>
                <?php $selected = 'selected'; ?>
              <?php endif; ?>
              <option value="<?php echo $row->id ?>" data-jurusan="<?php echo $row->id_jurusan ?>" data-ruangan="<?php echo $row->id_ruangan ?>" <?php echo $selected ?>><?php echo $row->nama_barang ?></option>
              <?php $selected = ''; ?>
            <?php endforeach ?>
          </select>


          </div>

        </div>

        <!-- /.card-body -->
  <!-- /.card-body -->
            </div>
      <!-- /.card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Kondisi</h3>
        </div>
        <div class="card-body">
        <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Baik</label>
            <input type="text" class="form-control" name="jumlah_baik" id="formClient-Name" required placeholder="jumlah alat baik" required value="<?php echo $data_pemeliharaan->jumlah_baik ?>">
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Rusak</label>
            <input type="text" class="form-control" name="jumlah_rusak" id="formClient-Name" required placeholder="jumlah alat rusak" required value="<?php echo $data_pemeliharaan->jumlah_rusak ?>">
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Hilang</label>
            <input type="text" class="form-control" name="jumlah_hilang" id="formClient-Name" required placeholder="jumlah alat hilang" required value="<?php echo $data_pemeliharaan->jumlah_hilang ?>">
          </div>
          </div>
        </div>


      <!-- Default card -->
      <!-- /.card -->
      
    </div>
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Tanggal</h3>
        </div>
        <div class="card-body">

          
        <div class="form-group">
            <label for="formClient-Email">Tanggal Pemeliharaan</label>
            <input type="date" class="form-control" name="tanggal_pemeliharaan" id="formClient-Email" required value="<?php echo $data_pemeliharaan->tanggal_pemeliharaan ?>">
          </div>
          <div class="form-group">
            <label for="formClient-Address">Keterangan</label>
            <textarea type="text" class="form-control" name="keterangan" id="formClient-Address" placeholder="Keterangan" rows="3"><?php echo $data_pemeliharaan->keterangan ?></textarea>
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->
      <!-- /.card -->

    </div>
  </div>

  <!-- Default card -->
  <div class="card">
    <div class="card-footer">
      <div class="row">
        <div class="col"><a href="<?php echo url('datapemeliharaan') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
        <div class="col text-right"><button type="submit" class="btn btn-flat btn-primary"><?php echo lang('submit') ?></button></div>
      </div>
    </div>
    <!-- /.card-footer-->

  </div>
  <!-- /.card -->

<?php echo form_close(); ?>

</section>
<!-- /.content -->
<script>
  function getJurusanRuangan(select) {
    var selectedOption = select.options[select.selectedIndex];
    var jurusanId = selectedOption.getAttribute('data-jurusan');
    var ruanganId = selectedOption.getAttribute('data-ruangan');

    // Isi nilai id_jurusan dan id_ruangan dengan data yang diterima
    $('select[name="id_jurusan"]').val(jurusanId).prop('disabled', true).trigger('change');
    $('select[name="id_ruangan"]').val(ruanganId).prop('disabled', true).trigger('change');
  }
</script>

<script>
  $(document).ready(function() {
    $('.form-validate').validate();

      //Initialize Select2 Elements
    $('.select2').select2()

  })

  function previewImage(input, previewDom) {

    if (input.files && input.files[0]) {

      $(previewDom).show();

      var reader = new FileReader();

      reader.onload = function(e) {
        $(previewDom).find('img').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }else{
      $(previewDom).hide();
    }

  }

  function createUsername(name) {
      return name.toLowerCase()
        .replace(/ /g,'_')
        .replace(/[^\w-]+/g,'')
        ;;
  }

</script>

<?php include viewPath('includes/footer'); ?>

