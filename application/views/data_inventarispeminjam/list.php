<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_inventaris') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_inventaris') ?></li>
        </ol>
        </div>
    </div>
    </div><!-- /.container-fluid -->
</section>
 
    <section class="content">
        <div class="container-fluid">
        <div class="row">
            <div class="col-12">
            <div class="card">
                <div class="card-header d-flex p-0">
                <h3 class="card-title p-3"><?php echo lang('data_inventaris') ?></h3>
                <div class="ml-auto p-2">
                  <!-- buttons -->
                  <?php if (hasPermissions('inventaris_print')): ?>
                    <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#printModal">
                        <i class="fas fa-print"></i> Print
                    </a>
                    <?php endif ?>
                    <?php if (hasPermissions('inventaris_add')): ?>
                      <a href="<?php echo url('datainventaris/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Inventaris</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Kode Alat</th>
                    <th>Nama Alat</th>
                    <th>Merek</th>
                    <th>Jurusan</th>
                    <th>Ruangan</th>
                    <th>Total Alat</th>
                    <th>Dipasang</th>
                    <th>Stock Pinjam</th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($inventarispeminjam as $row): ?>
                    <tr>
                      <td width="60"><?php echo $row->kode_barang ?></td>
                      <td >
                         <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                        <?php echo $row->merek ?>
                      </td>
                      <td><?php echo $row->singkatan_jurusan ?></td>
                      <td><?php echo $row->nama_ruangan ?></td>
                      <td><?php echo $row->total_alat?></td>
                      <td><?php echo $row->dipasang?></td>
                      <td><?php echo $row->stock?></td>
                    </tr>
                  <?php endforeach ?>
                  </tbody>
                </table>
 
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
 
 
 
<?php include viewPath('includes/footer'); ?>
<script>
    $('#jurusanSelectForm').on('submit', function (event) {
        event.preventDefault();
        const selectedJurusan = $('#jurusanSelect').val();
        const url = $(this).attr('action');
        window.location.href = url + '?jurusan=' + selectedJurusan;
    });
</script>
