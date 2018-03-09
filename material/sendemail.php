<?php

include('db/connection.php');
require('phpmailer/class.phpmailer.php');

if(isset($_POST))
{
	//$post = file_get_contents('php://input');
	$data = json_decode(file_get_contents('php://input'), true);
	//print_r($data);
	//echo $data["id"].'-'.$data['email'];
	
	$loanid=$data["id"];
	$to=$data['email'];
	
	// $loanid=$_POST['id'];
	// $to=$_POST['email'];
	
	$cusid='';$officerid='';
	$sql="select id from borrowers where loanid='$loanid'";
	foreach($dbh->query($sql) as $row){
		$cusid=$row['id'];
	}
	//file_put_contents('./log_'.date("j.n.Y").'.txt', $cusid, FILE_APPEND);
	$sql="select customer_master.email,customer_master.loanofficer_id,email_master.* from customer_master inner join email_master on email_master.loanofficer_id=customer_master.loanofficer_id where customer_master.id='$cusid' and email_master.template='2'";
	$from='';$sub='';$msg='';$sendernm='';$url='';$loanofficer_id='';
	foreach($dbh->query($sql) as $r){
		$from=$r['sender_email'];
		$sendernm=$r['sender_name'];
		$sub=$r['subject'];
		$msg=$r['message'];
		$officerid=$r['loanofficer_id'];
	}
	
	$msg=explode('{URL}',$msg);
	$msg=$msg[0].'<br/><a href="http://bansariflourmill.com/material/calculator.php#/loan-calculator/'.sha1($officerid).base64_encode($loanid).'" target="_blank">Loan Calculator</a>';
	
	
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
	$mail->Username = "info@allysoftsolutions.com";
	$mail->Password = "@llY07890";
	//$mail->Host     = "localhost";
	//$mail->Host     = "smtp.mailgun.org";
	//$mail->Host     = "smtp.sendgrid.net";
	//$mail->Host     = "smtp.gmail.com";
	$mail->Host     = "sg2plcpnl0033.prod.sin2.secureserver.net";
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
}
?>