<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php include viewPath('includes/header'); ?>
<!-- Content Header (Page header) -->
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"> <?php echo lang('dashboard');?></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"><?php echo lang('home');?></a></li>
              <li class="breadcrumb-item active"><?php echo lang('dashboard');?> v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
        <?php if (hasPermissions('inventaris_dashboard')): ?>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3><?php echo $inventaris; ?></h3> 

                <p><?php echo lang('dashboard_new_orders');?></p>
              </div>
              <div class="icon">
                <i class="ion-navicon" style="top: -10px;  width: 60px;"></i>
              </div>
            </div>
          </div>
          <?php endif ?>

          <?php if (hasPermissions('inventaris_peminjam_dashboard')): ?>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
              <h3><?php echo $inventaris; ?></h3> 

                <p><?php echo lang('dashboard_new_orders');?></p>
              </div>
              <div class="icon">
                <i class="ion-navicon" style="top: -10px;  width: 60px;"></i>
              </div>
            </div>
          </div>
          <?php endif ?>
          <!-- ./col -->
          <?php if (hasPermissions('pinjaman_dashboard')): ?>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?php echo $jurusan; ?></h3>

                <p><?php echo lang('dashboard_bounce_rate');?></p>
              </div>
              <div class="icon">
                <i class="nav-icon fas fa-university"></i>
              </div>
            </div>
          </div>
          <?php endif ?>
          <!-- ./col -->
          <?php if (hasPermissions('pinjaman_dashboard')): ?>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?php echo $ruangan; ?></h3>

                <p><?php echo lang('dashboard_user_register');?></p>
              </div>
              <div class="icon">
                <i class="nav-icon fas fa-university"></i>
              </div>
            </div>
          </div>
          <?php endif ?>
          <!-- ./col -->
          <?php if (hasPermissions('pinjaman_dashboard')): ?>
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?php echo $pinjaman; ?></h3>

                <p><?php echo lang('dashboard_unique_visitor');?></p>
              </div>
              <div class="icon">
                <i class="ion-person" style="top: -10px;  width: 60px;"></i>
              </div>
            </div>
          </div>

          <?php endif ?>
          <!-- ./col -->
</div>
              <!-- /.card-header -->
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
          </section>
          <!-- right col -->
          <br>
          <br>
          <br>
          <br>
          <div class="card-body pt-0">
              <div>
                <canvas id="tahun_pengajuan_chart"></canvas>
                </div>
              </div>
        </div>
        
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

<?php include viewPath('includes/footer'); ?>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo $url->assets ?>js/pages/dashboard.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Skrip untuk menginisialisasi dan menampilkan diagram batang menggunakan Chart.js -->
<script>
    var tahun_pengajuan_data = <?php echo $tahun_pengajuan_acc_data; ?>;
    var years = [];

    for (var year = new Date().getFullYear(); year <= 2030; year++) {
        years.push(year.toString());
    }

    var data = {
        labels: years,
        datasets: [{
            label: 'Diagram Pengajuan Alat Berdasarkan Tahun',
            data: years.map(year => {
                var matchingYearData = tahun_pengajuan_data.find(data => data.tahun_pengajuan === year);
                return matchingYearData ? matchingYearData.total : 0;
            }),
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
        }]
    };

    var options = {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            x: {
                beginAtZero: true
            },
            y: {
                beginAtZero: true
            }
        }
    };

    var ctx = document.getElementById('tahun_pengajuan_chart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: data,
        options: options
    });

    function resizeChart() {
        var canvas = document.getElementById('tahun_pengajuan_chart');
        var container = canvas.parentElement;

        canvas.width = container.clientWidth;
        canvas.height = container.clientHeight;

        myChart.update();
    }

    window.addEventListener('DOMContentLoaded', resizeChart);
    window.addEventListener('resize', resizeChart);
</script>

