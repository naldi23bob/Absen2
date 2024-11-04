<?php 

include '../koneksi.php';

if (isset($_POST['simpan'])) {
	
	$schedule = $_POST['schedule'];
	$nama = $_POST['nama'];
}

$sql_d   = "UPDATE tb_karyawan set schedule='$schedule'";
$data    = mysqli_query($koneksi, $sql_d);
// $save = "INSERT INTO tb_schedule SET code='$code', in_out='$in_out'";
// mysqli_query($koneksi, $save);

// if ($save) {
// 	header("location: ../datauser.php");
// }else{
// 	echo "Gagal Menyimpan Data";
// 	header("location: ../datauser.php");
// }

 ?>