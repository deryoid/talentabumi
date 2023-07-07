<?php
require '../../config/config.php';
require '../../config/koneksi.php';
?>
<!DOCTYPE html>
<html>
<?php
include '../../templates/head.php';

$id = $_GET['id'];
$data = $koneksi->query("SELECT * FROM aktiva_tetap WHERE id_aktiva = '$id'");
$row = $data->fetch_array();
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
                                <li class="breadcrumb-item active">Edit Data</li>
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
                                                    <option value="<?= $row['jenis_aktiva'] ?>"><?= $row['jenis_aktiva'] ?></option>
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
                                                <input type="text" class="form-control" name="nama_aktiva" value="<?= $row['nama_aktiva'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Jumlah</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="jumlah" value="<?= $row['jumlah'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Satuan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="satuan" value="<?= $row['satuan'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No. Register</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="no_register" value="<?= $row['no_register'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi 1</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="lokasi1" value="<?= $row['lokasi1'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi 2</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="lokasi2" value="<?= $row['lokasi2'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Tanggal Perolehan</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="tanggal_perolehan" value="<?= $row['tanggal_perolehan'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nilai Perolehan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nilai_perolehan" value="<?= $row['nilai_perolehan'] ?>">
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


    <?php
    if (isset($_POST['submit'])) {
        $jenis_aktiva = $_POST['jenis_aktiva'];
        $nama_aktiva = $_POST['nama_aktiva'];
        $jumlah = $_POST['jumlah'];
        $satuan = $_POST['satuan'];
        $no_register = $_POST['no_register'];
        $lokasi1 = $_POST['lokasi1'];
        $lokasi2 = $_POST['lokasi2'];
        $tanggal_perolehan = $_POST['tanggal_perolehan'];
        $nilai_perolehan = $_POST['nilai_perolehan'];


        $submit = $koneksi->query("UPDATE aktiva_tetap SET 
        jenis_aktiva = '$jenis_aktiva',
        nama_aktiva = '$nama_aktiva',
        jumlah = '$jumlah',
        satuan = '$satuan',
        no_register = '$no_register',
        lokasi1 = '$lokasi1',
        lokasi2 = '$lokasi2',
        tanggal_perolehan = '$tanggal_perolehan',
        nilai_perolehan = '$nilai_perolehan'
        WHERE 
        id_aktiva = '$id'
        ");


        if ($submit) {
            $_SESSION['pesan'] = "Data Berhasil Diubah";
            echo "<script>window.location.replace('../dat/');</script>";
        }
    }

    ?>
</body>

</html>