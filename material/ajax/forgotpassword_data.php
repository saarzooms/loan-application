<?php
include('../db/connection.php');
require('../phpmailer/class.phpmailer.php');

if(isset($_REQUEST['email'])){
	
	$to=$_REQUEST['email'];
	
	$from='numbercruncher@acmesoftware.net';
	$sendernm='Number Cruncher';
	$sub='Reset Password Link';
	
	$msg='Dear user,'.'<br/>Access below link to reset your password'.'<br/><a href="https://loanapp-app.herokuapp.com/material/resetpassword.php?value='.base64_encode($to).'" target="_blank">Reset Your Password?</a>';
	
	$mail = new PHPMailer();
	$subject = $sub;
	$content = $msg;
	$mail->IsSMTP();
	$mail->SMTPDebug = 0;
	$mail->SMTPAuth = true;
	$mail->SMTPSecure = "tls";
	$mail->Port     = 587;  
	//$mail->Username = "postmaster@sandbox89f874254d224787840918e8bf9a804f.mailgun.org";
	//$mail->Password = "31527ba1cdd587c4bc2e93d7ca3a3240";
	$mail->Username = "numbercruncher@acmesoftware.net";
	$mail->Password = "Reset123";
	//$mail->Host     = "localhost";
	//$mail->Host     = "smtp.mailgun.org";
	//$mail->Host     = "smtp.sendgrid.net";
	//$mail->Host     = "smtp.gmail.com";
	$mail->Host     = "mx1.hostinger.in";
	$mail->Mailer   = "smtp";
	$mail->SetFrom($from, $sendernm);
	//$mail->AddReplyTo("vincy@phppot.com", "PHPPot");
	$mail->AddAddress($to);
	$mail->Subject = $sub;
	$mail->WordWrap   = 80;
	$mail->MsgHTML($content);
	$mail->IsHTML(true);
	//print_r($_POST);
	
	if(!$mail->Send()) 
		echo "Problem on sending mail";
	else 
	echo "Mail Sent Successfully !!!";
	
}else if(isset($_REQUEST['emailid'])){
	$email=$_REQUEST['emailid'];
	$cnt='';
	$sql="select count(*) as cnt from login_master where email='$email'";
	foreach($dbh->query($sql) as $row){
		$cnt=$row['cnt'];
	}
	if($cnt==0){
		echo 0;
	}else{
		echo 1;
	}
}else if(isset($_REQUEST['useremail']) && isset($_REQUEST['newpass']))
{
	$useremail=base64_decode($_REQUEST['useremail']);
	$newpass=$_REQUEST['newpass'];
	
	$sql="update login_master set password='$newpass' where email='$useremail'";
	if($dbh->query($sql)){
		echo 1;
	}else{
		echo 0;
	}
}
?>