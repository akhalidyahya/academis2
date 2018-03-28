<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	private $role = 'admin';

  public function __construct()
  {
    parent::__construct();
  }

	public function index()
	{
		if($this->role == 'admin') {
			$data['sidebar'] = $this->load->view('layout/admin/sidebar','',true);
			$data['content'] = $this->load->view('pages/admin/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else if ($this->role == 'guru') {
			$data['sidebar'] = $this->load->view('layout/guru/sidebar','',true);
			$data['content'] = $this->load->view('pages/guru/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else if ($this->role == 'siswa') {
			$data['sidebar'] = $this->load->view('layout/siswa/sidebar','',true);
			$data['content'] = $this->load->view('pages/siswa/dashboard','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else {
			redirect('');
		}
	}
}
