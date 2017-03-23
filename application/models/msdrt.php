<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MSdrt extends CI_Model{

	var $table = 'sdrt';

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	public function sdrtList() {
		$query = $this->db->query("SELECT * FROM sdrt");
		return   $query->result(); 
	}

	function getId()
	{	
		$query = $this->db->query("SELECT count(id) FROM sdrt");
		return	 $query->result(); 
	}

	// START: Mugi
	public function save($data)
	{
		return $this->db->insert('user_relasi_user', $data);
	}	

	public function invite($data)
	{
		return $this->db->insert('user_relasi', $data);
	}		

	function getIdRelation()
	{	
		$query = $this->db->query("SELECT max(id) as id FROM user_relasi");
		return	 $query->result(); 
	}	

	public function getRelationship($id)
	{	
		//Cari Relasi Kebalikan Apabila Ayah = 1 Maka Anak = 3 (Invers)
		$query = $this->db->query("SELECT sdrt_id2 FROM sdrt_relasi WHERE sdrt_id1 ='$id'");
		$tes = $query->row(); 
		$r = $tes->sdrt_id2;
		return $r; 
	}	

	public function listUsersUnverified($id) 
	{
		$query = $this->db->query("
			select
			u.fullname as u_name, u.avatar as u_image,
			(select count(user_id1) from user_relasi where user_id2='$id' AND status=0) as invite_count,
			r.*
			from
			user_relasi r
			left join user as u on u.id = r.user_id1
			where
			r.user_id2='$id'
			and r.status=0
			");
		return   $query->result(); 
	}	

	public function updateRelationship($status,$id)
	{	
		$this->db->set('status', $status);
		$this->db->where('id', $id);
		return $this->db->update('user_relasi');
	}		

	public function getSmallFamily($id)
	{	
		$query = $this->db->query("SELECT small_family_id FROM user WHERE id ='$id'");
		$tes = $query->row(); 
		$r = $tes->small_family_id;
		return $r; 
	}	

	public function saveSmallFamily($data)
	{
		return $this->db->insert('small_family', $data);
	}		

	public function updateSmallFamily($smallfamily,$id)
	{	
		$this->db->set('small_family_id', $smallfamily);
		$this->db->where('id', $id);
		return $this->db->update('user');
	}	

	public function getIdSmallFamily()
	{	
		$query = $this->db->query("SELECT max(id) as id FROM small_family");
		return	 $query->result(); 
	}		

	public function listSmallFamily($id) 
	{

		$this->db->select('fullname as u_name');
		$this->db->select('avatar as u_image');
		$this->db->select('(select count(id) from user where small_family_id='.$id.') as family_count', FALSE);
		$this->db->where('small_family_id', $id);
		$query = $this->db->get('user');
		return $query->result(); 
	}	

	public function saveBigFamily($data)
	{
		return $this->db->insert('big_family', $data);
	}		

	public function updateSmallToBig($smallfamily,$bigfamily)
	{	
		$this->db->set('big_family_id', $bigfamily);
		$this->db->where('id', $smallfamily);
		return $this->db->update('small_family');
	}	

	public function getBigFamily($id) 
	{

		$this->db->select('id');
		$this->db->where('id', $id);
		$query = $this->db->get('big_family');
		return $query->result(); 
	}	


	public function listBigFamily($id)
	{	
		$query = $this->db->query("
			SELECT
			u.fullname AS u_name,
			u.avatar AS u_image,
			s.name AS small_family,
			TIMESTAMPDIFF(YEAR, u.birth, CURDATE()) AS age
			FROM
			USER AS u
			LEFT JOIN small_family s ON u.small_family_id = s.group_id
			LEFT JOIN big_family b ON s.big_family_id = b.id
			WHERE
			s.big_family_id = ".$id."
			ORDER BY
			small_family ASC, age DESC
			");
		return $query->result(); 
	}			

	// END: Mugi	

}