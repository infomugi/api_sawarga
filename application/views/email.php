<!DOCTYPE html>
<html>

<body style="padding:10px;background:linear-gradient( #0F65C7,#0FAFD7,#42EBDA);">
<center><h1 style="color:#fff;font-family: 'Segoe UI Light','Segoe UI';
 		font-weight: 600;"><strong>Hi <?php echo $nama;?>!</strong></h1></center>

 <center><h3 style="color:#fff;font-family: 'Segoe UI Light','Segoe UI';font-weight: 300;"><strong> Confirm your email address to help secure your Sawarga account.</strong></h4></center>
<br>
 <center><a style="margin:10px;background:#fff;padding:15px;color:#666;text-decoration:none;font-family: 'Segoe UI Light','Segoe UI';
 		font-weight: 300;"" href="<?php echo base_url();?>user/emailConfirmation/<?php echo $data->kode;?>">CONFIRMATION</a></center>

<center><h3 style="margin:10px;color:#666;font-family: 'Segoe UI Light','Segoe UI';
 		font-weight: 600;"><strong></strong></h3></center>
 <div style="height:40px"></div>
</body>
</html>