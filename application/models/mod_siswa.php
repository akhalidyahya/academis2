<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mod_siswa extends CI_Model{

  var $table = 'siswa';
  var $column_order = array('id_siswa','nama_kelas','nis','nisn','id_kelas','jenis_kelamin'); //set column field database for datatable orderable
  var $column_search = array('id_siswa','nama_lengkap','nis','nisn','nama_kelas','kelas.id_kelas'); //set column field database for datatable searchable just firstname , lastname , address are searchable
  var $order = array('id_kelas' => 'asc'); // default order

  private function _get_datatables_query()
  {

    $this->db->select("siswa.*,kelas.nama_kelas");
    $this->db->from('siswa');
    $this->db->join('kelas','siswa.id_kelas = kelas.id_kelas');

    $i = 0;
    
      foreach ($this->column_search as $item) // loop column 
      {
        if($_POST['search']['value']) // if datatable send POST for search
        {

          if($i===0) // first loop
          {
            $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
            $this->db->like($item, $_POST['search']['value']);
          }
          else
          {
            $this->db->or_like($item, $_POST['search']['value']);
          }

          if(count($this->column_search) - 1 == $i){
            $this->db->group_end(); //close bracket
            break;
          } //last loop
        }
        $i++;
      }
      
      if(isset($_POST['order'])) // here order processing
      {
        $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
      } 
      else if(isset($this->order))
      {
        $order = $this->order;
        $this->db->order_by(key($order), $order[key($order)]);
      }
    }

  function get_datatables()
  {
    $this->_get_datatables_query();
    if($_POST['length'] != -1)
      $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }

  function count_filtered()
  {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all()
  {
    $this->db->from($this->table);
    return $this->db->count_all_results();
  }

  public function get_siswa(){
    $sql=$this->db->query("SELECT* FROM siswa");
    return $sql->result();
  }

  function hapus_siswa($id){
		$this->db->where("id_siswa",$id);
		$this->db->delete('siswa');
	}

  function edit_siswa($id){
		$this->db->where("id_siswa",$id);
		return $this->db->get('siswa');
	}

  function update_siswa($id,$data){
		$this->db->where("id_siswa",$id);
    $this->db->update('siswa',$data);
  }

  function simpan_siswa($data){
    $this->db->insert('siswa',$data);
  }

  function get_last_id(){
    $insert_id = $this->db->insert_id();
    return $insert_id;
  }

  public function detail_Siswa($id_siswa)
  {
    $data=array();
    $options = array('id_siswa' => $id_siswa);
    $Q=$this->db->get_where('siswa',$options,1);
    if ($Q->num_rows()>0) {
      $data = $Q->row_array();
    }
    $Q->free_result();
    return $data;
  }
}
 ?>
