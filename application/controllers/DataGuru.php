<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataGuru extends CI_Controller {
	private $role = 'admin';

  public function __construct()
  {
    parent::__construct();
  }

	public function index()
	{
		if($this->role == 'admin') {
			$data['sidebar'] = $this->load->view('layout/admin/sidebar','',true);
			$data['content'] = $this->load->view('pages/admin/data_guru','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else {
			redirect('');
		}
	}
}
