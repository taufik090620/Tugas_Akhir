<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Tambah Data Pengajuan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datapengajuankajur') ?>"><?php echo lang('data_pengajuan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('edit_pengajuan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapengajuankajur/update/'.$datapengajuankajur->id,  [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

        <div class="form-group">
          <label for="formClient-Role">Nama Pemohon</label>
            <input type="text" class="form-control" value="<?php echo logged('name') ?>" readonly>
          </div>
          <div class="form-group">
            <label for="formClient-Role">ID Jurusan</label>
            <select name="id_jurusan" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih jurusan</option>
              <?php foreach ($this->data_jurusan_model->get() as $row): ?>
              <?php $sel = $row->id == $datapengajuankajur->id_jurusan ? 'selected' : ''; ?>
              <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->singkatan_jurusan ?></option>
              <?php endforeach ?>

            </select>
          </div>
        <div class="form-group">
            <label for="formClient-Name">Nama Alat</label>
            <input type="text" class="form-control" name="nama_alat" id="formClient-Name" value="<?php echo $datapengajuankajur->nama_alat ?>" required placeholder="nama alat" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat </label>
            <input type="number" class="form-control" name="banyak_alat" id="formClient-Name"  value="<?php echo $datapengajuankajur->banyak_alat ?>" required placeholder="Jumlah Alat Yang Diajukan" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Tanggal Pengajuan </label>
            <input type="date" class="form-control" name="tahun_pengajuan" minlength="6" id="formClient-Password" value="<?php echo $datapengajuankajur->tahun_pengajuan ?>" required placeholder="2019-01-20">
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->

      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Harga Satuan</h3>
        </div>
        <div class="card-body">
        <div class="form-group">
            <label for="formClient-Name">Satuan</label>
            <input type="text" class="form-control" name="satuan" id="formClient-Name"  value="<?php echo $datapengajuankajur->satuan ?>" required placeholder="Satuan Alat">
          </div>
        <div class="form-group">
          <label for="formClient-ConfirmPassword">Harga Alat</label>
          <input type="text" class="form-control" name="harga_satuan" id="harga_satuan"  value="<?php echo $datapengajuankajur->harga_satuan ?>" placeholder="Rp. 5.000">
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
          <h3 class="card-title">Spesifikasi & Link Beli</h3>
        </div>
        <div class="card-body">
        <div class="form-group">
            <label for="formClient-Address">Spesifikasi</label>
            <textarea type="text" class="form-control" name="spesifikasi" id="formClient-Address" placeholder="Spesifikasi Alat" rows="3"><?php echo $datapengajuankajur->spesifikasi ?></textarea>
          </div>
          <div class="form-group">
            <label for="formClient-Address">Link Pembelian</label>
            <textarea type="text" class="form-control" name="link_beli" id="formClient-Address" placeholder="Link Pembelian" rows="3"><?php echo $datapengajuankajur->link_beli?><</textarea>
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
        <div class="col"><a href="<?php echo url('datapengajuankajur') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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
  // Mencari elemen input
  const inputHarga = document.getElementById('harga_satuan');

  // Fungsi untuk mengubah format ke format mata uang Rupiah
  function formatCurrency(input) {
    return "Rp. " + input.toLocaleString("id-ID");
  }

  // Fungsi untuk menghilangkan format "Rp." sebelum mengirim data
  function removeCurrencyFormat(input) {
    return parseInt(input.replace(/\D/g, ''));
  }

  // Event listener untuk memformat nilai saat input kehilangan fokus
  inputHarga.addEventListener('blur', function() {
    if (inputHarga.value.trim() === "") {
      // Jika input kosong, tidak perlu diubah
      return;
    }
    const value = removeCurrencyFormat(inputHarga.value);
    inputHarga.value = formatCurrency(value);
  });
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

