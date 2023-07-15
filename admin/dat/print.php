<?php
include '../../config/config.php';
include '../../config/koneksi.php';

$no = 1;

$bln = array(
    '01' => 'Januari',
    '02' => 'Februari',
    '03' => 'Maret',
    '04' => 'April',
    '05' => 'Mei',
    '06' => 'Juni',
    '07' => 'Juli',
    '08' => 'Agustus',
    '09' => 'September',
    '10' => 'Oktober',
    '11' => 'November',
    '12' => 'Desember'
);
if (isset($_POST['c1'])) {
    $jenis_aktiva = $_POST['jenis_aktiva'];
    $nama_aktiva = $_POST['nama_aktiva'];
    $tgl1 = $_POST['tgl1'];
    $tgl2 = $_POST['tgl2'];
}

?>

<script type="text/javascript">
    window.print();
</script>

<!DOCTYPE html>
<html>

<head>
    <title>LAPORAN DATA </title>
</head>

<body>

    <p align="center"><b>
            <img src="<?= base_url('assets/dist/img/logo.jpeg') ?>" align="left" width="140" height="100">
            <font size="10">PT. TALENTA BUMI</font>
            <br>
            <font size="2">Site Office : Kel. Lepasan, Desa.Sungai Tampung, Kecamatan Bakumpai,
                <br>
                Kabupaten Barito Kuala, Kalimantan Selatan. 0511 – 4799344
            </font>
            <br>
            <hr size="1px" color="black">
            <h3 style="text-align:center;">DAFTAR AKTIVA TETAP : <?= $jenis_aktiva; ?></h3>
            <h3 style="text-align:center;">Tanggal : <?= tgl_indo($tgl1); ?> s/d <?= tgl_indo($tgl2); ?> </h3>
        </b></p>
    <div class="row">
        <div class="col-sm-12">
            <div class="card-box table-responsive">
                <table border="1" cellspacing="0" width="100%">
                    <thead class="bg-primary">
                        <tr align="center">
                            <th>No</th>
                            <th>Departemen</th>
                            <th>Nama Aktiva Tetap</th>
                            <th>No Register</th>
                            <th>Lokasi 1</th>
                            <th>Lokasi 2</th>
                            <th>Tanggal Perolehan</th>
                            <th>Umur</th>
                            <th>Nilai Perolehan</th>
                        </tr>
                    </thead>
                    <tbody style="background-color: white">
                        <?php
                        $no = 1;
                        $data = $koneksi->query("SELECT * FROM
                        aktiva_tetap
                        WHERE 
                        jenis_aktiva = '$jenis_aktiva' AND 
                        (tanggal_perolehan BETWEEN '$tgl1' AND '$tgl2') AND
                        nama_aktiva = '$nama_aktiva';
                        
                        ");
                        while ($row = $data->fetch_array()) {
                        ?>
                            <tr>
                                <td align="center"><?= $no++ ?></td>
                                <td><?= $row['jenis_aktiva'] ?></td>
                                <td><?= $row['nama_aktiva'] ?></td>
                                <td><?= $row['no_register'] ?></td>
                                <td><?= $row['lokasi1'] ?></td>
                                <td><?= $row['lokasi2'] ?></td>
                                <td><?= $row['tanggal_perolehan'] ?></td>
                                <td><?= hitung_umur($row['tanggal_perolehan']) ?></td>
                                <td>
                                    <?php if ($row['nilai_perolehan'] == NULL or $row['nilai_perolehan'] == '') {
                                        echo "0";
                                    } else {
                                        echo rupiah($row['nilai_perolehan']);
                                    }
                                    ?>
                                </td>
                            </tr>
                        <?php } ?>
                        <tr>
                            <th colspan="8" align="right">
                                <?php
                                $data = $koneksi->query("SELECT SUM(nilai_perolehan) AS total FROM aktiva_tetap 
                                 WHERE 
                        jenis_aktiva = '$jenis_aktiva' AND 
                        (tanggal_perolehan BETWEEN '$tgl1' AND '$tgl2') AND
                        nama_aktiva = '$nama_aktiva'")->fetch_array();

                                ?>
                                <b>
                                    Total :
                                </b>
                            </th>
                            <th colspan="1" align="left">
                                <b><?= rupiah($data['total']) ?></b>
                            </th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <br>

    </div>

    </div>
    <div style="text-align: center; display: inline-block; float: right;">
        <h5>
            Barito Kuala , <?php echo tgl_indo(date('Y-m-d')); ?><br>
            Pimpinan
            <br>
            <br>
            <br>
            <?php
            $ttd = $koneksi->query("SELECT * FROM ttd")->fetch_array();
            echo $ttd['nama_ketua'];
            ?>
        </h5>

    </div>

</body>

</html>

<script>
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
    function rupiah($angka)
    {
        $hasil = 'Rp ' . number_format($angka, 2, ",", ".");
        return $hasil;
    }

    function hitung_umur($tanggal_lahir)
    {
        $birthDate = new DateTime($tanggal_lahir);
        $today = new DateTime("today");
        if ($birthDate > $today) {
            exit("0 tahun 0 bulan 0 hari");
        }
        $y = $today->diff($birthDate)->y;
        $m = $today->diff($birthDate)->m;
        $d = $today->diff($birthDate)->d;
        return $y . " tahun " . $m . " bulan " . $d . " hari";
    }
    ?>
</script>