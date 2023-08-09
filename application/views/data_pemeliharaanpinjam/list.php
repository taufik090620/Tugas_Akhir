<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_pemeliharaan_dipasang') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_pemeliharaan_dipasang') ?></li>
        </ol>
        </div>
    </div>
    </div><!-- /.container-fluid -->
</section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
        <div class="row">
            <div class="col-12">
            <div class="card">
                <div class="card-header d-flex p-0">
                <h3 class="card-title p-3"><?php echo lang('data_pemeliharaan_dipasang') ?></h3>
                <div class="ml-auto p-2">
                  <!-- buttons -->
                  <?php if (hasPermissions('pemeliharaan_print')): ?>
                    <a href="<?= base_url('datapemeliharaan/print') ?>" class="btn btn-primary btn-sm btn btn-primary btn-sm"><i class="fas fa-print"></i>Print</a>
                    <?php endif ?>
                    <?php if (hasPermissions('pemeliharaan_add')): ?>
                      <a href="<?php echo url('datapemeliharaanpinjam/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Pemeliharaan</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Nama Alat</th>
                    <th>Kode Alat</th>
                    <th>Total Alat</th>
                    <th>Jumlah Alat Rusak</th>
                    <th>Jumlah Alat Hilang</th>
                    <th>Tahun Peredaran</th>
                    <th>Tanggal pemeliharaan</th>
                    <?php if (hasPermissions('pemeliharaan_edit')): ?>
                    <th>
                      <?php echo lang('action') ?>
                    </th>
                    <?php endif ?>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_pemeliharaanpinjam as $row): ?>
                    <tr>
                      <td>
                      <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                      <?php echo $row->kode_barang ?>
                      </td>
                      <td><?php echo $row->total_alat ?></td>
                      <td><?php echo $row->jumlah_rusak?></td>
                      <td><?php echo $row->jumlah_hilang?></td>
                      <td><?php echo $row->tahun_peredaran ?></td>
                      <td><?php echo $row->tanggal_pemeliharaan ?></td>
                      <?php if (hasPermissions('pemeliharaan_edit')): ?>
                        <td>
                          <div class="btn-group mt-1" role="group" aria-label="Button Group">
                            <?php if (hasPermissions('pemeliharaan_edit')): ?>
                              <a href="<?php echo url('datapemeliharaan/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_pemeliharaan') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                            <?php endif ?>

                            <?php if (hasPermissions('pemeliharaan_delete')): ?>
                              <?php if ($row->id != 1 && logged('id') != $row->id): ?>
                                <a href="<?php echo url('datapemeliharaanpinjam/delete/'.$row->id) ?>" class="btn btn-sm btn-danger ml-1" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_pemeliharaan') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                              <?php else: ?>
                                <a href="#" class="btn btn-sm btn-danger ml-1" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                              <?php endif ?>
                            <?php endif ?>
                          </div>

                          <div class="btn-group mt-1" role="group" aria-label="Button Group">
                            <?php if (hasPermissions('pemeliharaan_view')): ?>
                              <a href="<?php echo url('datapemeliharaan/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_pemeliharaan') ?>" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
                            <?php endif ?>
                          </div>
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