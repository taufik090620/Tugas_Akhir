<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<?php include viewPath('includes/header'); ?>

<!-- ... Bagian Header dan Navigasi ... -->

<!-- ... Bagian Header Konten ... -->

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
                                                <td><?php echo $data_pemeliharaan->nama_barang ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Jumlah Alat Baik</strong>:</td>
                                                <td><?php echo $data_pemeliharaan->dipasang ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Jumlah Alat Rusak</strong>:</td>
                                                <td><?php echo $data_pemeliharaan->jumlah_rusak ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Jumlah Alat Hilang</strong>:</td>
                                                <td><?php echo $data_pemeliharaan->jumlah_hilang ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Tanggal Pemeliharaan</strong>:</td>
                                                <td><?php echo $data_pemeliharaan->tanggal_pemeliharaan ?></td>
                                            </tr>
                                            <tr>
                                                <td width="160"><strong>Keterangan</strong>:</td>
                                                <td><?php echo $data_pemeliharaan->keterangan ?></td>
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
