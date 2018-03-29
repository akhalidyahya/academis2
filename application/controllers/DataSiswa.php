<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataSiswa extends CI_Controller {
	private $role = 'admin';

  public function __construct()
  {
    parent::__construct();
    $this->load->model('mod_siswa');
  }

	public function index()
	{
		if($this->role == 'admin') {
			$data['sidebar'] = $this->load->view('layout/admin/sidebar','',true);
			$data['content'] = $this->load->view('pages/admin/data_siswa','',true);
			$this->load->view('layout/master',array('template'=>$data));
		} else {
			redirect('');
		}
	}

	public function ajax_list(){
		// if(in_array($this->role,$this->roles)){
			$list = $this->mod_siswa->get_datatables();
			$data = array();
			$no = $_POST['start'];
			$status = "";
			foreach ($list as $siswa) {
				$no++;
				$row = array();
				$row[] = $no;
				$row[] = $siswa->nis;
				$row[] = $siswa->nisn;
				$row[] = $siswa->nama_lengkap;
				$row[] = $siswa->jenis_kelamin;
				$row[] = $siswa->tempat_lahir.", ".$siswa->tanggal_lahir;
				$row[] = $siswa->alamat.", ".$siswa->kelurahan.", ".$siswa->kecamatan.", ".$siswa->kota.", ".$siswa->provinsi;
				$row[] = $siswa->nama_kelas;
				
				$row[] = '
					  <div class="btn-group">
    <button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> 
        <i class="fa fa-caret-down"></i>
    </button>
    <ul class="dropdown-menu pull-left" role="menu">
        <li>
            <a onclick="detail_siswa('."'".$siswa->id_siswa."'".')" href="javascript:;">
                <i class="icon-user"></i> Detail
            </a>
        </li>
        <li>
            <a onclick="edit_siswa('."'".$siswa->id_siswa."'".')" href="javascript:;">
                <i class="icon-pencil"></i> Edit
            </a>
        </li>
        <li>
            <a onclick="delete_siswa('."'".$siswa->id_siswa."'".')" href="javascript:;">
                <i class="icon-trash"></i> Delete
            </a>
        </li>
    </ul>
</div>';

				$data[] = $row;
			}

			$output = array(
							"draw" => $_POST['draw'],
							"recordsTotal" => $this->mod_siswa->count_all(),
							"recordsFiltered" => $this->mod_siswa->count_filtered(),
							"data" => $data,
					);
			//output to json format
			echo json_encode($output);
		// }else{
			// $this->session->set_flashdata('messages','YOU DO NOT HAVE ACCESS!');
			// redirect('login');
		// }
	}

	public function add(){
		if($this->role == 'admin') {
			$title = 'Form Tambah Data Siswa';
			$desc = 'Isikan data siswa dan orang tua';
			$data['sidebar'] = $this->load->view('layout/admin/sidebar','',true);
			$data['content'] = $this->load->view('pages/admin/form/form_siswa',array('title'=>$title,'description'=>$desc),true);
			$this->load->view('layout/master',array('template'=>$data));
		} else {
			redirect('');
		}
	}
}
