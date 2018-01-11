<?php
session_start();
$roll="";
if(isset($_SESSION['id'])=="")
{
	header("Location:material/login.php");
}