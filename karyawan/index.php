<?php
session_start();
include_once "sesi_karyawan.php";
$modul=(isset($_GET['m']))?$_GET['m']:"awal";
$jawal="Login Karyawan || SI Karyawan";
switch($modul){
    case 'awal': default: $aktif="Beranda"; $judul="Beranda $jadwal"; include "awal.php"; break;
    case 'karyawan': $aktif="Karyawan"; $judul="Modul Karyawan $jadwal"; include "modul/karyawan/index.php"; break;
    case 'jadwal' :$aktif="Jadwal"; $judul="Jadwal $jadwal"; include "jadwal.php"; break;
    
   
}

?>
