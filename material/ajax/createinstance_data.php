<?php
session_start();
include('../db/connection.php');

if(isset($_REQUEST['custid']) && isset($_REQUEST['loanid'])){
	$custid=$_REQUEST['custid'];
	$loanid=$_REQUEST['loanid'];
	
	$officerid='';
	$name='';
	$email='';
	$phone='';
	
	$query="INSERT INTO `loan_loanofficer_mapping`(`loanid`, `loanofficer_id`) 
	VALUES ('$loanid','".$_SESSION['id']."')";
	$dbh->query($query);
	
	if($custid!=''){
		$sql="select * from customer_master where id='$custid'";
		foreach($dbh->query($sql) as $r){
			$name=$r['name'];
			$email=$r['email'];
			$phone=$r['phone'];
			$officerid=$r['loanofficer_id'];
		}
		$sql1="INSERT INTO `borrowers`(`id`, `loanId`, `borrowerId`, `name`, `email`, `phone`, `creditScore`, `type`, `isActive`, `createdAt`, `updatedAt`) 
		VALUES ('$custid','$loanid','B','$name','$email','$phone','0','B','1','".date('Y-m-d H:i:s')."','NULL')";
		
		if($dbh->query($sql1)){
			
		}
		
		echo sha1($officerid);
	}else{
		echo sha1($_SESSION['id']);
	}
	
}
?>