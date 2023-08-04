<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Data Kerusakan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datalaporkankerusakanpengguna') ?>"><?php echo lang('data_laporkan_kerusakan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('edit_kerusakan_pengguna') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datalaporkankerusakanpengguna/update/'.$data_laporkan_kerusakanpengguna->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>

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
          <select name="nama_barang" id="nama_barang" class="form-control select2" required >
            <?php $selected = ''; ?>
            <?php foreach ($this->data_laporkan_kerusakanpengguna_model->getListLaporEdit() as $row): ?>
              <?php if (!empty($_GET['role']) && $_GET['role'] == $row->id): ?>
                <?php $selected = 'selected'; ?>
              <?php endif; ?>
              <option value="<?php echo $row->id ?>" <?php echo $selected ?>><?php echo $row->nama_barang ?></option>
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
          <h3 class="card-title">Tingkat Kerusakan</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="formClient-Status">Tingkat Kerusakan</label>
            <select name="tingkat_kerusakan" id="formClient-Status" class="form-control">
              <option value="Mati Total" selected>Mati Total</option>
              <option value="Komponen Alat Rusak">Komponen Alat Rusak</option>
            </select>
          </div>
          </div></div>
      <!-- Default card -->
      <!-- /.card -->
      
    </div>
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Keterangan Alat Rusak</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
          <label for="formClient-Address">Keterangan</label>
            <textarea type="text" class="form-control" name="keterangan" id="formClient-Address" placeholder="Keterangan" rows="3"><?php echo $data_laporkan_kerusakanpengguna->keterangan ?></textarea>
          </div>
          <div class="form-group">
            <label for="formClient-Password">Tanggal Lapor Kerusakan</label>
            <input type="date" class="form-control" name="tanggal_laporan" minlength="6" id="formClient-Password" required placeholder="2019-01-20"  value="<?php echo $data_laporkan_kerusakanpengguna->tanggal_laporan ?>">
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
        <div class="col"><a href="<?php echo url('datalaporkankerusakanpengguna') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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
  var tingkat_kerusakanValue = "<?php echo $data_laporkan_kerusakanpengguna->tingkat_kerusakan ?>"; // Ganti dengan nilai yang diberikan saat edit

  var selectElement = document.getElementById("formClient-Status");
  for (var i = 0; i < selectElement.options.length; i++) {
    if (selectElement.options[i].value === tingkat_kerusakanValue) {
      selectElement.options[i].selected = true;
      break;
    }
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

