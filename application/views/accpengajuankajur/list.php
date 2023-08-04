<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1>List Pengajuan Approved</h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
        <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active"><?php echo lang('data_approve') ?></li>
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
                <h3 class="card-title p-3"><?php echo lang('acc_data_approve') ?></h3>
                <div class="ml-auto p-2">
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Jurusan</th>
                    <th>Nama Pemohon</th>
                    <th>Tahun Pengajuan</th>
                    <th>Nama Alat</th>
                    <th>Banyak Alat</th>
                    <th>Satuan</th>
                    <th>Harga Satuan</th>
                    <th>Status</th>
                    <th><?php echo lang('action') ?></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($accpengajuankajur as $row): ?>
                    <tr>
                    <td><?php echo $row->jurusan?></td>
                      <td>
                      <?php echo $row->nama_pemohon ?>
                      </td>
                      <td>
                      <?php echo $row->tahun_pengajuan_acc ?>
                      </td>
                      <td>
                      <?php echo $row->nama_alat_acc ?>
                      </td>
                      <td><?php echo $row->banyak_alat_acc ?></td>
                      <td><?php echo $row->satuan_acc ?></td>
                      <td>
                        <?php echo $row->harga_satuan_acc ?>
                      </td>
                      <td><?php echo $row->status_acc ?></td>
                      <td>
                      <div style="text-align: center; margin-top: 10px;">
                            <?php if (hasPermissions('pengajuan_view')): ?>
                              <a href="<?php echo url('accpengajuankajur/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_approve') ?>" data-toggle="tooltip">
                                <i class="fa fa-eye"></i>
                              </a>
                            <?php endif ?>
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
