<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Edit Data Inventaris</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datainventaris') ?>"><?php echo lang('data_inventaris') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('edit_inventaris') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datainventaris/update/'.$data_inventaris->id, [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


  <div class="row">
    <div class="col-sm-6">
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title"><?php echo lang('user_basic') ?></h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Name">Nama Barang</label>
            <input type="text" class="form-control" name="nama_barang" id="formClient-Name" value="<?php echo $data_inventaris->nama_barang ?>" required placeholder="nama barang" />
          </div>

          <div class="form-group">
            <label for="formClient-Contact">Kode Barang</label>
            <input type="text" class="form-control" name="kode_barang" id="formClient-Contact"  value="<?php echo $data_inventaris->kode_barang ?>" placeholder="" />
          </div>

        </div>
        <!-- /.card-body -->

      </div>
      <!-- /.card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Ruangan & Jurusan</h3>
        </div>
        <div class="card-body">

        <div class="form-group">
            <label for="formClient-Role">ID Jurusan</label>
            <select name="id_jurusan" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Jurusan</option>
              <?php foreach ($this->data_jurusan_model->get() as $row): ?>
              <?php $sel = $row->id == $data_inventaris->id_jurusan ? 'selected' : ''; ?>
              <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->singkatan_jurusan ?></option>
              <?php endforeach ?>

            </select>
          </div>

          <div class="form-group">
            <label for="formClient-Role">ID Ruangan</label>
            <select name="id_ruangan" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Ruangan</option>
              <?php foreach ($this->data_ruangan_model->get() as $row): ?>
              <?php $sel = $row->id == $data_inventaris->id_ruangan ? 'selected' : ''; ?>
              <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->nama_ruangan ?></option>
              <?php endforeach ?>

            </select>
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <!-- Default card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Detail Asal Barang</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
            <label for="formClient-Email">Merek</label>
            <input type="text" class="form-control" name="merek" id="formClient-Email" required placeholder="Masukan Merek"  value="<?php echo $data_inventaris->merek ?>">
          </div>

          <div class="form-group">
            <label for="formClient-Username">Asal Usul</label>
            <input type="text" class="form-control" name="asal_usul" id="formClient-Username" required placeholder="Asal Usul"  value="<?php echo $data_inventaris->asal_usul ?>" />
          </div>

          <div class="form-group">
            <label for="formClient-Password">Tahun Peredaran</label>
            <input type="date" class="form-control" name="tahun_peredaran" minlength="6" id="formClient-Password" required placeholder="2019-01-20"  value="<?php echo $data_inventaris->tahun_peredaran ?>">
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
          <h3 class="card-title">Keterangan Lain</h3>
        </div>
        <div class="card-body">
        <div class="form-group">
            <label for="formClient-Status">Status Alat</label>
            <select name="status_alat" id="formClient-Status" class="form-control">
              <option value="Di Pasang" selected>Di Pasang</option>
              <option value="Tidak Di Pasang">Tidak Di Pasang</option>
            </select>
          </div>
          <div class="form-group">
            <label for="formClient-Status">Masa Hidup Alat</label>
            <select name="masa_hidup_alat" id="formClient-Status" class="form-control">
              <option value="1 Tahun">1 Tahun</option>
              <option value="2 Tahun">2 Tahun</option>
              <option value="3 Tahun">3 Tahun</option>
              <option value="4 Tahun">4 Tahun</option>
              <option value="5 Tahun">5 Tahun</option>
              <option value="6 Tahun">6 Tahun</option>
              <option value="7 Tahun">7 Tahun</option>
              <option value="8 Tahun">8 Tahun</option>
              <option value="9 Tahun">9 Tahun</option>
              <option value="10 Tahun">10 Tahun</option>
              <option value="10+ Tahun">10+ Tahun</option>
            </select>
          </div>
          <div class="form-group">
            <label for="formClient-ConfirmPassword">Harga Barang</label>
            <input type="text" class="form-control" name="harga_barang" id="harga_barang" placeholder="Rp. 5.000"  value="<?php echo $data_inventaris->harga_barang ?>">
          </div>

          <div class="form-group">
            <label for="formClient-Name">Total Jumlah Alat</label>
            <input type="text" class="form-control" name="total_alat" id="formClient-Name"  value="<?php echo $data_inventaris->total_alat ?>" required placeholder="total jumlah alat" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Total Jumlah Alat Dipasang </label>
            <input type="text" class="form-control" name="dipasang" id="formClient-Name" value="<?php echo $data_inventaris->dipasang ?>" required placeholder="jumlah alat yang dipasang" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Yang Bisa Dipinjam</label>
            <input type="text" class="form-control" name="stock_barang" id="formClient-Name"  value="<?php echo $data_inventaris->stock ?>" required placeholder="jumlah alat yang bisa dipinjam" />
          </div>

          <div class="form-group">
            <label for="formClient-Status">Kategori</label>
            <select name="kategori" id="formClient-Status" class="form-control">
              <option value="furniture kelas" selected>Furniture Kelas</option>
              <option value="elektronik">Elektronik</option>
              <option value="perkakas">Perkakas</option>
            </select>
          </div>

          <div class="form-group">
            <label for="formClient-Address">Keterangan</label>
            <textarea type="text" class="form-control" name="keterangan" id="formClient-Address" placeholder="Keterangan" rows="3" ><?php echo $data_inventaris->keterangan ?></textarea>
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
        <div class="col"><a href="<?php echo url('/datainventaris') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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
  const inputHarga = document.getElementById('harga_barang');

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
  var masa_hidup_alatValue = "<?php echo $data_inventaris->masa_hidup_alat ?>"; // Ganti dengan nilai yang diberikan saat edit

  var selectElement = document.getElementById("formClient-Status");
  for (var i = 0; i < selectElement.options.length; i++) {
    if (selectElement.options[i].value === masa_hidup_alatValue) {
      selectElement.options[i].selected = true;
      break;
    }
  }
</script>
<script>
  var status_alatValue = "<?php echo $data_inventaris->status_alat ?>"; // Ganti dengan nilai yang diberikan saat edit

  var selectElement = document.getElementById("formClient-Status");
  for (var i = 0; i < selectElement.options.length; i++) {
    if (selectElement.options[i].value === status_alatValue) {
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

