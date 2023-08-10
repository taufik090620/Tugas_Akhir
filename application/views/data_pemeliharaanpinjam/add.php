<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>

<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Tambah Data Pemeliharaan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datapemeliharaanpinjam') ?>"><?php echo lang('tambah_pemeliharaan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('tambah_pemeliharaan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->

<section class="content">

<?php echo form_open_multipart('datapemeliharaanpinjam/save', [ 'class' => 'form-validate', 'autocomplete' => 'off' ]); ?>


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
                <?php foreach ($this->data_inventaris_model->getListPemeliharaanKosong() as $row): ?>
                    <?php
                    $stockValue = $this->data_inventaris_model->getJumlahAlatByStock($row->id)->stock;
                    if ($stockValue > 0) { // Check if stock is greater than 0
                        $sel = !empty(get('role')) && get('role')==$row->id ? 'selected' : '';
                        ?>
                        <option value="<?php echo $row->id ?>" <?php echo $sel ?>><?php echo $row->nama_barang ?></option>
                    <?php
                    }
                    ?>
                <?php endforeach ?>
            </select>
          </div>


        </div>
        
        <!-- /.card-body -->
  <!-- /.card-body -->
            </div>
            <div class="card">
            <div class="card-header">
          <h3 class="card-title">Jumlah Alat</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
          <label for="formClient-Jumlah">Total Alat</label>
            <input type="number" name="jumlah_alat" id="formClient-Jumlah" class="form-control" required disabled>
          <label for="formClient-Jumlah">Jumlah Alat Yang Dipinjamkan</label>
          <input type="number" name="stock" id="formClient-Stock" class="form-control" required disabled>
          </div>
          </div>
        </div>

            <div class="card">
        <div class="card-header">
          <h3 class="card-title">Tanggal</h3>
        </div>
        <div class="card-body">

        <div class="form-group">
            <label for="formClient-Email">Tanggal Pemeliharaan</label>
            <input type="date" class="form-control" name="tanggal_pemeliharaan" id="formClient-Email" required>
          </div>
          <div class="form-group">
            <label for="formClient-Address">Keterangan</label>
            <textarea type="text" class="form-control" name="keterangan" id="formClient-Address" placeholder="Keterangan" rows="3"></textarea>
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
          <h5 class="card-title">Status Alat</h5>
          <p></p>
        </div>
        <div class="card-body">
        <div class="form-group">
      <label for="formClient-Name">Alat Untuk Dipinjam</label>
      <select name="stock" id="formClient-Stock" class="form-control">
        <option value="1" selected>Alat Untuk Dipinjam</option>
      </select>
    </div>
    </div>
    </div>


        <div class="card">
        <div class="card-header">
          <h3 class="card-title">Kondisi Alat Yang Dipasang</h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Rusak</label>
            <input type="text" class="form-control" name="jumlah_rusak" id="formClient-Name" required placeholder="jumlah alat rusak" />
          </div>
          <div class="form-group">
            <label for="formClient-Name">Jumlah Alat Hilang</label>
            <input type="text" class="form-control" name="jumlah_hilang" id="formClient-Name" required placeholder="jumlah alat hilang" />
          </div><br>
          <p><b>Keterangan :</b></p>
          <p>Jika alat tidak rusak dan hilang, isi kolom kondisi alat dengan angka 0</p>
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
        <div class="col"><a href="<?php echo url('datapemeliharaanpinjam') ?>" onclick="return confirm('Are you sure you want to leave?')" class="btn btn-flat btn-danger"><?php echo lang('cancel') ?></a></div>
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

  $('#formClient-Role').on('change', function () {
            var idbarang = $(this).val();
            console.log(idbarang)
            // Fetch the corresponding data for "Jumlah Alat" dropdown using AJAX
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('datapemeliharaanpinjam/getJumlahAlatByNamaBarang') ?>',
                data: { id: idbarang },
                dataType: 'json',
                success: function (response) {
                  var jumlahAlatInput = $('#formClient-Jumlah');
                  console.log(response)
                  jumlahAlatInput.val(response.total_alat);
                },
                error: function () {
                    // Handle error if needed
                }
            });
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

  $('#formClient-Role').on('change', function () {
            var idbarang = $(this).val();
            console.log(idbarang)
            // Fetch the corresponding data for "Jumlah Alat" dropdown using AJAX
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('datapemeliharaanpinjam/getJumlahAlatByStock') ?>',
                data: { id: idbarang },
                dataType: 'json',
                success: function (response) {
                  var jumlahAlatInput = $('#formClient-Stock');
                  console.log(response)
                  jumlahAlatInput.val(response.stock);
                },
                error: function () {
                    // Handle error if needed
                }
            });
        });
    
</script>

<?php include viewPath('includes/footer'); ?>

