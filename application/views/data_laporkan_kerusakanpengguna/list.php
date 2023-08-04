<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_laporkan_kerusakan') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo url('/') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_laporkan_kerusakan') ?></li>
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
                <h3 class="card-title p-3"><?php echo lang('data_laporkan_kerusakan') ?></h3>
                <div class="ml-auto p-2">
                  <!-- buttons -->
                    <?php if (hasPermissions('laporkan_kerusakan_add')): ?>
                      <a href="<?php echo url('datalaporkankerusakanpengguna/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Laporkan Kerusakan</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Nama Pelapor</th>
                    <th>Nama Alat</th>
                    <th>Tanggal Lapor</th>
                    <th>Tingkat Kerusakan</th>
                    <th>Keterangan</th>
                    <th>Status</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_laporkan_kerusakanpengguna as $row): ?>
                    <tr>
                      <td><?php echo $row->name ?></td>
                      <td>
                      <?php echo $row->nama_barang ?>
                      </td>
                      <td>
                      <?php echo $row->tanggal_laporan ?>
                      </td>
                      <td>
                      <?php echo $row->tingkat_kerusakan ?>
                      </td>
                      <td>
                      <?php echo $row->keterangan ?>
                      </td>
                      <td><?php echo $row->status ?></td>
                      <td>
                        <?php if (hasPermissions('laporkan_kerusakan_edit')): ?>
                          <div class="btn-group">
                            <a href="<?php echo url('datalaporkankerusakanpengguna/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_kerusakan') ?>" data-toggle="tooltip" style="margin-right: 5px;"><i class="fas fa-edit"></i></a>
                            <?php if (hasPermissions('laporkan_kerusakan_delete')): ?>
                              <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                                <a href="<?php echo url('datalaporkankerusakanpengguna/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_kerusakan') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                              <?php else: ?>
                                <a href="#" class="btn btn-sm btn-danger" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                              <?php endif ?>
                            <?php endif ?>
                          </div>
                        <?php endif ?>

                        <?php if (hasPermissions('konfirmasi_add')): ?>
                          <div style="text-align: center; margin-top: 10px;">
                            <a href="<?php echo url('datalaporkankerusakan/konfirmasi/'.$row->id) ?>" class="btn btn-sm btn-success" title="<?php echo lang('konfirmasi_kerusakan') ?>" data-toggle="tooltip">
                              <i class="fas fa-check"></i>
                            </a>
                          </div>
                        <?php endif ?>
                      </td>
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