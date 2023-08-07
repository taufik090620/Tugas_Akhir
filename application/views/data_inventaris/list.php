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
 
    <!-- Main content -->
    <div class="modal fade" id="printModal" tabindex="-1" role="dialog" aria-labelledby="printModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="printModalLabel">Print Inventaris Data for Jurusan</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form id="jurusanSelectForm" action="<?= base_url('datainventaris/print') ?>" method="post">
              <div class="form-group">
                  <label for="jurusanSelect">Select Jurusan:</label>
                  <select class="form-control" name="jurusanSelect" id="jurusanSelect">
                      <!-- PHP loop to display available departments -->
                          <option value="all">Semua Jurusan</option>
                      <?php foreach ($this->data_jurusan_model->get() as $row): ?>
                          <option value="<?= $row->singkatan_jurusan ?>"><?= $row->singkatan_jurusan ?></option>
                      <?php endforeach ?>
                  </select>
              </div>
              <button type="submit" class="btn btn-primary">Print</button>
            </form>
          </div>
        </div>
      </div>
    </div>
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
                        <a href="<?php echo url('datainventaris/add') ?>" class="btn btn-primary btn-sm mr-2">
                          <span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Inventaris
                        </a>
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
                    <?php if (hasPermissions('inventaris_edit')): ?>
                    <th><?php echo lang('action') ?></th>
                    <?php endif ?>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($inventaris as $row): ?>
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
                      <?php if (hasPermissions('inventaris_edit')): ?>
                      <td>
                        <?php if (hasPermissions('inventaris_edit')): ?>
                          <a href="<?php echo url('datainventaris/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_inventaris') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('inventaris_view')): ?>
                          <a href="<?php echo url('datainventaris/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_inventaris') ?>" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('inventaris_delete')): ?>
                          <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                            <a href="<?php echo url('datainventaris/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_inventaris') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                          <?php else: ?>
                            <a href="#" class="btn btn-sm btn-danger" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                          <?php endif ?>
                        <?php endif ?>
                      </td>
                      <?php endif ?>
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
