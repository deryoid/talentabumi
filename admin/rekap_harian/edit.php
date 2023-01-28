<?php
require '../../config/config.php';
require '../../config/koneksi.php';
?>
<!DOCTYPE html>
<html>
<?php
include '../../templates/head.php';

$id = $_GET['id'];
$data = $koneksi->query("SELECT * FROM rekap_harian WHERE id_rh = '$id'");
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
                                            <label class="col-sm-2 col-form-label">Tanggal Pembuatan</label>
                                            <div class="col-sm-10">
                                                <input type="date" class="form-control" name="tanggal_pembuatan" value="<?= $row['tanggal_pembuatan'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Departemen</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="departemen_rh" value="<?= $row['departemen_rh'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PI</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_pi" id="id_pi" data-placeholder="Pilih" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sd = $koneksi->query("SELECT * FROM pi ORDER BY id_pi DESC");
                                                    foreach ($sd as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_pi'] ?>" <?= $row['id_pi'] == $item['id_pi'] ? 'selected' : '' ?>><?= $item['no_pi'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PB</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_pb" id="id_pb" data-placeholder="Pilih" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sd = $koneksi->query("SELECT * FROM pb ORDER BY id_pb DESC");
                                                    foreach ($sd as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_pb'] ?>" <?= $row['id_pb'] == $item['id_pb'] ? 'selected' : '' ?>><?= $item['no_pb'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No FPPK</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_fppk" id="id_fppk" data-placeholder="Pilih" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sd = $koneksi->query("SELECT * FROM fppk ORDER BY id_fppk DESC");
                                                    foreach ($sd as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_fppk'] ?>" <?= $row['id_fppk'] == $item['id_fppk'] ? 'selected' : '' ?>><?= $item['no_fppk'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No PP</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="no_pp" value="<?= $row['no_pp'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">No FPPP</label>
                                            <div class="col-sm-10">
                                                <select class="form control select2" name="id_fppp" id="id_fppp" data-placeholder="Pilih" style="width: 100%;" required>
                                                    <option value=""></option>
                                                    <?php
                                                    $sd = $koneksi->query("SELECT * FROM fppp ORDER BY id_fppp DESC");
                                                    foreach ($sd as $item) {
                                                    ?>
                                                        <option value="<?= $item['id_fppp'] ?>" <?= $row['id_fppp'] == $item['id_fppp'] ? 'selected' : '' ?>><?= $item['no_fppp'] ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Nama Kebutuhan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nama_kebutuhan" value="<?= $row['nama_kebutuhan'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">RP.</label>
                                            <div class="col-sm-10">
                                                <input type="number" class="form-control" name="rp" value="<?= $row['rp'] ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Keterangan</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="keterangan_rh" value="<?= $row['keterangan_rh'] ?>">
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


    <?php
    if (isset($_POST['submit'])) {
        $lokasi_rh = $_POST['lokasi_rh'];
        $tanggal_pembuatan = $_POST['tanggal_pembuatan'];
        $departemen_rh = $_POST['departemen_rh'];
        $id_pi = $_POST['id_pi'];
        $id_pb = $_POST['id_pb'];
        $id_fppk = $_POST['id_fppk'];
        $no_pp = $_POST['no_pp'];
        $id_fppp = $_POST['id_fppp'];
        $nama_kebutuhan = $_POST['nama_kebutuhan'];
        $rp = $_POST['rp'];
        $keterangan_rh = $_POST['keterangan_rh'];


        $submit = $koneksi->query("UPDATE rekap_harian SET 
        lokasi_rh = '$lokasi_rh',
        tanggal_pembuatan = '$tanggal_pembuatan',
        departemen_rh = '$departemen_rh',
        id_pi = '$id_pi',
        id_pb = '$id_pb',
        id_fppk = '$id_fppk',
        no_pp = '$no_pp',
        id_fppp = '$id_fppp',
        nama_kebutuhan = '$nama_kebutuhan',
        rp = '$rp',
        keterangan_rh = '$keterangan_rh'
        WHERE 
        id_rh = '$id'
        ");


        if ($submit) {
            $_SESSION['pesan'] = "Data Berhasil Diubah";
            echo "<script>window.location.replace('../rekap_harian/');</script>";
        }
    }

    ?>
</body>

</html>