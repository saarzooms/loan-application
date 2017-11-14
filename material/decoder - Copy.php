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
        header("location:".$res);
	}
}

?>