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
        </b></p>
    <div class="row">
        <div class="col-sm-12">
            <div class="card-box table-responsive">
                <table border="1" cellspacing="0" width="100%">
                    <thead class="bg-primary">
                        <tr align="center">
                            <th>No</th>
                            <th>Departemen</th>
                            <th>Tanggal</th>
                            <th>No FPPK</th>
                            <th>Uraian Kebutuhan</th>
                        </tr>
                    </thead>
                    <tbody style="background-color: white">
                        <?php
                        $no = 1;
                        $data = $koneksi->query("SELECT * FROM fppk ORDER BY id_fppk ASC");
                        while ($row = $data->fetch_array()) {
                        ?>
                            <tr>
                                <td align="center"><?= $no++ ?></td>
                                <td><?= $row['departemen'] ?></td>
                                <td><?= $row['tanggal'] ?></td>
                                <td><?= $row['no_fppk'] ?></td>
                                <td><?= $row['uraian_kebutuhan'] ?></td>
                            </tr>
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