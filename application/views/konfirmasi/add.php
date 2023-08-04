<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Laporan Kerusakan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datalaporkankerusakan') ?>"><?php echo lang('data_laporkan_kerusakan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('tambah_kerusakan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datalaporkankerusakan/savekonfirmasi/'.$Laporan[0]->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

        <div class="form-group">
          <label for="formClient-Role">Pengguna</label>
            <input type="text" class="form-control" name="nama_pelapor" id="formClient-Name" required placeholder="<?php echo lang('user_enter_name') ?>" value="<?php echo $Laporan[0]->name?>" readonly="readonly" />
          </div>

          <div class="form-group">
            <label for="formClient-Name">Nama Alat</label>
            <input type="text" class="form-control" name="nama_barang" id="formClient-Name" required value="<?php echo $Laporan[0]->nama_barang ?>" readonly="readonly" />
          </div>

          <div class="form-group">
            <label for="formClient-Name">Tingkat Kerusakan</label>
            <input type="text" class="form-control" name="tingkat_kerusakan" id="formClient-Name" required value="<?php echo $Laporan[0]->tingkat_kerusakan?>" readonly="readonly" />
          </div>




        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

      <!-- Default card -->
      <!-- /.card -->
      
    </div>
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Keterangan</h3>
        </div>
        <div class="card-body">

          
        <div class="form-group">
            <label for="formClient-Email">Keterangan Dari Pengguna</label>
            <input type="text" class="form-control" name="keterangan" id="formClient-Email" value="<?php echo $Laporan[0]->keterangan ?>" readonly="readonly">
          </div>
          <div class="form-group">
            <label for="formClient-Email">Tanggal Laporan Kerusakan</label>
            <input type="text" class="form-control" name="tanggal_laporan" id="formClient-Email" value="<?php echo $Laporan[0]->tanggal_laporan ?>" readonly="readonly">
          </div>
          <div class="form-group">
            <label for="formClient-Address">Keterangan Perbaikan</label>
            <textarea type="text" class="form-control" name="keterangan_perbaikan" id="formClient-Address" placeholder="Keterangan Perbaikan Dari Teknisi" rows="3"></textarea>
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
        <div class="col"><a href="<?php echo url('/datalaporkankerusakan') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

