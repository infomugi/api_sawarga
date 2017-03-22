<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->helper(array('form', 'url'));
    $this->load->model('muser'); 
    $this->load->model('mmail'); 
    $this->load->model('msdrt'); 
    $this->load->model('mnotificationlist'); 
  }

  public function index() 
  {   
   $this->load->view('email');
 }

 public function listUsers()
 {
  $start =$_POST['start'];
  $limit =$_POST['limit'];

  $data = $this->muser->listUsers($limit,$start);
  $output = array(
    "feed" => $data,
    );
  echo json_encode($output);
} 


public function contactList()
{
  $start =$_POST['start'];
  $limit =$_POST['limit'];
  $userId =$_POST['userId'];

  $data = $this->muser->contactList($limit,$start,$userId);
  $output = array(
    "feed" => $data,
    );
  echo json_encode($output);
} 

public function login()
{ 

  $response = array();
  
  $username = $_POST['username'];
  $password =$_POST['password'];
  $query = $this->db->query(
    "SELECT * FROM user 
    WHERE username = '$username' and password = md5('$password') "
    );

  if($query->num_rows() > 0)
  {
    $row = $query->row();
    $response["success"] = 1;
    $response["message"] = "Ada";
    $response["username"] = $row->username;
    $response["password"] = $row->password;
    $response["name"] = $row->name;
    $response["avatar"] = $row->avatar;
    $response["cover"] = $row->cover;
    $response["id"] = $row->id;
    $response["email"] = $row->email;
    $response["status"] = $row->status;
    
  }else{
    $response["success"] = 0;
    $response["message"] = "Sorry, your account has not been registered.";
  }
  
  echo json_encode($response);

}


public function checkEmail()
{ 

  $response = array();
  
  $email = $_POST['email'];
  $query = $this->db->query(
    "SELECT * FROM user 
    WHERE email = '$email'"
    );

  if($query->num_rows() > 0)
  {
    $row = $query->row();
    $response["success"] = 0;
    $response["message"] = "Sorry, this email is taken by another account.";
  }else{
   $response["success"] = 1;
   $response["message"] = "Ada";
 }
 
 echo json_encode($response);

}


public function sendEmail($idBaru,$kodev,$name,$email)
{
 $config = Array(
  'protocol' => 'smtp',
  'smtp_host' => 'ssl://smtp.gmail.com',
  'smtp_port' => 465,
          'smtp_user' => 'sawarga.wefay@gmail.com', // change it to yours
          'smtp_pass' => 'sawargaw3f4y4622', // change it to yours
          'mailtype' => 'html',
          'charset'   => 'iso-8859-1',
          'wordwrap' => TRUE
          );


 $this->load->library('email', $config);
 $data['nama'] = $name;
 $data['kode'] = $kodev;
 $this->email->initialize($config);
 $this->email->set_newline("\r\n");
 $this->email->from('sawarga');
 $this->email->to('3108.firmanmaulana@gmail.com');
 $this->email->subject("Account verification");
 $this->load->helper('url');
 $this->email->message($this->load->view('email',$data,TRUE));
 if($this->email->send())
 {
          // echo 'Email send.';
 }
 else
 {
         // show_error($this->email->print_debugger());
  $response["success"] = 3;
  $response["message"] = "Sorry, the email can not be used.";
  exit();
}

}


public function send_email() 
{
  $email="3108.firmanmaulana@gmail.com";
  $subject="Baru nih";
  $message= "";
  $name= "Firman Maulana";
  $this->sendEmail(1,'12312387ujwwefwe',$name,$email);
}



function rand_string($length ) {
  error_reporting(0);
  $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";  
  $size = strlen( $chars );
  for( $i = 0; $i < $length; $i++ ) {
    $satr .= $chars[ rand( 0, $size - 1 ) ];
  }
  return $satr;
}


public function register()
{
  $username =$_POST['username'];
  $query = $this->db->query("select id FROM user WHERE username = '$username'");
  if($query->num_rows() > 0)
  {
    $response["success"] = 3;
    $response["message"] = "Sorry, the username is already used by another account.";
  }else{
    $data['id'] = $this->muser->getId();
    foreach ($data['id'] as $key) {
      $idBaru = $key->userId + 1;
    }
    $kodev = $this->rand_string(10);

    $config['protocol'] = "smtp";
    $config['smtp_host'] = "srv24.niagahoster.com";
    $config['smtp_port'] = "465";
    $config['smtp_user'] = "sawarga@wefay.com";
    $config['smtp_pass'] = "cFPNQ24[{&e_";
    $config['charset'] = "utf-8";
    $config['mailtype'] = "html";
    $config['newline'] = "\r\n";
    
    $this->load->library('email', $config);
    $data['nama'] = $_POST['name'];
    $data['kode'] = $kodev.$idBaru;
    $this->email->initialize($config);
    $this->email->set_newline("\r\n");
    $this->email->from('sawarga');
    $this->email->to($this->input->post('email'));
    $this->email->subject("Account confirmation");
    $this->load->helper('url');
    $this->email->message($this->load->view('email',$data,TRUE));
    if($this->email->send())
    {
     date_default_timezone_set('Asia/Jakarta');
     $newsDate=date("Y-m-d H:i:s");
     $data = array(
      'id' => $idBaru,
      'created_date' => $newsDate,
      'updated_date' => "",
      'last_visit' => "",
      'fullname' => $this->input->post('name'),
      'email' => $this->input->post('email'),
      'phone_number' => $this->input->post('phone_number'),
      'username' => $this->input->post('username'),
      'password' => md5($this->input->post('password')),
      'gender' => $this->input->post('gender'),
      'status' => "1",
      'birth' => $this->input->post('dob'),
      'address' => "",
      'small_family_id' => "",
      'avatar' => "",
      'cover' => "",
      'gcm_registration_id' => $this->input->post('regId'),
      'email_token' => $kodev.$idBaru,
      
      'status' => '0',
      );

     $insert = $this->muser->save($data);
     $response["success"] = 1;
     $response["message"] = "You have successfully created an account.";
   }
   else
   {
               // show_error($this->email->print_debugger());
    $response["success"] = 3;
    $response["message"] = "Sorry, the email can not be used.";
  }
}

echo json_encode($response);
}


public function updateRegId()
{
  $userId = $this->input->post('userId');
  $regId = $this->input->post('regId');
  $data = array(
    'gcm_registration_id' =>  $regId,
    );
  $this->muser->update(array('id' => $userId), $data);
  $response["success"] = 1;
  echo json_encode($response);
}

public function emailConfirmation($kode)
{
  $data = array(
    'status' =>  '1',
    );
  $this->muser->update(array('random_number' => $kode), $data);
  $response["success"] = 1;
  echo json_encode($response);
}

// START: MUGI

public function sendEmailInvitation()
{ 
  $response = array();

  $email = $this->input->post('email');
  $sdrt = $this->input->post('sdrt');
  $userid1 = $this->input->post('userid1');
  $userid2 = $this->input->post('userid2');

  $query1 = $this->muser->findBypk($userid1);
  $query2 = $this->muser->findBypk($userid2);

  $row1 = $query1->row();
  $row2 = $query2->row();

  if($query2->num_rows() > 0){

    $data = array(
      'user_relasi_id' => $userid2,
      'user_id' => $userid1,
      'sdrt' => $sdrt,
      );

    //Send Mail
    $this->mmail->sendMail(
      "Invite",
      $row2->email, 
      "Hi ".$row2->fullname."",
      "I'd like to invite you to Sawarga. To join me on Sawarga from your mobile device, click Confirmation button: ",
      base_url()."index.php/user/confirmation/smallfamilyid/".$row1->small_family_id,
      "Confirmation"
      );     

    $invite = $this->msdrt->save($data);

    $response["success"] = 1;
    $response["message"] = "Success.";

  }else{

    //Send Mail
    $this->mmail->sendMail(
      "Invite",
      $email, 
      "Hi ".$email."",
      $row1->fullname." telah mengundang anda untuk bergabung di sawarga, silahkan registrasi untuk membuat akun sawarga",
      base_url()."index.php/user/signup/smallfamilyid/".$row1->small_family_id,
      "Registrasi"
      );  

    $response["success"] = 1;
    $response["message"] = "Sent.";

  }

  echo json_encode($response);

}

public function signup($smallfamilyid) 
{
  $data = array(
    'appName' => "Sawarga",
    'pageTitle' => "Register",
    );

  $data['id'] = $this->muser->getId();
  foreach ($data['id'] as $key) {
    $idBaru = $key->userId + 1;
  }
  $kodev = $this->rand_string(10);

  $config = Array(
    'protocol' => 'smtp',
    'smtp_host' => 'srv24.niagahoster.com',
    'smtp_port' => 465,
              'smtp_user' => 'sawarga@wefay.com', // change it to yours
              'smtp_pass' => 'cFPNQ24[{&e_', // change it to yours
              'mailtype' => 'html',
              'charset'   => 'iso-8859-1',
              'wordwrap' => TRUE
              );


  $this->load->library('email', $config);
  $data['nama'] = $_POST['name'];
  $data['kode'] = $kodev.$idBaru;
  $this->email->initialize($config);
  $this->email->set_newline("\r\n");
  $this->email->from('sawarga');
  $this->email->to($this->input->post('email'));
  $this->email->subject("Account Confirmation");
  $this->load->helper('url');
  $this->email->message($this->load->view('email',$data,TRUE));
  if($this->email->send())
  {
    date_default_timezone_set('Asia/Jakarta');
    $newsDate=date("Y-m-d H:i:s");
    $data = array(
      'id' => $idBaru,
      'created_date' => $newsDate,
      'updated_date' => "",
      'last_visit' => "",
      'fullname' => $this->input->post('name'),
      'email' => $this->input->post('email'),
      'phone_number' => "",
      'username' => $this->input->post('username'),
      'password' => md5($this->input->post('password')),
      'gender' => "",
      'status' => "1",
      'birth' => "",
      'address' => "",
      'small_family_id' => $smallfamilyid,
      'avatar' => "",
      'cover' => "",
      'gcm_registration_id' => "",
      'email_token' => "",
      'status' => '0',
      );

    $insert = $this->muser->save($data);
    $response["success"] = 1;
    $response["message"] = "You have successfully created an account.";
  }
  
  $this->load->view('theme/front_header', $data);
  $this->load->view('dashboard/form', $data);
  $this->load->view('theme/front_footer', $data); 

}

public function sendPinInvitation()
{ 
  $response = array();

  $data['id'] = $this->msdrt->getIdRelation();
  foreach ($data['id'] as $key) {
    $idBaru = $key->id + 1;
  }  

  $sdrt = $this->input->post('sdrt');
  $userid = $this->input->post('userid');
  $pin = $this->input->post('pin');

  $query1 = $this->muser->findBypk($userid);
  $query2 = $this->muser->findByPin($pin);

  $row1 = $query1->row();
  $row2 = $query2->row();

  if($query1->num_rows() > 0 && $query2->num_rows() > 0){

    $data = array(
      'id' => $idBaru,
      'user_id1' => $row1->id,
      'user_id2' => $row2->id,
      'status' => 0,
      );

    //Find Relationship
    $sdrt2 = $this->msdrt->getRelationship($sdrt);

    //Apabila Anak = 3 Undang Ayah / Ibu, Cek Gender Apabila Ayah SDRT = 1 / Ibu  SDRT = 2 
    // if($sdrt==3){
    //   if($row2->gender==1){
    //   //Father
    //     $sdrt = 1;
    //   }else{
    //   //Mother
    //     $sdrt = 2;
    //   }
    // }

    // Invers Relationship 
    $data1 = array(
      'user_relasi_id' => $idBaru,
      'user_id' => $row1->id,
      'sdrt' => $sdrt,
      );

    $data2 = array(
      'user_relasi_id' => $idBaru,
      'user_id' => $row2->id,
      'sdrt' => $sdrt2,
      );          

    //Save to USER_RELASI
    $invite = $this->msdrt->invite($data);

    //Save to USER_RELASI_USER 1
    $invite = $this->msdrt->save($data1);

    //Save to USER_RELASI_USER 2
    $invite = $this->msdrt->save($data2);

    //Data Notifikasi
    date_default_timezone_set('Asia/Jakarta');
    $newsDate=date("Y-m-d H:i:s");

    $dataNotif = array(
      'created_date' => $newsDate,
      'subject_id' => $row1->id,
      'type' => 3 ,
      'object_id' => $row2->id,
      'status' => 1,
      );

    $insert = $this->mnotificationlist->save($dataNotif);

    //Response
    $response["success"] = 1;
    $response["message"] = "Success";

  }else{

    //Response
    $response["success"] = 1;
    $response["message"] = "Pin, tidak ditemukan.";

  }

  echo json_encode($response);

}


public function listUsersUnverified()
{
  //Menampilkan List yang Belum di Verifikasi Id Berdasarkan yang Login
  $id =$_POST['id'];

  $data = $this->msdrt->listUsersUnverified($id);
  $output = array(
    "feed" => $data,
    );
  echo json_encode($output);
} 


public function UpdateRelationship()
{
  //Id = Auto Increment ID Relasi
  $data['id'] = $this->msdrt->getIdSmallFamily();
  foreach ($data['id'] as $key) {
    $idBaru = $key->id + 1;
  }    

  //Status 0 = Unverified
  //Status 1 = Accept
  //Status 2 = Reject

  $status = $_POST['status']; // STATUS = Jika Di Approve
  $id = $_POST['id']; //ID = dari tabel user_relasi
  $anunginvite = $_POST['anunginvite']; //ID = dari tabel User (User yang Invite)
  $anungapprove = $_POST['anungapprove']; //ID = dari tabel User (User yang Approve)

  //Update Relationship
  $update = $this->msdrt->updateRelationship($status,$id);

  //Jika di Klik Approve
  if($status==1){

    //Cek Small Family
    $smallfamily_invite = $this->msdrt->getSmallFamily($anunginvite);
    $smallfamily_approve = $this->msdrt->getSmallFamily($anungapprove);

    // //Apabila Belum Punya Keluarga, Maka Dibuat Small Family
    // if($smallfamily_approve=="0"){       

    // // //Data Keluarga Kecil
    // //   $datas = array(
    // //     'id' => $idBaru,
    // //     'group_id' => 1,
    // //     'status' => 1,
    // //     'name' => "",
    // //     'big_family_id' => 0,
    // //     ); 

    // //   //Save to USER_RELASI
    // //   $this->msdrt->saveSmallFamily($datas);    

    //   //Update Small Family ID Jika Kosong
    //   $this->msdrt->updateSmallFamily($smallfamily_invite,$anungapprove);    

    // }else{

      //Update Small Family ID Jika Ada
    $this->msdrt->updateSmallFamily($smallfamily_invite,$anungapprove);    

    // }

    $response["success"] = 1;
    $response["message"] = "Accept";

  //Jika di Klik Reject
  }else{

    $response["success"] = 0;
    $response["message"] = "Reject";

  }

  echo json_encode($response);
} 


public function listSmallFamily()
{
  //Menampilkan List yang Belum di Verifikasi Id Berdasarkan yang Login
  $id =$_POST['id'];

  $data = $this->msdrt->listSmallFamily($id);
  $output = array(
    "feed" => $data,
    );
  echo json_encode($output);
} 
// END : MUGI

}