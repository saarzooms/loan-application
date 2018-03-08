<?php
include('../db/connection.php');
   
if(isset($_REQUEST['name']) && isset($_REQUEST['email']) && isset($_REQUEST['mobile']) && isset($_REQUEST['address']) && isset($_REQUEST['state']) && isset($_REQUEST['zipcode']) && isset($_REQUEST['password']) && isset($_REQUEST['id']))
{
	$name=$_REQUEST['name'];
	$email=$_REQUEST['email'];
	$mobile=$_REQUEST['mobile'];
	$address=$_REQUEST['address'];
	$state=$_REQUEST['state'];
	$zipcode=$_REQUEST['zipcode'];
	$password=$_REQUEST['password'];
	//$officerid=base64_decode($_REQUEST['id']);
	$shaemail=substr($_REQUEST['id'],0,40);
	$officerid=substr($_REQUEST['id'],40);
	
	$email1=sha1($email);
	
	file_put_contents('./log_'.date("j.n.Y").'.txt', $shaemail.'-'.$email1.'-'.$officerid, FILE_APPEND);
	$msg="";$id='';
	try {
		if($shaemail == sha1($email)){
			$sql="UPDATE `customer_master` SET `name`='$name',`phone`='$mobile',`address`='$address',`state`='$state',`zipcode`='$zipcode' WHERE email='$email' and loanofficer_id='".base64_decode($officerid)."'";
			$dbh->query($sql);
			$sql="UPDATE `borrowers` SET name='$name', phone='$mobile' where email='$email'";
			$dbh->query($sql);
			$sql="select id from customer_master WHERE email='$email' and loanofficer_id='".base64_decode($officerid)."'";
			foreach($dbh->query($sql) as $r){
				$id=$r['id'];
			}
			$str="INSERT INTO `login_master`(`user_id`, `email`, `password`, `user_type`,`status`) 
			VALUES ('$id','$email','$password','Customer','0')";
			if($dbh->query($str))
			{ 
					$msg="You Have Successfully Signup";
				    echo $msg;
					//header("location: http://loan-calculator.xcartadesigns.com/#/loan-calculator/".$officerid."");
					//header("location: ../login.php");
					?>
					<script>
					var url = getRootUrl();  
					//window.location.href=url+"material/login.php";
					window.location.href="\login.php";
					function getRootUrl() {
						return window.location.origin?window.location.origin+'/':window.location.protocol+'/'+window.location.host+'/';
					}
					</script>
					<?php
		
			}
		}else{
			echo 0;
		}
		
	}catch(Exception $e) {
	  echo 'Message: ' .$e->getMessage();
	}
}
?>