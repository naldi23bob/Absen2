<?php 

include '../koneksi.php';

if (isset($_POST['simpan'])) {
	
	$schedule = $_POST['schedule'];
	$password = md5($_POST['password']);
	$nama = $_POST['nama'];
	$tmp_tgl_lahir = $_POST['tmp_tgl_lahir'];
	$jenkel = $_POST['jenkel'];
	$agama = $_POST['agama'];
	$alamat = $_POST['alamat'];
	$no_tel = $_POST['no_tel'];
}

$save = "INSERT INTO tb_schedule SET code='$code', in_out='$in_out'";
mysqli_query($koneksi, $save);

// if ($save) {
// 	header("location: ../datauser.php");
// }else{
// 	echo "Gagal Menyimpan Data";
// 	header("location: ../datauser.php");
// }

 ?>