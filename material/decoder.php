<?php
include('db/connection.php');
if(isset($_GET['decode']))
{
	$shorturl=$_GET['decode'];
	$sql ="select * from url_master where shorturl='".$_GET['decode']."'";
	//file_put_contents('./log_'.date("j.n.Y").'.txt',$_GET['decode'], FILE_APPEND);
	foreach ($dbh->query($sql) as $row)
	{
		$res=$row['url'];
		$id=$row['loanofficer_id'];
		$uri=explode('//',$row['url']);
		$add=explode('/',$uri[1]);
		
      // header("location:  '".$add."'customersignup.php?id=".$id."");
	  header("location: customersignup.php?id=".$id."");
	}
}

?>