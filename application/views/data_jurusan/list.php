<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
 
<?php include viewPath('includes/header'); ?>
 
 
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1>Data Jurusan</h1>
        </div>
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
        <li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item active">Data Jurusan</li>
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
                <h3 class="card-title p-3">Data Jurusan</h3>
                <div class="ml-auto p-2">
<!-- buttons -->

                    <?php if (hasPermissions('jurusan_add')): ?>
                      <a href="<?php echo url('datajurusan/add') ?>" class="btn btn-primary btn-sm"><span class="pr-1"><i class="fa fa-plus"></i></span> Tambah Data Jurusan</a>
                    <?php endif ?>
                </div>
                </div>
                 
                <!-- /.card-header -->
                <div class="card-body">
                <table id="example1" class="table table-bordered table-hover table-striped">
                  <thead>
                  <tr>
                    <th>Nama jurusan</th>
                    <th>Singkatan jurusan</th>
                    <?php if (hasPermissions('jurusan_edit')): ?>
                    <th></th>
                    <?php endif ?>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <?php foreach ($jurusan as $row): ?>
                    <tr>
                      <td><?php echo $row->nama_jurusan ?></td>
                      <td>
                         <?php echo $row->singkatan_jurusan ?>
                      </td>
                      <?php if (hasPermissions('jurusan_edit')): ?>
                      <td class="text-center">
                        <?php if (hasPermissions('jurusan_edit')): ?>
                          <a href="<?php echo url('datajurusan/edit/'.$row->id) ?>" class="btn btn-sm btn-primary" title="<?php echo lang('edit_jurusan') ?>" data-toggle="tooltip"><i class="fas fa-edit"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('jurusan_view')): ?>
                          <a href="<?php echo url('datajurusan/view/'.$row->id) ?>" class="btn btn-sm btn-info" title="<?php echo lang('view_jurusan') ?>" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
                        <?php endif ?>
                        <?php if (hasPermissions('jurusan_delete')): ?>
                          <?php if ($row->id!=1 && logged('id')!=$row->id): ?>
                            <a href="<?php echo url('datajurusan/delete/'.$row->id) ?>" class="btn btn-sm btn-danger" onclick="return confirm('Do you really want to delete this jurusan ?')" title="<?php echo lang('delete_jurusan') ?>" data-toggle="tooltip"><i class="fa fa-trash"></i></a>
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