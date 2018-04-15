<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('sik');
  }

	public function index()
	{
		$this->load->view('login');
	}

	function ceklogin(){
		if (isset($_POST['login'])) {
			$user=$this->input->post('user',true);
			$pass=md5($this->input->post('pass',true));
			$cek=$this->sik->proseslogin($user, $pass);
			$hasil=count($cek);
			if ($hasil > 0) {
				$yglogin=$this->db->get_where('akun',array('username'=>$user, 'password'=>$pass))->row();
				$data = array('udhmasuk' => true,
				'username'=>$yglogin->username,
				'role' => $yglogin->status);
				$this->session->set_userdata($data);
				redirect('dashboard');
				// if ($yglogin->status == 'admin') {
				// 	redirect('dashboard');
				// }elseif ($yglogin->status == 'guru') {
				// 	redirect('dashboard');
				// }elseif ($yglogin->status == 'siswa') {
				// 	redirect('dashboard');
				// }
			}else {
				echo "<script type='text/javascript'>alert ('Maaf Username Dan Password Anda Salah !');
				document.location='index';
				</script>";
			}
		}
	}

	function keluar(){
		$this->session->sess_destroy();
		redirect('login');
	}
}
