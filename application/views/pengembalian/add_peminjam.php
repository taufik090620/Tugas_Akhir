<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Pengembalian</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/users') ?>"><?php echo lang('users') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('new_user') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapeminjam/savepengembalian/'.$Peminjam[0]->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


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
            <input type="text" class="form-control" name="nama_pemindah_barang" id="formClient-Name" required placeholder="<?php echo lang('user_enter_name') ?>" value="<?php echo $Peminjam[0]->name?>" readonly="readonly" />
          </div>

          <div class="form-group">
            <label for="formClient-Name">Nama Alat</label>
            <input type="text" class="form-control" name="nama_barang" id="formClient-Name" required value="<?php echo $Peminjam[0]->nama_barang ?>" readonly="readonly" />
          </div>

          <div class="form-group">
            <label for="formClient-Name">Kode Alat</label>
            <input type="text" class="form-control" name="kode_barang" id="formClient-Name" required value="<?php echo $Peminjam[0]->kode_barang ?>" readonly="readonly" />
          </div>




        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Jurusan Peminjam</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Role">Jurusan</label>
            <input type="text" class="form-control" name="jurusan" id="formClient-Name" required placeholder="<?php echo lang('user_enter_name') ?>" value="<?php echo $Peminjam[0]->singkatan_jurusan ?>" readonly="readonly" />
          </div>
          <div class="form-group">
            <label for="formClient-Role">Kelas</label>
            <input type="text" class="form-control" name="kelas" id="formClient-Name" required placeholder="<?php echo lang('user_enter_name') ?>" value="<?php echo $Peminjam[0]->kelas ?>" readonly="readonly" />
          </div>
          
        <div class="form-group">
            <label for="formClient-Status">Kondisi</label>
            <select name="kondisi_barang" id="formClient-Status" class="form-control">
              <option value="baik" selected>Baik</option>
              <option value="rusak">Rusak</option>
            </select>
          </div>
        </div>
        <!-- /.card-body -->

      </div>
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
            <label for="formClient-Email">Tanggal Terpakai</label>
            <input type="date" class="form-control" name="tanggal_masuk" id="formClient-Email" value="<?php echo $Peminjam[0]->tanggal_terpakai ?>" readonly="readonly">
          </div>

          <div class="form-group">
            <label for="formClient-Email">Tanggal Pengembalian</label>
            <input type="date" class="form-control" name="tanggal_keluar" id="formClient-Email" required>
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
        <div class="col"><a href="<?php echo url('/peminjam') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

