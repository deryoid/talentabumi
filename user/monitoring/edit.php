<?php
require '../../config/config.php';
require '../../config/koneksi.php';
?>
<!DOCTYPE html>
<html>
<?php
include '../../templates/head.php';

$id = $_GET['id'];
$data = $koneksi->query("SELECT * FROM monitoring WHERE id_monitoring = '$id'");
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
                            <h1 class="m-0 text-dark">Monitoring </h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Beranda</a></li>
                                <li class="breadcrumb-item active">Monitoring </li>
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
                                        <h3 class="card-title">Monitoring Invetaris</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: white;">

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" data-placeholder="Pilih" name="lokasi_rh">
                                                    <option value="<?= $row['lokasi_rh'] ?>"><?= $row['lokasi_rh'] ?></option>
                                                    <option value="MARABAHAN">MARABAHAN</option>
                                                    <option value="LIANG ANGGANG">LIANG ANGGANG</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Bagian/Letak</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_lokasi" id="id_lokasi" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $sd = $koneksi->query("SELECT * FROM lokasi ORDER BY id_lokasi DESC");
                                                    foreach ($sd as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_lokasi'] ?>" <?= $row['id_lokasi'] == $item['id_lokasi'] ? 'selected' : '' ?>><?= $item['bagian'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Inventaris</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nama_inventaris" value="<?= $row['nama_inventaris'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nomor Aset/Inventaris</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nomor_inventaris" value="<?= $row['nomor_inventaris'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Status Monitoring</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" data-placeholder="Pilih" name="status">
                                                    <option value="<?= $row['status'] ?>"><?= $row['lokasi_rh'] ?></option>
                                                    <option value="PEMELIHARAAN">PEMELIHARAAN</option>
                                                    <option value="KERUSAKAN">KERUSAKAN</option>
                                                    <option value="PENGHAPUSAN">PENGHAPUSAN</option>
                                                </select>
                                            </div>
                                        </div>


                                    </div>
                                    <!-- /.card-body -->

                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/monitoring/') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
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
        $lokasi_rh = $_POST['lokasi_rh'];
        $id_lokasi = $_POST['id_lokasi'];
        $nama_inventaris = $_POST['nama_inventaris'];
        $nomor_inventaris = $_POST['nomor_inventaris'];
        $status = $_POST['status'];

        $submit = $koneksi->query("UPDATE monitoring SET 
        lokasi_rh = '$lokasi_rh',
        id_lokasi = '$id_lokasi',
        nama_inventaris = '$nama_inventaris',
        nomor_inventaris = '$nomor_inventaris',
        status = '$status'
        WHERE 
        id_monitoring = '$id'
        ");


        if ($submit) {
            $_SESSION['pesan'] = "Data Berhasil Diubah";
            echo "<script>window.location.replace('../monitoring/');</script>";
        }
    }

    ?>
</body>

</html>