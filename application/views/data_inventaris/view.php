<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>


<!-- Content Header (Page header) -->
<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Detail Data Inventaris</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
			<li class="breadcrumb-item"><a href="<?php echo url('/dashboard') ?>"><?php echo lang('home') ?></a></li>
              <li class="breadcrumb-item"><a href="<?php echo url('/datainventaris') ?>"><?php echo lang('data_inventaris') ?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('view_inventaris') ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
<!-- Main content -->
<!-- Main content -->
<section class="content">

<div class="row">
          <div class="col-12">
            <!-- Custom Tabs -->
            <div class="card">
              <div class="card-header d-flex p-0">
                <h3 class="card-title p-3">Detail Data Inventaris</h3>
                <ul class="nav nav-pills ml-auto p-2">
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
				  <div class="row">
      		<div class="col-sm-10" style="padding-left: 50px;">
      			<table class="table table-bordered table-striped">
      				<tbody>
      					<tr>
      						<td width="160"><strong>Nama Barang</strong>:</td>
      						<td><?php echo $data_inventaris->nama_barang ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Kode Barang</strong>:</td>
      						<td><?php echo $data_inventaris->kode_barang ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Merek</strong>:</td>
      						<td><?php echo $data_inventaris->merek ?></td>
      					</tr>
						  <tr>
      						<td width="160"><strong>Kategori</strong>:</td>
      						<td><?php echo $data_inventaris->kategori ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Asal Usul</strong>:</td>
      						<td><?php echo $data_inventaris->asal_usul ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Tahun Peredaran</strong>:</td>
      						<td><?php echo $data_inventaris->tahun_peredaran ?></td>
      					</tr>
						  <tr>
      						<td width="160"><strong>Masa Hidup Alat</strong>:</td>
      						<td><?php echo $data_inventaris->masa_hidup_alat ?></td>
      					</tr>
						  <tr>
      						<td width="160"><strong>Total Alat</strong>:</td>
      						<td><?php echo $data_inventaris->total_alat ?></td>
      					</tr>
						  <tr>
      						<td width="160"><strong>Stock Pinjam</strong>:</td>
      						<td><?php echo $data_inventaris->stock ?></td>
      					</tr>
						  <tr>
      						<td width="160"><strong>Jumlah Alat Yang Dipasang</strong>:</td>
      						<td><?php echo $data_inventaris->dipasang ?></td>
      					</tr>
      					<tr>
      						<td width="160"><strong>Harga Barang</strong>:</td>
      						<td><?php echo $data_inventaris->harga_barang ?></td>
      					</tr>
                          
      					<tr>
      						<td width="160"><strong>Keterangan</strong>:</td>
      						<td><?php echo $data_inventaris->keterangan ?></td>
      					</tr>
      				</tbody>
      			</table>
      		</div>
      	</div>
                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="tab_2">
				  <table id="dataTable1" class="table table-bordered table-striped">
					<thead>
					<tr>
						<th><?php echo lang('id') ?></th>
						<th><?php echo lang('activity_ip_address') ?></th>
						<th><?php echo lang('activity_message') ?></th>
						<th><?php echo lang('activity_datetime') ?></th>
						<th><?php echo lang('action') ?></th>
					</tr>
					</thead>
					<tbody>

					<?php foreach ($User->activity as $row): ?>
						<tr>
						<td width="60"><?php echo $row->id ?></td>
						<td><?php echo !empty($row->ip_address)?'<a href="'.url('activity_logs/index?ip='.urlencode($row->ip_address)).'">'.$row->ip_address.'</a>':'N.A' ?></td>
						<td>
							<a href="<?php echo url('activity_logs/view/'.$row->id) ?>"><?php echo $row->title ?></a>
						</td>
						<td><?php echo date('d M, Y', strtotime($row->created_at)) ?></td>
						<td>
							<a href="<?php echo url('activity_logs/view/'.$row->id) ?>" class="btn btn-sm btn-default" title="View Activity" data-toggle="tooltip"><i class="fa fa-eye"></i></a>
						</td>
						</tr>
					<?php endforeach ?>

					</tbody>
				</table>
                  </div>
				  <!-- NEW TAB PANE -->
				  <br>
				  <br>
                  <!-- ... Previous code ... -->

		<div class="col-sm-10" style="padding-left: 50px;">
			<h4>Kode Alat Pinjam</h4>
				<table id="dataTable1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th style="width: 10%;">No</th>
							<th>Kode Alat</th>
						</tr>
					</thead>
					<tbody>
            <?php
            for ($i = 1; $i <= $data_inventaris->stock; $i++) {
                // Construct the kode_alat with the format "xxx.xxx.xxx-Px"
                $kode_alat = $data_inventaris->kode_barang . '-' . $i . '-P' . $i;
            ?>
                <tr>
                    <td><?php echo $i ?></td>
                    <td><?php echo $kode_alat ?></td>
                </tr>
            <?php
            }
            ?>
			
        </tbody>
		</table>
		</div>
		<br>
		<br>
		<div class="col-sm-10" style="padding-left: 50px;">
			<h4>Kode Alat Dipasang</h4>
				<table id="dataTable1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th style="width: 10%;">No</th>
							<th>Kode Alat</th>
						</tr>
					</thead>
					<tbody>
            <?php
            for ($i = 1; $i <= $data_inventaris->dipasang; $i++) {
                // Construct the kode_alat with the format "xxx.xxx.xxx-Px"
                $kode_alat = $data_inventaris->kode_barang . '-' . $i . '-D' . $i;
            ?>
                <tr>
                    <td><?php echo $i ?></td>
                    <td><?php echo $kode_alat ?></td>
                </tr>
            <?php
            }
            ?>
        </tbody>
		</table>
		</div>
<!-- ... Rest of the code ... -->

                </div>
				
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- ./card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- END CUSTOM TABS -->

</section>

<?php include viewPath('includes/footer'); ?>

<script>
	$('#dataTable1').DataTable({
    "order": []
  });
</script>
