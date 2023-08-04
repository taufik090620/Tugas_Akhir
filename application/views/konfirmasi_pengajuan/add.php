<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data Pengajuan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datapengajuan') ?>"><?php echo lang('data_pengajuan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('konfirmasi_pengajuan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapengajuan/savekonfirmasi/'.$Pengajuan[0]->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
        <h3 class="card-title">Keterangan Alat</h3>
        </div>
        <div class="card-body">
        <div class="form-group">
            <label for="formClient-Name">Nama Alat</label>
            <input type="text" class="form-control" name="nama_alat_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->nama_alat ?>" readonly="readonly" />
          </div>
          
        <div class="form-group">
            <label for="formClient-Name">Jumlah Alat</label>
            <input type="number" class="form-control" name="banyak_alat_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->banyak_alat ?>" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Satuan Alat</label>
            <input type="text" class="form-control" name="satuan_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->satuan ?>" readonly="readonly" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Harga Satuan Alat</label>
            <input type="text" class="form-control" name="harga_satuan_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->harga_satuan ?>" readonly="readonly" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Harga Satuan Alat</label>
            <input type="date" class="form-control" name="tahun_pengajuan_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->tahun_pengajuan ?>" readonly="readonly" />
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
        <h3 class="card-title">Profil Pemohon</h3>
        </div>
        <div class="card-body">

        <div class="form-group">
          <label for="formClient-Role">Nama Pemohon</label>
            <input type="text" class="form-control" name="nama_pemohon" id="formClient-Name" required placeholder="<?php echo lang('user_enter_name') ?>" value="<?php echo $Pengajuan[0]->name?>" readonly="readonly" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jurusan</label>
            <input type="text" class="form-control" name="jurusan" id="formClient-Name" required value="<?php echo $Pengajuan[0]->singkatan_jurusan ?>" readonly="readonly" />
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->
      <!-- /.card -->
      <div class="card">
        <div class="card-header">
        <h3 class="card-title">Spesifikasi & Link Pembelian</h3>
        </div>
        <div class="card-body">

        <div class="form-group">
        <div class="form-group">
        <div class="form-group">
            <label for="formClient-Name">Spesifikasi</label>
            <input type="text" class="form-control" name="spesifikasi_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->spesifikasi ?>" readonly="readonly" />
          </div>
            <label for="formClient-Name">Link Pembelian</label>
            <input type="text" class="form-control" name="link_beli_acc" id="formClient-Name" required value="<?php echo $Pengajuan[0]->link_beli ?>" readonly="readonly" />
          </div>

        </div>
        <!-- /.card-body -->

      </div>
    </div>
  </div>
</div>
  <!-- Default card -->
  <div class="card">
    <div class="card-footer">
      <div class="row">
        <div class="col"><a href="<?php echo url('/datapengajuan') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

