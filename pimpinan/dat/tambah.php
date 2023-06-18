<?php
require '../../config/config.php';
require '../../config/koneksi.php';
?>
<!DOCTYPE html>
<html>
<?php
include '../../templates/head.php';
?>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <?php
        include '../../templates/navbar.php';
        ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?php
        include '../../templates/sidebar.php';
        ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Daftar Aktiva Tetap</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Beranda</a></li>
                                <li class="breadcrumb-item active">Daftar Aktiva Tetap</li>
                                <li class="breadcrumb-item active">Tambah Data</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- left column -->
                    <form class="form-horizontal" method="POST" action="" enctype="multipart/form-data">

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Horizontal Form -->
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Daftar Aktiva Tetap</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: white;">

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Departemen</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" data-placeholder="Pilih" name="jenis_aktiva" required="">
                                                    <option value="">-Pilih-</option>
                                                    <option value="HRGA">HRGA</option>
                                                    <option value="ENG">ENG</option>
                                                    <option value="HRM">HRM</option>
                                                    <option value="HSE">HSE</option>
                                                    <option value="CSR">CSR</option>
                                                    <option value="PLAN">PLAN</option>
                                                    <option value="PORT">PORT</option>
                                                    <option value="LOGISTIK">LOGISTIK</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Aktiva</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nama_aktiva" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No. Register</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="no_register" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi 1</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="lokasi1" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi 2</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="lokasi2" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Tanggal Perolehan</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="tanggal_perolehan" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Umur</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="umur" required="">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nilai Perolehan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nilai_perolehan" required="">
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.card-body -->

                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/dat/') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
                                        <button type="submit" name="submit" class="btn bg-gradient-primary float-right mr-2"><i class="fa fa-save"> Simpan</i></button>
                                    </div>
                                    <!-- /.card-footer -->

                                </div>

                            </div>
                            <!--/.col (left) -->
                        </div>

                    </form>

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <?php include_once "../../templates/footer.php"; ?>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <?php include_once "../../templates/script.php"; ?>

    <script>
    </script>
    <?php
    if (isset($_POST['submit'])) {
        $jenis_aktiva = $_POST['jenis_aktiva'];
        $nama_aktiva = $_POST['nama_aktiva'];
        $no_register = $_POST['no_register'];
        $lokasi1 = $_POST['lokasi1'];
        $lokasi2 = $_POST['lokasi2'];
        $tanggal_perolehan = $_POST['tanggal_perolehan'];
        $umur = $_POST['umur'];
        $nilai_perolehan = $_POST['nilai_perolehan'];

        $submit = $koneksi->query("INSERT INTO aktiva_tetap VALUES (
        NULL,
        '$jenis_aktiva',
        '$nama_aktiva',
        '$no_register',
        '$lokasi1',
        '$lokasi2',
        '$tanggal_perolehan',
        '$umur',
        '$nilai_perolehan'
        )");
        // var_dump($submit, $koneksi->error);
        // die();
        if ($submit) {
            $_SESSION['pesan'] = "Data Berhasil Ditambahkan";
            echo "<script>window.location.replace('../dat/');</script>";
        }
    }

    ?>
</body>

</html>