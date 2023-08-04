<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>


<ul class="nav nav-pills nav-sidebar flex-column nav-legacy" data-widget="treeview" role="menu" data-accordion="false">

<?php if (hasPermissions('dashboard_list')): ?>
  <li class="nav-item">
    <a href="<?php echo url('dashboard') ?>" class="nav-link <?php echo ($page->menu == 'dashboard') ? 'active' : '' ?>">
      <i class="nav-icon fas fa-tachometer-alt"></i>
      <p>
        <?php echo lang('dashboard') ?>
      </p>
    </a>
  </li>
  <?php endif ?>
  

  <?php if (hasPermissions('inventaris_list')): ?>
  <li class="nav-item">
    <a href="<?php echo url('datainventaris') ?>" class="nav-link <?php echo ($page->menu == 'data_inventaris') ? 'active' : '' ?>">
      <i class="nav-icon fas fa-list"></i>
      <p>
        <?php echo lang('data_inventaris') ?>
      </p>
    </a>
  </li>
  <?php endif ?>


  <?php if (hasPermissions('pemeliharaan_list')) : ?>
    <li class="nav-item">
      <a href="<?php echo url('datapemeliharaan') ?>" class="nav-link <?php echo ($page->menu == 'datapemeliharaan') ? 'active' : '' ?>">
      <i class="nav-icon fas fas fa-wrench"></i>
        <p>
          <?php echo lang('data_pemeliharaan') ?>
        </p>
      </a>
    </li>
  <?php endif ?>

  <?php if (hasPermissions('pengajuan_list') || hasPermissions('acc_pengajuan_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($page->menu == 'datapengajuan' || $page->menu == 'datariwayatpengajuan') ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($page->menu == 'datapengajuan' || $page->menu == 'datariwayatpengajuan') ? 'active' : ''; ?>">
      <i class="nav-icon fas fas fa fa-book"></i>
      <p>
        <?php echo lang('pengajuan') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('pengajuan_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datapengajuan') ?>" class="nav-link <?php echo ($page->menu == 'datapengajuan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('data_pengajuan') ?> </p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('acc_pengajuan_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('accpengajuan') ?>" class="nav-link <?php echo ($page->menu == 'datariwayatpengajuan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('approve_pengajuan') ?></p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>


<?php if (hasPermissions('pengajuan_kajur_list') || hasPermissions('acc_pengajuan_kajur_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($page->menu == 'datapengajuankajur' || $page->menu == 'datariwayatpengajuankajur') ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($page->menu == 'datapengajuankajur' || $page->menu == 'datariwayatpengajuankajur') ? 'active' : ''; ?>">
      <i class="nav-icon fas fas fa fa-book"></i>
      <p>
        <?php echo lang('pengajuan') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('pengajuan_kajur_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datapengajuankajur') ?>" class="nav-link <?php echo ($page->menu == 'datapengajuankajur') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('data_pengajuan') ?> </p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('acc_pengajuan_kajur_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('accpengajuankajur') ?>" class="nav-link <?php echo ($page->menu == 'datariwayatpengajuankajur') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('approve_pengajuan') ?></p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>

  <?php if (hasPermissions('ruangan_list') || hasPermissions('jurusan_list') || hasPermissions('ruangan_pindah_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($page->menu == 'dataruangan' || $page->menu == 'datajurusan' || $page->menu == 'dataruanganpindah') ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($page->menu == 'dataruangan' || $page->menu == 'datajurusan' || $page->menu == 'dataruanganpindah') ? 'active' : ''; ?>">
      <i class="nav-icon fas fa-university"></i>
      <p>
        <?php echo lang('data_Prasarana') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('ruangan_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('dataruangan') ?>" class="nav-link <?php echo ($page->menu == 'dataruangan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('data_ruangan') ?> </p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('jurusan_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datajurusan') ?>" class="nav-link <?php echo ($page->menu == 'datajurusan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('data_jurusan') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('ruangan_pindah_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('dataruanganpindah') ?>" class="nav-link <?php echo ($page->menu == 'dataruanganpindah') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('data_pindah_inventaris') ?> </p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>

<?php
$isChildMenuActive = ($page->menu == 'datalaporkankerusakan') || ($page->menu == 'dataperbaikan') || ($page->menu == 'datalaporkankerusakanpengguna');
$isParentMenuActive = $isChildMenuActive;
?>

<?php if (hasPermissions('laporkan_kerusakan_list') || hasPermissions('history_konfirmasi_list') || hasPermissions('laporkan_kerusakan_pengguna_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($isParentMenuActive) ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($isParentMenuActive) ? 'active' : ''; ?>">
      <i class="nav-icon fas fa-exclamation-circle"></i>
      <p>
        <?php echo lang('data_laporkan_kerusakan') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('laporkan_kerusakan_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datalaporkankerusakan') ?>" class="nav-link <?php echo ($page->menu == 'datalaporkankerusakan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('daftar_laporan') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('laporkan_kerusakan_pengguna_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datalaporkankerusakanpengguna') ?>" class="nav-link <?php echo ($page->menu == 'datalaporkankerusakanpengguna') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('daftar_laporan') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('history_konfirmasi_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('perbaikan') ?>" class="nav-link <?php echo ($page->menu == 'dataperbaikan') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('history_laporan') ?></p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>

  <?php
// Check if any of the child menu items is active
$isChildMenuActive = ($page->menu == 'datapinjaman') || ($page->menu == 'datariwayat') || ($page->menu == 'datapeminjam');

// Parent dropdown menu will remain active if any child menu is active
$isParentMenuActive = $isChildMenuActive;
?>

<?php if (hasPermissions('pinjaman_list') || hasPermissions('history_list') || hasPermissions('peminjam_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($isParentMenuActive) ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($isParentMenuActive) ? 'active' : ''; ?>">
      <i class="nav-icon fas fa-user"></i>
      <p>
        <?php echo lang('data_pinjaman') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('pinjaman_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datapinjaman') ?>" class="nav-link <?php echo ($page->menu == 'datapinjaman') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('daftar_pinjaman') ?> </p>
          </a>
        </li>
      <?php endif ?>
      <?php if (hasPermissions('peminjam_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('datapeminjam') ?>" class="nav-link <?php echo ($page->menu == 'datapeminjam') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('daftar_pinjaman') ?> </p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('history_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('historys') ?>" class="nav-link <?php echo ($page->menu == 'datariwayat') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('history_pinjaman') ?></p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>


  <?php
// Check if any of the child menu items is active
$isChildMenuActive = ($page->menu == 'users') || ($page->menu == 'activity_logs') || ($page->menu == 'roles') || ($page->menu == 'permissions') || ($page->menu == 'backup');

// Parent dropdown menu will remain active if any child menu is active
$isParentMenuActive = ($page->menu == 'settings') || $isChildMenuActive;
?>

<?php if (hasPermissions('activity_log_list') || hasPermissions('roles_list') || hasPermissions('permissions_list') || hasPermissions('backup_db') || hasPermissions('users_list')) : ?>
  <li class="nav-item has-treeview <?php echo ($isParentMenuActive) ? 'menu-open' : ''; ?>">
    <a href="#" class="nav-link <?php echo ($isParentMenuActive) ? 'active' : ''; ?>">
      <i class="nav-icon fas fa-cog"></i>
      <p>
        <?php echo lang('settings') ?>
        <i class="right fas fa-angle-left"></i>
      </p>
    </a>
    <ul class="nav nav-treeview">
      <?php if (hasPermissions('users_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('users') ?>" class="nav-link <?php echo ($page->menu == 'users') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('users') ?> </p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('activity_log_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('activity_logs') ?>" class="nav-link <?php echo ($page->menu == 'activity_logs') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('activity_logs') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('roles_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('roles') ?>" class="nav-link <?php echo ($page->menu == 'roles') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('manage_roles') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('permissions_list')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('permissions') ?>" class="nav-link <?php echo ($page->menu == 'permissions') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('manage_permissions') ?></p>
          </a>
        </li>
      <?php endif ?>

      <?php if (hasPermissions('backup_db')) : ?>
        <li class="nav-item">
          <a href="<?php echo url('backup') ?>" class="nav-link <?php echo ($page->menu == 'backup') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p><?php echo lang('backup') ?></p>
          </a>
        </li>
      <?php endif ?>
    </ul>
  </li>
<?php endif ?>



  <?php if (hasPermissions('company_settings')) : ?>
    <li class="nav-item has-treeview <?php echo ($page->menu == 'settings') ? 'menu-open' : '' ?>">
      <a href="#" class="nav-link  <?php echo ($page->menu == 'settings') ? 'active' : '' ?>">
        <i class="nav-icon fas fa-cog"></i>
        <p>
          <?php echo lang('settings') ?>
          <i class="right fas fa-angle-left"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="<?php echo url('settings/general') ?>" class="nav-link <?php echo ($page->submenu == 'general') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p> <?php echo lang('general_setings') ?> </p>
          </a>
        </li>
        

        <li class="nav-item">
          <a href="<?php echo url('settings/company') ?>" class="nav-link <?php echo ($page->submenu == 'company') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p> <?php echo lang('company_setings') ?> </p>
          </a>
        </li>

        <li class="nav-item">
          <a href="<?php echo url('settings/email_templates') ?>" class="nav-link <?php echo ($page->submenu == 'email_templates') ? 'active' : '' ?>">
            <i class="far fa-circle nav-icon"></i>
            <p> <?php echo lang('manage_email_template') ?></p>
          </a>
        </li>
      </ul>
    </li>
  <?php endif ?>


</ul>