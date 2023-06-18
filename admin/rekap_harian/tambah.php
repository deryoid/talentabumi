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
                            <h1 class="m-0 text-dark">Rekap Harian</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Beranda</a></li>
                                <li class="breadcrumb-item active">Rekap Harian</li>
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
                                        <h3 class="card-title">Rekap Harian</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <div class="card-body" style="background-color: white;">

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Lokasi</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" data-placeholder="Pilih" name="lokasi_rh">
                                                    <option value="">-Pilih-</option>
                                                    <option value="MARABAHAN">MARABAHAN</option>
                                                    <option value="LIANG ANGGANG">LIANG ANGGANG</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Tanggal Pembuatan</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="tanggal_pembuatan">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Departemen</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="departemen_rh">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PI</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_pi" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $k = $koneksi->query("SELECT * FROM pi");
                                                    foreach ($k as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_pi'] ?>"><?= $item['no_pi'] ?></option>

                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PB</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_pp" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $k = $koneksi->query("SELECT * FROM pp");
                                                    foreach ($k as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_pp'] ?>"><?= $item['no_pp'] ?></option>

                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No FPPK</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_fppk" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $k = $koneksi->query("SELECT * FROM fppk");
                                                    foreach ($k as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_fppk'] ?>"><?= $item['no_fppk'] ?></option>

                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PP</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_pb" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $k = $koneksi->query("SELECT * FROM pb");
                                                    foreach ($k as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_pb'] ?>"><?= $item['no_pb'] ?></option>

                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No FPPP</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_fppp" data-placeholder="Pilih" style="width: 100%;">
                                                    <option value="0"></option>
                                                    <?php
                                                    $k = $koneksi->query("SELECT * FROM fppp");
                                                    foreach ($k as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_fppp'] ?>"><?= $item['no_fppp'] ?></option>

                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Kebutuhan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nama_kebutuhan">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">RP.</label>
                                            <div class="col-sm-10">
                                                <input type="number" class="form-control" name="rp">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="keterangan_rh">
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /.card-body -->

                                    <div class="card-footer" style="background-color: white;">
                                        <a href="<?= base_url('admin/rekap_harian/') ?>" class="btn bg-gradient-secondary float-right"><i class="fa fa-arrow-left"> Batal</i></a>
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
        $lokasi_rh = $_POST['lokasi_rh'];
        $tanggal_pembuatan = $_POST['tanggal_pembuatan'];
        $departemen_rh = $_POST['departemen_rh'];
        $id_pi = $_POST['id_pi'];
        $id_pb = $_POST['id_pb'];
        $id_fppk = $_POST['id_fppk'];
        $id_pp = $_POST['id_pp'];
        $id_fppp = $_POST['id_fppp'];
        $nama_kebutuhan = $_POST['nama_kebutuhan'];
        $rp = $_POST['rp'];
        $keterangan_rh = $_POST['keterangan_rh'];

        $submit = $koneksi->query("INSERT INTO rekap_harian VALUES (
        NULL,
        '$lokasi_rh',
        '$tanggal_pembuatan',
        '$departemen_rh',
        '$id_pi',
        '$id_pb',
        '$id_fppk',
        '$id_pp',
        '$id_fppp',
        '$nama_kebutuhan',
        '$rp',
        '$keterangan_rh'
        )");
        // var_dump($submit, $koneksi->error);
        // die();
        if ($submit) {
            $_SESSION['pesan'] = "Data Berhasil Ditambahkan";
            echo "<script>window.location.replace('../rekap_harian/');</script>";
        }
    }

    ?>
</body>

</html>