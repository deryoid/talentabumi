<?php

require '../../config/config.php';
require '../../config/koneksi.php';


$id    = $_GET['id'];
$hapus = $koneksi->query("DELETE FROM lokasi WHERE id_lokasi = '$id'");

session_start();
if ($hapus) {
   $_SESSION['pesan'] = "Data Berhasil Dihapus";
   echo "<script>window.location.replace('../bagian/');</script>";
}
