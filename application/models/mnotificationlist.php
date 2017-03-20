<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MNotificationList extends CI_Model{

    var $table = 'notification_list';

    function __construct(){
        parent::__construct();
        $this->load->database();
    }
      


    public function listNotification($limit, $start,$userId) {
        
            $query = $this->db->query("SELECT u.id, u.fullname,
                                                CASE n.type
                                                WHEN '1'
                                                THEN 'Like your post.'
                                                WHEN '2'
                                                THEN 'Comment your post'
                                                WHEN '3'
                                                THEN 'Invite you'
                                                END AS description, p.id, p.image, n.created_date,
                                                n.object_id as obj, 
                                                (select uu.avatar from user uu, post pp 
                                                where pp.id =obj and pp.user_id = uu.id ) as avatar
                                        FROM user u, post p, notification_list n
                                                WHERE u.id = n.subject_id
                                                AND p.id = n.object_id
                                                AND p.user_id = '$userId'
                                        GROUP BY p.id ORDER BY n.created_date
                                        LIMIT 0,30
                                     ");
        return   $query->result(); 
   }

   public function save($data)
    {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }

    public function delete($userId,$postId){
       
        $this->db->where(array('subject_id' => $userId,'object_id' => $postId));
        $this->db->delete($this->table);
    }

  


  

}