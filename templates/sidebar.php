<aside class="main-sidebar sidebar-light-green elevation-2">
  <!-- dark-primary  -->
  <!-- Brand Logo -->
  <a href="#" class="brand-link text-center">
    <img src="<?= base_url() ?>/assets/dist/img/logo.jpeg" style="width: 50px; justify-content: center; margin: auto; " alt="#" class="" style="opacity: .8"><br>
    <span class="brand-text font-weight-light"><b>PT. TALENTA BUMI</b></span>
  </a>
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 d-flex">
      <div class="image">
        <img src="<?= base_url() ?>/assets/dist/img/avatar6.png" class="img-circle elevation-1" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">
          <i>
            <?php
            if ($_SESSION['role'] == "Administrator") {
              echo "Administrator";
            } elseif ($_SESSION['role'] == "User") {
              echo $_SESSION['nama'];
            }
            ?>
          </i>
        </a>
      </div>
    </div>




    <?php if ($_SESSION['role'] == "Administrator") { ?>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?= base_url('admin/index') ?>" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Beranda
              </p>
            </a>
          </li>

          <!-- <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-box"></i>
              <p>
                Data Master
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= base_url('admin/user') ?>" class="nav-link">
                  <i class="fas fa-circle nav-icon"></i>
                  <p>User</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= base_url('admin/site') ?>" class="nav-link">
                  <i class="fas fa-chalkboard nav-icon"></i>
                  <p>Site</p>
                </a>
              </li>
            </ul>
          </li> -->

          <li class="nav-item">
            <a href="<?= base_url('admin/fppk') ?>" class="nav-link">
              <i class="fas fa-warehouse nav-icon"></i>
              <p>FPPK</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/pb') ?>" class="nav-link">
              <i class="fas fa-box nav-icon"></i>
              <p>Permintaan Barang</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/fp3') ?>" class="nav-link">
              <i class="fas fa-wrench nav-icon"></i>
              <p>FP3</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/pi') ?>" class="nav-link">
              <i class="fas fa-chart-line nav-icon"></i>
              <p>Permintaan Investasi</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/dat') ?>" class="nav-link">
              <i class="fas fa-file-archive nav-icon"></i>
              <p>Daftar Aktiva Tetap</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('admin/rekap_harian') ?>" class="nav-link">
              <i class="fas fa-pen-alt nav-icon"></i>
              <p>Rekap Harian</p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->



    <?php } elseif ($_SESSION['role'] == "User") { ?>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
              with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?= base_url('masyarakat/index') ?>" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user-edit"></i>
              <p>
                Profil
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= base_url('masyarakat/biodata') ?>" class="nav-link">
                  <i class="nav-icon fas fa-user"></i>
                  <p>
                    Biodata
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('masyarakat/biodata/ubahpw') ?>" class="nav-link">
                  <i class="nav-icon fas fa-lock"></i>
                  <p>
                    Ganti Password
                  </p>
                </a>
              </li>
            </ul>
          </li>


          <?php
          $data = $koneksi->query("SELECT * FROM masyarakat WHERE id_masyarakat = '$_SESSION[id_masyarakat]'")->fetch_array();
          if ($data['status'] == 'Tidak Aktif' or $data['status'] ==  NULL) {
          } else {
          ?>
            <li class="nav-item">
              <a href="<?= base_url('masyarakat/pendaftaran') ?>" class="nav-link">
                <i class="nav-icon fas fa-address-card"></i>
                <p>
                  Pendaftaran/Pengajuan
                </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="<?= base_url('masyarakat/pencarikerja') ?>" class="nav-link">
                <i class="nav-icon fas fa-search"></i>
                <p>
                  Pencari Kerja
                </p>
              </a>
            </li>
          <?php } ?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->

    <?php } elseif ($_SESSION['role'] == "Owner") { ?>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?= base_url('owner/index') ?>" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Home
              </p>
            </a>
          </li>


          <li class="nav-item">
            <a href="<?= base_url('owner/antrian') ?>" class="nav-link">
              <i class="nav-icon fas fa-clock"></i>
              <p>
                Antrian Baru
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('owner/prosesantrian') ?>" class="nav-link">
              <i class="nav-icon fas fa-tools"></i>
              <p>
                Proses Pengerjaan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('owner/prosespengambilan') ?>" class="nav-link">
              <i class="nav-icon fas fa-car"></i>
              <p>
                Pengambilan
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    <?php } ?>
  </div>
  <!-- /.sidebar -->
</aside>