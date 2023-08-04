<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1><?php echo lang('data_pengajuan') ?></h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
        <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_pengajuan') ?></li>
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
                <h3 class="card-title p-3"><?php echo lang('data_pengajuan') ?></h3>
                <div class="ml-auto p-2">
<!-- buttons -->
                    <?php if (hasPermissions('pengajuan_add')): ?>
                      <a href="<?php echo url('datapengajuan/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Pinjaman</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Jurusan</th>
                    <th>Nama Pemohon</th>
                    <th>Nama Alat</th>
                    <th>Banyak Alat</th>
                    <th>Satuan</th>
                    <th>Harga Satuan</th>
                    <th>Tahun Pengajuan</th>
                    <th>Status</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($data_pengajuan as $row): ?>
                    <tr>
                    <td><?php echo $row->singkatan_jurusan ?></td>
                      <td>
                      <?php echo $row->name ?>
                      </td>
                      <td>
                      <?php echo $row->nama_alat ?>
                      </td>
                      <td><?php echo $row->banyak_alat ?></td>
                      <td><?php echo $row->satuan ?></td>
                      <td>
                        <?php echo $row->harga_satuan ?>
                      </td>
                      <td>
                        <?php echo $row->tahun_pengajuan ?>
                      </td>
                      <td><?php echo $row->status ?></td>
                      <td>
                      <div class="btn-group mt-1" role="group" aria-label="Button Group">
                              <?php if (hasPermissions('pengajuan_view')): ?>
                                <a href="<?php echo url('datapengajuan/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_pengajuan') ?>" data-toggle="tooltip">
                                  <i class="fa fa-eye"></i>
                                </a>
                              <?php endif ?>

                              <?php if (hasPermissions('konfirmasi_pengajuan_add')): ?>
                                <a href="<?php echo url('datapengajuan/konfirmasi/'.$row->id) ?>" class="btn btn-sm btn-success ml-1" title="<?php echo lang('konfirmasi_pengajuan') ?>" data-toggle="tooltip">
                                  <i class="fas fa-check"></i>
                                </a>
                              <?php endif ?>
                            </div>
                            <div class="btn-group mt-1" role="group" aria-label="Button Group">
                                <?php if (hasPermissions('pengajuan_edit')): ?>
                                    <a href="<?php echo url('datapengajuan/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_pengajuan') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                                <?php endif ?>
                                </div>
                                <div class="btn-group mt-1" role="group" aria-label="Button Group">
                                <?php if (hasPermissions('pengajuan_delete')): ?>
                                    <?php if ($row->id != 1 && logged('id') != $row->id): ?>
                                        <a href="<?php echo url('datapengajuan/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this user ?')" title="<?php echo lang('delete_pengajuan') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
                                    <?php else: ?>
                                        <a href="#" class="btn btn-sm btn-danger" title="<?php echo lang('delete_user_cannot') ?>" data-toggle="tooltip" disabled><i class="fa fa-trash"></i></a>
                                    <?php endif ?>
                                <?php endif ?>
                            </div>

                            </div>
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