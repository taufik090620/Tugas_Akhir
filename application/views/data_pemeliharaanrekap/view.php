<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<?php include viewPath('includes/header'); ?>
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>View Data Pemeliharaan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
			<li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
            <li class="breadcrumb-item"><a href="<?php echo url('/datapemeliharaanpinjam') ?>"><?php echo lang('data_pemeliharaan') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('view_pemeliharaan') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header d-flex p-0">
                    <!-- ... Bagian Header Kartu ... -->
                </div>
                <div class="card-body">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="row">
                                <div class="col-sm-10" style="padding-left: 50px;">
                                    <table class="table table-bordered table-striped">
                                        <tbody>
                                            <tr>
                                                <td width="160"><strong>Nama Barang</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->nama_barang ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Jumlah Alat Rusak</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->jumlah_rusak ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Jumlah Alat Hilang</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->jumlah_hilang ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Tanggal Pemeliharaan</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->tanggal_pemeliharaan ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Keterangan</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->keterangan ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Status Alat</strong>:</td>
                                                <td><?php echo $data_pemeliharaanrekap->status_alat ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_2">
                            <!-- ... Konten tab kedua ... -->
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div><!-- /.card-body -->
            </div>
            <!-- ./card -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>

<?php include viewPath('includes/footer'); ?>

<script>
    // ... Kode JavaScript lainnya ...
</script>
