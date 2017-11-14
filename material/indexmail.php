<?php
 if(isset($_POST['submit']))
 {
    $name = $_POST['name'];
    $name = $_POST['mobile'];
	$email = $_POST['email'];
	$product = $_POST['product'];
	$query = $_POST['comment'];
	$email_from = $name.'<'.$email.'>';
	$subject='You Have Inquiry from your Website';
	

 $to="vishal.rkcet@gmail.com";
 
 $headers  = 'MIME-Version: 1.0' . "\r\n";
 $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
 $headers .= "From: ".$email_from."\r\n";
 $message="	  
 	   
 		 Name:
		 $name 	   
         <br>
 		 Email-Id:
		 $email 	   
         <br>
		 Contact:
		 $mobile
		 <br>
		 Product:
		 $product
		 <br>
		 Description:
		 $query
	  
   ";
if(mail($to,$subject,$message,$headers)){	
$message = "We have received your information!!";
echo "<script type='text/javascript'>alert('$message');location.href='index.php';</script>";


}
}
else{
$message = "Sorry there was an error sending your information";
echo "<script type='text/javascript'>alert('$message');location.href='index.php';</script>";

}
?>
