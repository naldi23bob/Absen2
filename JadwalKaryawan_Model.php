<?php
class Jadwalkaryawan_Model extends CI_Model
{
	public function getAllData()
	{
		$this->db->select('id, id_karyawan, hari, jam_masuk,jam_pulang');
		$this->db->from('tb_jadwal');
		return $this->db->get()->result_array();
	}

	/* 
	* jadwal khusus yang di skip untuk keperluan di controller Data Jadwal
	*/
	public function getJadwalKhusus_hari($karyawan, $hari)
	{
		return $this->db->query("SELECT * FROM `tb_jadwal` WHERE hari = '" . $hari . "' AND kelas LIKE '%" . $keryawan . "' GROUP by sesi ")->result();
	}

	public function tambah_data()
	{
		$hari = $this->input->post('hari');
		$karyawan = $this->input->post('id_karyawan');
		foreach ($hari as $h) {
			foreach ($karyawan as $k) {
				$data = array(
					'hari' => $h,
					'id_karyawan' => $k,
					'jam_masuk' => $this->input->post('jam_masuk'),
					'jam_pulang' => $this->input->post('jam_pulang')
				);
				$this->db->insert('tb_jadwal', $data);
			}
		}
	}

	public function hapus_data($id)
	{
		$this->db->delete('tb_jadwal', ['id' => $id]);
	}

	public function ubah_data()
	{
		$data = array(
			'hari' => $this->input->post('hari'),
			'id_karyawan' => $this->input->post('id_karyawan'),
			'jam_masuk' => $this->input->post('jam_masuk'),
			'jam_pulang' => $this->input->post('jam_pualng')
		);
		$this->db->where('id', $this->input->post('id', true));
		$this->db->update('tb_jadwal', $data);
	}

	public function detail_data($id)
	{
		return $this->db->get_where('tb_jadwal', ['id' => $id])->row_array();
	}
}
