<?php
require 'config/config.php';
require 'config/koneksi.php';
?>
<!DOCTYPE html>
<html>
<?php
include 'templates/head.php';
?>

<body class="hold-transition sidebar-mini layout-fixed sidebar-collapse">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-light  navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->


    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-green elevation-2" style="background-color: dark;">
      <!-- dark-primary  -->
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
        <img src="<?= base_url() ?>/assets/dist/img/logo.jpeg" style="width: 30px;" class="brand-image" style="opacity: 12">
        <span class="brand-text font-weight-light" style="color: white;"><b>DISNAKER</b></span>
      </a>
      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <!-- <div class="user-panel mt-3 pb-3 d-flex">
      <div class="image">
        <img src="<?= base_url() ?>/assets/dist/img/logo.jpeg" class="img-circle elevation-1" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">
          <i>
            
          </i>
        </a>
      </div>
    </div> -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <div class="content-header">
        <div class="container-fluid">
          <div class="row">


          </div>
        </div>
      </div>

      <!-- Main content -->
      <section>
        <div class="container-fluid">
          <!-- Small boxes (Stat box) -->
          <div class="col-12">
            <div class="row">
              <div class="col-12 col-md-6">
                <div class="card">
                  <div class="card-body">
                    <div class="card-body login-card-body">
                      <h3 align="center">
                        <img class="" src="<?= base_url() ?>/assets/dist/img/logo.jpeg" width="450px;" height="240px;">
                      </h3>
                      <h2 style="color:blue; font-family: system-ui; text-align:center;"><b>PT. TALENTA BUMI</b><br>
                      </h2>

                      <!-- <p class="login-box-msg">Sign in to start your session</p> -->
                      <?php if (isset($_SESSION['pesan']) && $_SESSION['pesan'] <> '') { ?>
                        <div class="alert alert-danger success-alert" role="alert">
                          <small><i class="fa fa-check"> <?= $_SESSION['pesan']; ?></i></small>
                        </div>
                      <?php $_SESSION['pesan'] = '';
                      } ?>

                      <form action="" method="POST">
                        <div class="input-group mb-3">
                          <input type="text" class="form-control" name="username" placeholder="Username" required="">
                          <div class="input-group-append">
                            <div class="input-group-text">
                              <span class="fas fa-user-circle"></span>
                            </div>
                          </div>
                        </div>
                        <div class="input-group mb-3">
                          <input type="password" class="form-control" name="password" id="pass" placeholder="Password" required="">
                          <div class="input-group-append">
                            <div class="input-group-text" id="lihatpass">
                              <span class="fas fa-eye" title="Lihat Password" onclick="change();"></span>
                            </div>
                          </div>
                        </div>

                        <button type="submit" name="login" class="btn btn-default btn-block bg-gradient-blue btn-xm"><i class="fa fa-sign-in-alt mr-1"></i>Login</button>
                      </form>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6">
                <div class="card">
                  <div class="card-body">
                    <img src="<?= base_url() ?>/assets/dist/img/bg.jpeg" width="100%" class=" elevation-1" alt="User Image">
                  </div>
                </div>
              </div>
            </div>
          </div>


        </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->

    </div>
    <!-- /.content-wrapper -->
    <?php
    include 'templates/footer.php';
    ?>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- Script -->
  <?php
  include 'templates/script.php';
  ?>

  <script>
    $(function() {
      setTimeout(function() {
        $(".success-alert").slideUp();
      }, 1500);
    });

    function change() {
      var x = document.getElementById('pass').type;

      if (x == 'password') {
        document.getElementById('pass').type = 'text';
        document.getElementById('lihatpass').innerHTML = '<span class="fas fa-eye" title="Lihat Password" style="color: blue;" id="lihatpass" onclick="change();"></span>';
      } else {
        document.getElementById('pass').type = 'password';
        document.getElementById('lihatpass').innerHTML = '<span class="fas fa-eye" title="Lihat Password" id="lihatpass" onclick="change();"></span>';
      }
    }
  </script>
</body>

</html>
<?php
function tgl_indo($tanggal)
{
  $bulan = array(
    1 =>   'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  );
  $pecahkan = explode('-', $tanggal);

  // variabel pecahkan 0 = tanggal
  // variabel pecahkan 1 = bulan
  // variabel pecahkan 2 = tahun

  return $pecahkan[2] . ' ' . $bulan[(int) $pecahkan[1]] . ' ' . $pecahkan[0];
}

?>

<?php
include 'config/koneksi.php';
if (isset($_POST['login'])) {
  $user = mysqli_real_escape_string($koneksi, $_POST['username']);
  $pass = mysqli_real_escape_string($koneksi, $_POST['password']);
  $pass = md5($pass);

  $query = mysqli_query($koneksi, "SELECT * FROM user  
                     WHERE username = '$user' AND password = '$pass'");
  $row = mysqli_fetch_array($query);

  $username   = $row['username'];
  $password   = $row['password'];
  $id_user    = $row['id_user'];
  $role       = $row['role'];



  if ($user == $username && $pass == $password) {

    $_SESSION['id_user']    = $id_user;
    $_SESSION['username']   = $username;
    $_SESSION['role']       = $role;


    if ($role == "Administrator") {
      echo "<script>window.location.replace('admin/');</script>";
    } elseif ($role == "Masyarakat") {
      $ptg = $koneksi->query("SELECT * FROM masyarakat AS p 
      LEFT JOIN user AS u ON p.id_user = u.id_user
      WHERE p.id_user = '$_SESSION[id_user]'
      ")->fetch_array();
      $_SESSION['nama_masyarakat']  = $ptg['nama_masyarakat'];
      $_SESSION['id_masyarakat'] = $ptg['id_masyarakat'];
      echo "<script>window.location.replace('masyarakat/');</script>";
    } elseif ($role == "Owner") {
      echo "<script>window.location.replace('kadis/');</script>";
    }
  } else {
    $_SESSION['pesan'] = 'Username atau Password Tidak Ditemukan';
    echo "<script>window.location.replace('login');</script>";
  }
}


?>