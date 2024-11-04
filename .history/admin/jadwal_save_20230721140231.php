<?php 

include '../koneksi.php';

if (isset($_POST['simpan'])) {
	
	$code = $_POST['code'];
	$in_out = $_POST['in_out'];
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