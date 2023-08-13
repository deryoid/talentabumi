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


?>

<script script type="text/javascript" src="<?= base_url() ?>/assets/dist/chartjs/Chart.js"></script>

<!DOCTYPE html>
<html>

<head>
    <title>LAPORAN DATA </title>
</head>

<body>

    <p align="center">
        <b>
            <img src="<?= base_url('assets/dist/img/logo.jpeg') ?>" align="left" width="140" height="100">
            <font size="10">PT. TALENTA BUMI</font>
            <br>
            <font size="2">Site Office : Kel. Lepasan, Desa.Sungai Tampung, Kecamatan Bakumpai,
                <br>
                Kabupaten Barito Kuala, Kalimantan Selatan. 0511 – 4799344
            </font>
            <br>
            <hr size="1px" color="black">
            <h1 align="center"><u>Akumulasi Aktiva Tetap</u></h1>
        </b>
    </p>
    <div class="row">
        <div class="col-sm-6">
            <div class="card-box table-responsive">
                <table border="1" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>
                                <table border="1" cellspacing="0" width="100%">
                                    <thead class="bg-primary">
                                        <tr align="center">
                                            <th>No</th>
                                            <th>Jumlah</th>
                                            <th>Barang</th>
                                        </tr>
                                    </thead>
                                    <tbody style="background-color: white">
                                        <?php
                                        $no = 1;
                                        $data = $koneksi->query("SELECT COUNT(*) AS jlh, jenis_aktiva FROM aktiva_tetap GROUP BY jenis_aktiva");
                                        while ($row = $data->fetch_array()) {
                                        ?>
                                            <tr>
                                                <td align="center"><?= $no++ ?></td>
                                                <td align="center"><?= $row['jlh'] ?></td>
                                                <td><?= $row['jenis_Aktiva'] ?></td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </th>

                        </tr>
                    </thead>
                </table>
                <th>
                    <table border="1" cellspacing="0" width="100%">
                        <th align="center">
                            <div style="width:100%; margin: 0px auto;">
                                <canvas id="chartAkumulasi"></canvas>
                            </div>
                        </th>
                    </table>
                </th>
                <table border="1" cellspacing="0" width="100%">
                    <thead class="bg-primary">
                        <tr align="center">
                            <th>No</th>
                            <th>Departemen</th>
                            <th>Nama Aktiva Tetap</th>
                            <th>Jumlah</th>
                            <th>Satuan</th>
                            <th>No Register</th>
                            <th>Lokasi 1</th>
                            <th>Lokasi 2</th>
                            <th>Tanggal Perolehan</th>
                            <th>Umur</th>
                            <th>Nilai Perolehan</th>
                        </tr>
                    </thead>
                    <?php
                    $no = 1;
                    $data = $koneksi->query("SELECT * FROM aktiva_tetap ORDER BY id_aktiva ASC");
                    while ($row = $data->fetch_array()) {
                    ?>
                        <tbody style="background-color: white">
                            <tr>
                                <td align="center"><?= $no++ ?></td>
                                <td><?= $row['jenis_aktiva'] ?></td>
                                <td><?= $row['nama_aktiva'] ?></td>
                                <td><?= $row['jumlah'] ?></td>
                                <td><?= $row['satuan'] ?></td>
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
                        </tbody>
                    <?php } ?>
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

    ?>
</script>
<?php
$data = $koneksi->query("SELECT keterangan,jumlah FROM pp");
while ($row = $data->fetch_array()) {
    $nama_barang[] = $row['keterangan'];
    $jumlah_barang[] = $row['jumlah'];
}
?>

<script>
    var ctx = document.getElementById("chartAkumulasi").getContext('2d');
    var chartAkumulasi = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: <?php echo json_encode($nama_barang); ?>,
            datasets: [{
                label: 'Grafik',
                data: <?php echo json_encode($jumlah_barang); ?>,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>