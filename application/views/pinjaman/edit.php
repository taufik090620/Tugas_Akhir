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
              <li class="breadcrumb-item"><a href="<?php echo url('/datapinjaman') ?>"><?php echo lang('data_pinjaman') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('edit_pinjaman') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapinjaman/update/'.$data_pinjaman->id,  [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


<div class="row">
    <div class="col-sm-6">
      <!-- Default card -->

      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Nama Alat</h3>
        </div>
        <div class="card-body">

          <div class="form-group">
          <label for="formClient-Role">Nama Alat</label>
          <select name="nama_barang" id="formClient-Role" class="form-control select2" required>
                <option value="">Pilih Alat</option>
                <?php foreach ($this->data_pinjaman_model->getInventarisTidakDipasang() as $row): ?>
                    <?php $selected = ($row->nama_barang == $data_pinjaman->nama_barang) ? 'selected' : ''; ?>
                    <option value="<?php echo $row->nama_barang ?>" <?php echo $selected ?>>
                        <?php echo $row->nama_barang ?>
                    </option>
                <?php endforeach ?>
            </select>
          </div>
          <div class="form-group">
          <label for="formClient-Stock">Jumlah Alat Yang Bisa Dipinjam</label>
            <input type="number" name="stock_alat" id="formClient-Stock" class="form-control" required disabled>
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Pinjam</label>
            <input type="number" class="form-control" name="stock_barang" id="formClient-Name" required placeholder="jumlah pinjam" value="<?php echo $data_pinjaman->stock ?>" />
        </div>


        </div>

        <!-- /.card-body -->
  <!-- /.card-body -->
            </div>
      <!-- /.card -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Kelas Dan Jurusan</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
          <label for="formClient-Status">Kelas Peminjam</label>
            <select name="kelas" id="formClient-Status" class="form-control">
              <option value="x-a" selected>X-A</option>
              <option value="x-b">X-B</option>
              <option value="xi-a">XI-A</option>
              <option value="xi-b">XI-B</option>
              <option value="xii-a">XII-A</option>
              <option value="xii-b">XII-B</option>
            </select>
          </div>
          <div class="form-group">
            <label for="formClient-Role">Jurusan Peminjam</label>
            <select name="id_jurusan" id="formClient-Role" class="form-control select2" required>
              <option value="">Pilih Jurusan</option>
              <?php foreach ($this->data_jurusan_model->get() as $row): ?>
              <?php $sel = $row->id == $data_pinjaman->id_jurusan ? 'selected' : ''; ?>
              <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->singkatan_jurusan ?></option>
              <?php endforeach ?>

            </select>
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
            <label for="formClient-Email">Tanggal Terpakai</label>
            <input type="date" class="form-control" name="tanggal_terpakai" id="formClient-Email" required value="<?php echo $data_pinjaman->tanggal_terpakai ?>">
          </div>
        </div>
        <!-- /.card-body -->

      </div>
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Nama Peminjam</h3>
        </div>
        <div class="card-body">
          <!-- Dropdown untuk memilih peminjam -->
          <div class="form-group">
              <label for="formClient-Role">Peminjam</label>
              <select name="id_pengguna" id="formClient-Role" class="form-control select2" required>
                <option value="">Pilih Users</option>
                <?php foreach ($users_list as $user): ?>
                    <?php $sel = ($user->id == $data_pinjaman->id_pengguna) ? 'selected' : ''; ?>
                    <option value="<?php echo $user->id ?>" <?php echo $sel ?>><?php echo $user->name ?></option>
                <?php endforeach ?>
            </select>
          </div>
          
          <div class="form-group">
          <label for="formClient-Address">Alasan Pinjam Alat</label>
            <textarea type="text" class="form-control" name="alasan_pinjam" id="formClient-Address" placeholder="Alasan Meminjam Alat" rows="3"><?php echo $data_pinjaman->alasan_pinjam ?></textarea>
          </div>
        </div>
      </div>
      <!-- /.card -->
      <!-- /.card -->

    </div>
  </div>

  <!-- Default card -->
  <div class="card">
    <div class="card-footer">
      <div class="row">
        <div class="col"><a href="<?php echo url('datapinjaman') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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
    $('.select2').select2();

    // Function to update formClient-Stock when the page is loaded or the select value changes
    function updateFormClientStock() {
      var namabarang = $('#formClient-Role').val();
      if (namabarang) {
        // Fetch the corresponding data for "Jumlah Alat" dropdown using AJAX
        $.ajax({
          type: 'POST',
          url: '<?php echo base_url('datapinjaman/getStockByNamaBarang') ?>',
          data: { nama_barang: namabarang },
          dataType: 'json',
          success: function(response) {
            var stockAlatInput = $('#formClient-Stock');
            stockAlatInput.val(response.stock);
          },
          error: function() {
            // Handle error if needed
          }
        });
      } else {
        $('#formClient-Stock').val('');
      }
    }

    // Trigger updateFormClientStock on page load or when select value changes
    $('#formClient-Role').on('change', updateFormClientStock);
    $(document).ready(updateFormClientStock);
  });
</script>
<script>
  var kelasValue = "<?php echo $data_pinjaman->kelas ?>"; // Ganti dengan nilai yang diberikan saat edit

  var selectElement = document.getElementById("formClient-Status");
  for (var i = 0; i < selectElement.options.length; i++) {
    if (selectElement.options[i].value === kelasValue) {
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

