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
    $lokasi_rh = $_POST['lokasi_rh'];
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
            <h3 style="text-align:center;">REKAP HARIAN : <?= $lokasi_rh; ?></h3>
        </b></p>
    <div class="row">
        <div class="col-sm-12">
            <div class="card-box table-responsive">
                <table border="1" cellspacing="0" width="100%">
                    <thead class="bg-primary">
                        <tr align="center">
                            <th>No</th>
                            <th>Lokasi </th>
                            <th>Tanggal Pembuatan</th>
                            <th>Dept</th>
                            <th>No PI</th>
                            <th>No PB</th>
                            <th>NO FPPK</th>
                            <th>No PP</th>
                            <th>No FP3</th>
                            <th>Nama Kebutuhan</th>
                            <th>RP.</th>
                            <th>Keterangan</th>
                        </tr>
                    </thead>
                    <tbody style="background-color: white">
                        <?php
                        $no = 1;
                        $data = $koneksi->query("SELECT * FROM rekap_harian AS rh
                                                LEFT JOIN pi AS tpi ON rh.id_pi = tpi.id_pi
                                                LEFT JOIN pb AS tpb ON rh.id_pb = tpb.id_pb
                                                LEFT JOIN fppk AS tfppk ON rh.id_fppk = tfppk.id_fppk
                                                LEFT JOIN fppp AS tfppp ON rh.id_fppp = tfppp.id_fppp
                                                WHERE lokasi_rh = '$lokasi_rh'");
                        while ($row = $data->fetch_array()) {
                        ?>
                            <tr>
                                <td align="center"><?= $no++ ?></td>
                                <td><?= $row['lokasi_rh'] ?></td>
                                <td><?= $row['tanggal_pembuatan'] ?></td>
                                <td><?= $row['departemen_rh'] ?></td>
                                <td><?= $row['no_pi'] ?></td>
                                <td><?= $row['no_pb'] ?></td>
                                <td><?= $row['no_fppk'] ?></td>
                                <td><?= $row['no_pp'] ?></td>
                                <td><?= $row['no_fppp'] ?></td>
                                <td><?= $row['nama_kebutuhan'] ?></td>
                                <td>Rp.<?= $row['rp'] ?></td>
                                <td><?= $row['keterangan_rh'] ?></td>
                            </tr>
                        <?php } ?>
                        <tr>
                            <th colspan="10" align="right">
                                <?php
                                $data = $koneksi->query("SELECT SUM(rp) AS total FROM rekap_harian AS rh
                                  LEFT JOIN pi AS tpi ON rh.id_pi = tpi.id_pi
                                  LEFT JOIN pb AS tpb ON rh.id_pb = tpb.id_pb
                                  LEFT JOIN fppk AS tfppk ON rh.id_fppk = tfppk.id_fppk
                                  LEFT JOIN fppp AS tfppp ON rh.id_fppp = tfppp.id_fppp
                                  WHERE lokasi_rh = '$lokasi_rh'")->fetch_array();

                                ?>
                                <b>
                                    Total :
                                </b>
                            </th>
                            <th colspan="2" align="left">
                                <b>Rp.<?= $data['total'] ?></b>
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
            ...........
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