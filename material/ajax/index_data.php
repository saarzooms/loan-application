<?php
session_start();
include('../db/connection.php');
    $user_id=isset($_SESSION['id']);
	$roll="";
	$sql = "SELECT * FROM login_master WHERE user_id='".$_SESSION['id']."' and user_type='".$_SESSION['usertype']."' ";
	foreach ($dbh->query($sql) as $row)
	{		
		$roll=$row['user_type'];
	}
	//file_put_contents('./log_'.date("j.n.Y").'.txt', $roll, FILE_APPEND);
if(isset($_REQUEST['id']))
{
	$loancnt='';
	$loancalculatorcnt='';
	$custcnt='';
	$partnercnt='';
	$businesscnt='';
	$result = array();
	if($roll=='Admin')
	{
		$s="select count(*) as cnt from loanofficer_master";
		foreach ($dbh->query($s) as $r)
		{		
			$loancnt=$r['cnt'];
		}
		$s1="select count(*) as cnt1 from customer_master";
		foreach ($dbh->query($s1) as $r1)
		{		
			$custcnt=$r1['cnt1'];
		}
		$s2="select count(*) as cnt2 from trusted_partner";
		foreach ($dbh->query($s2) as $r2)
		{		
			$partnercnt=$r2['cnt2'];
		}
		$s3="select count(*) as cnt3 from businesstype_master";
		foreach ($dbh->query($s3) as $r3)
		{		
			$businesscnt=$r3['cnt3'];
		}
		$s4="select count(*) as cnt4 from loans";
		foreach ($dbh->query($s4) as $r4)
		{		
			$loancalculatorcnt=$r4['cnt4'];
		}
		array_push($result,'Admin',$loancnt,$custcnt,$partnercnt,$businesscnt,$loancalculatorcnt);
	    echo json_encode($result);
	}else if($roll=='Loanofficer'){
		
		$s1="select count(*) as cnt1 from customer_master where loanofficer_id='".$_SESSION['id']."'";
		
		foreach ($dbh->query($s1) as $r1)
		{		
			$custcnt=$r1['cnt1'];
		}
		$s2="select count(*) as cnt2 from mypartner_master where loanofficer_id='".$_SESSION['id']."'";
		foreach ($dbh->query($s2) as $r2)
		{		
			$partnercnt=$r2['cnt2'];
		}
		
		array_push($result,'Loanofficer',$custcnt,$partnercnt);
	    echo json_encode($result);
	}else{
		
	}
	
}
?>