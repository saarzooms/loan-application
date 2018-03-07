<?php
session_start();
include('db/connection.php');
if(isset($_SESSION['id'])=="")
{
	header("Location:login.php");
}
	
?>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Loan Calculator</title>
    <base href="/material/calculator.php">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
	 <link rel="stylesheet" href="app/css/styles.css">
<style>
  .client-detail {width:98%; height:auto; float:right; border:1px solid #23b7e5; padding:15px 0px 15px 0px;margin-bottom:10px;margin-right:5px;box-shadow:5px 5px 2.5px #23b7e5}
.client-detail-text {font-size:12px; color:#000; }
.circle {
  display: block;
  width: 200px;
  height: 200px;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  -webkit-border-radius: 99em;
  -moz-border-radius: 99em;
  border-radius: 99em;
  border: 5px solid #eee;
  box-shadow: 0 3px 2px rgba(0, 0, 0, 0.3);  
}
  .profile_icon {width:60px; height:60px; float:left; border:0px solid #000;}
.profile_icon img {width:100%; height:auto; float:left;}

.extra {
		display: none;
	}
	tr.hide_all > td, td.hide_all{
        border-style:hidden;
      }
	  
    


  </style>
</head>

<body class="layout-h" overflow="scroll">
    <app-root></app-root>
    <div class="preloader">            
        <!-- <div class="preloader-progress">
            <div class="preloader-progress-bar"></div>
        </div> -->
    </div>
	<script type="text/javascript" src="inline.bundle.js"></script>
	<script type="text/javascript" src="polyfills.bundle.js"></script>
	<script type="text/javascript" src="scripts.bundle.js"></script>
	<script type="text/javascript" src="styles.bundle.js"></script>
	<script type="text/javascript" src="vendor.bundle.js"></script>
	<script type="text/javascript" src="main.bundle.js"></script>
	
	
 
</body>

	<?php
	if($_SESSION['usertype'] == 'Customer'){
	?>
	<!-- floating button close -->
   <div id="floatbtn" class="settings">
      <div class="settings-inner" id="inner">
         <div class="settings-ctrl">
           <!-- <em id="change" class="fa fa-arrow-left">Get Help !</em> -->
							<div id="arrow" style="margin-top:4px;margin-left:4px;height:40px;box-shadow:-5px 5px 10px gray;"><i id="change1" class="fa fa-arrow-left" style="margin-top:12px;"></i><strong id="change" style="margin-left:5px;margin-top:10px;">Get Help!</strong></div>
         </div>
         <div class="settings-content">
           <center><h4>Here To assist</h4></center>
  <div class="detail-box" style="overflow-y:auto;height:500px;">
  <?php
  //$query="select * from trusted_partner tp inner join businesstype_master bm on bm.id = tp.business_type where forcedisplay='Yes' and display_date>=CURDATE() ";
  $query="select * from trusted_partner tp inner join businesstype_master bm on bm.id = tp.business_type where (forcedisplay='Yes' and display_date>=CURDATE()) or tp.id in (SELECT mm.partner_id FROM `mypartner_master` mm WHERE mm.loanofficer_id in (SELECT cm.loanofficer_id FROM `customer_master` cm WHERE cm.id='".$_SESSION['id']."'))";
  foreach ($dbh->query($query) as $row)
			{
  ?>
		<div class="client-detail">
    	<div class="col-md-12">
        	<div class="row">
    			<div class="col-md-4"><div class="profile_icon"><img class="" src="<?php echo $row['photo'];?>"></div></div>
        		<div class="col-md-8" class="pull-right">
        			<p class="client-detail-text"><strong>Name:</strong>&nbsp; <?php echo $row['contact_name'];?></p>
        			<p class="client-detail-text"><strong>Business Name:</strong>&nbsp; <?php echo $row['business_name'];?></p>
        			<p class="client-detail-text"><strong>Business Type:</strong>&nbsp; <?php echo $row['businesstype_name'];?></p>
            <p class="client-detail-text"><strong>Phone:</strong>&nbsp; <?php echo $row['phone'];?></p>
            <p class="client-detail-text"><strong>Email:</strong>&nbsp; <?php echo $row['email'];?></p>
            <p class="client-detail-text"><a href="<?php echo $row['twitter_handle'];?>"<i class='fa fa-twitter'></i></a>&nbsp;<a href="<?php echo $row['linkedin_profile'];?>"<i class='fa fa-linkedin'></i></a>&nbsp;<a href="<?php echo $row['facebook_profile'];?>"<i class='fa fa-facebook'></i></a> </p>
			</div>
			
    			</div>
            </div>    
        </div>
		<?php
  }
		?>
						 </div>
         </div>
      </div>
   </div>
   <?php
	}
   ?>
 <!-- floating button over -->
 <script src="app/js/jquery.min.js"></script>
 <script src="app/js/scripts.js"></script>
 <script src="app/js/drawer.js"></script>
<script>
	$(document).ready(function() {
		//pure javascript
	//var pathname = window.location.pathname;
	var pathname = window.location.href;
	var id=pathname.split("/");
	<?php
	if($_SESSION['usertype']=='Customer'){
		?>
			// to show it in an alert window
			//alert(id[7]+<?php echo $_SESSION['id'];?>);
		<?php
	}else{
	?>
	// to show it in an alert window
   // alert(id[6]+<?php echo $_SESSION['id'];?>);
	<?php
	}
	?>
	})
</script>
</html>
