<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	// private $role = 'admin';

  public function __construct()
  {
    parent::__construct();
    if ($this->session->userdata('udhmasuk')==false) {
      redirect('login');
    }
  }

	public function index()
	{
		if($this->session->userdata('role') == 'admin') {
			$data['sidebar'] = $this->load->view('layout/admin/sidebar','',true);
			$data['content'] = $this->load->view('pages/admin/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else if ($this->session->userdata('role') == 'guru') {
			$data['sidebar'] = $this->load->view('layout/guru/sidebar','',true);
			$data['content'] = $this->load->view('pages/guru/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else if ($this->session->userdata('role') == 'siswa') {
			$data['sidebar'] = $this->load->view('layout/siswa/sidebar','',true);
			$data['content'] = $this->load->view('pages/siswa/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else {
			echo "<script type='text/javascript'>alert ('Maaf Username Dan Password Anda Salah !');
				document.location='index';
				</script>";
		}
	}
}
