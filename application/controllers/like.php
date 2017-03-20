<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class Like extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->model('mpost');
		$this->load->model('muser');
		$this->load->model('mwidget');
		$this->load->model('mlike');
$this->load->model('mnotificationlist');
		$this->load->model('mactivity');
	}


	public function index() 
	{   
		$this->load->view('home');
	}

 

public function savelike()
  {

      $userId = $this->input->post('user_id');
      $postId =$this->input->post('post_id');
  
      $query = $this->db->query(
                                      "SELECT * from post_like
                                       WHERE user_id = '$userId' and post_id = '$postId'"
                                   );

        if($query->num_rows() > 0)
        {
              $delete = $this->mlike->deleteLike($userId,$postId);
              $delete = $this->mnotificationlist->delete($userId,$postId);
              $response["status"] = 0;
        }else{
              date_default_timezone_set('Asia/Jakarta');
              $newsDate=date("Y-m-d H:i:s");
              $data = array(
                'created_date' => $newsDate,
                'user_id' => $userId ,
                'post_id' => $postId,
                );

               $dataNotif = array(
                'created_date' => $newsDate,
                'subject_id' => $userId ,
                'type' => 1 ,
                'object_id' => $postId,
                'status' => 1,
                );

              $insert = $this->mlike->save($data);
              $insert = $this->mnotificationlist->save($dataNotif);
              $response["status"] = 1;
        }
        $total = $this->mlike->totalLike($postId);
        $update = $this->mlike->updateTotalLike($postId);  


// notification
          $regId = $this->muser->getRegIdComment($postId );
          $this->sendNotification($isiPesan, $regId,$postId);


        $response["total"] =$total;
        echo json_encode($response);
  }

 public function sendNotification($message, $regId, $chatRoomId) {
       
        // optional payload
        $payload = array();
        $payload['team'] = 'India';
        $payload['score'] = '5.6';
 
        // notification title
        $title = 'Kotak Masuk';
         
        // notification message
        $message = $message;
         
 
        $json = '';
        $response = '';
        $res = array();
        $res['data']['title'] = $title;
        $res['data']['is_background'] =FALSE;
        $res['data']['message'] = $message;
        $res['data']['image'] ='';
        $res['data']['payload'] = $payload;
        $res['data']['timestamp'] = date('Y-m-d G:i:s');
        $res['data']['chat_room_id'] = $chatRoomId;

        // if ($this_type == 'topic') {
        //     $json = $this->getPush();
        //     $response = $firebase->sendToTopic('global', $json);
        // } else if ($this_type == 'individual') {
        $json = $res;
        $this->send($regId,$json);
        // }
  }

  public function kirimNotif(){
    $this->sendNotification('isinya', 'AAAAlV2XBtM:APA91bGBXnXXGYhLm7ss2A_Ysr2RUwDqAtrOBdIe5SChL8oE2gXI71DUP-zDSIP5m188JMfQm0cBH35JU_8slR2_V_jym0uD0orwtMKJAOFXBBnuCtShGD9nT0u8HkdD2rAnNKq8qETu');
  }

    public function send($to, $message) {
        $fields = array(
            'to' => $to,
            'data' => $message,
        );
        return $this->sendPushNotification($fields);
    }
 
    public function sendPushNotification($fields) {
         
        // Set POST variables
        $url = 'https://fcm.googleapis.com/fcm/send';
 
        $headers = array(
            'Authorization: key=' . 'AAAAlV2XBtM:APA91bGBXnXXGYhLm7ss2A_Ysr2RUwDqAtrOBdIe5SChL8oE2gXI71DUP-zDSIP5m188JMfQm0cBH35JU_8slR2_V_jym0uD0orwtMKJAOFXBBnuCtShGD9nT0u8HkdD2rAnNKq8qETu',
            'Content-Type: application/json'
        );
        // Open connection
        $ch = curl_init();
 
        // Set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
 
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 
        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
 
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
 
        // Execute post
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
 
        // Close connection
        curl_close($ch);
      
        return $result;
    }





	public function listLike()
	{
		$postid =  $this->input->post('post_id');
		$limit =  $this->input->post('limit');
		$start =  $this->input->post('start');

		$data = $this->mlike->listLike($postid, $limit, $start);
		$output = array(
			"feed" => $data,
			);

		echo $this->mwidget->json($output);
	} 

	public function save()
	{
		date_default_timezone_set('Asia/Jakarta');
		$newsDate=date("Y-m-d H:i:s");
		$data = array(
			'created_date' => $newsDate,
			'user_id' => $this->input->post('user_id'),
			'post_id' => $this->input->post('post_id'),
			);

		$insert = $this->mlike->save($data);

		$fullname = $this->mactivity->findUser($data['user_id']);
		$description = $this->mactivity->findPost($data['post_id']);
		$notifikasi = $this->mactivity->save($data['user_id'],"Menyukai Posting ".$fullname." : ".$description,3,1);

		$update = $this->mlike->updateTotalLike($data['post_id']);		
		$response["success"] = 1;
		$response["message"] = "Success.";
		echo $this->mwidget->json($response);
	}

	public function update()
	{
		$data = array(
			'comment' => $this->input->post('comment'),
			);

		$update = $this->mlike->update(array('id' => $this->input->post('id')),$data);
		$response["success"] = 1;
		$response["message"] = "Success.";
		echo $this->mwidget->json($response);
	}	


	public function delete()
	{
		$id = $this->input->post('id');
		$delete = $this->mlike->delete($id);
		$response["success"] = 1;
		$response["message"] = "Success.";
		echo $this->mwidget->json($response);
	}	

}