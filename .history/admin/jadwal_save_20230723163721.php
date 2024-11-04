<?php 

include '../koneksi.php';

if (isset($_POST['simpan'])) {
	
	$schedule = $_POST['schedule'];
	$nama = $_POST['nama'];
}

$sql_d   = "UPDATE tb_karyawan set schedule='$schedule', nama='$nama', tmp_tgl_lahir='$tmp_tgl_lahir', jenkel='$jenkel', agama='$agama', alamat='$alamat', no_tel='$no_tel', jabatan='$jabatan' WHERE id_karyawan='$id_karyawan'";
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