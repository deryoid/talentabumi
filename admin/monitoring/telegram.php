<?php
require '../../config/config.php';
require '../../config/koneksi.php';

$id = $_GET['id'];
$data = $koneksi->query("SELECT * FROM monitoring WHERE id_monitoring = 2");
$row = $data->fetch_array();

$message_text = "Lokasi : " . $row['lokasi_rh'] .
    ", Nama Inventaris : " . $row['nama_inventaris'] .
    ", Nomor Aset : " . $row['nomor_inventaris'] .
    ", Status : " . $row['status'];

$secret_token = "6374888624:AAGvl-GohCBV2tBc_wN7UqWXAZxUjEk5sCw";

$url = "https://api.telegram.org/bot" . $secret_token . "/sendMessage?parse_mode=markdown&chat_id=-998500032";
$url = $url . "&text=" . urlencode($message_text);
$ch = curl_init();
$optArray = array(
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true
);
curl_setopt_array($ch, $optArray);
$result = curl_exec($ch);
curl_close($ch);

echo "<script>window.location.replace('../monitoring');</script>";
