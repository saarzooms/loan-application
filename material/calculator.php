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
  .client-detail {width:98%; height:130px; float:right; border:1px solid #23b7e5; padding:15px 0px 15px 0px;margin-bottom:10px;margin-right:5px;box-shadow:5px 5px 2.5px #23b7e5}
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
	 .scroll {
    overflow: scroll;
} 

  datetime-popup>.dropdown .btn-group button {
            background-color: #4c8e41;
            margin-left: 10px !important;
            color: #fff;
        }

        .toast-top-right {
            margin-top: 50px;
        }

        #toast-container {
            margin-top: 50px !important;
        }

        datetime-popup>.dropdown .btn-group button:first-child {
            display: none;
        }
		.fa-facebook {
		  background: #3B5998;
		  color: white;
		  border-radius:100px;
		  padding:6px;
		  margin-left:5px;
		 
		}
		.fa-twitter {
		  background: #55ACEE;
		  color: white;
		    border-radius:100px;
		  padding:5px;
		   margin-left:5px;
		  
		}
		.fa-linkedin {
		  background: #007bb5;
		  color: white;
		   border-radius:100px;
		  padding:5px;
		   margin-left:5px;
		 
		}
  </style>
</head>

<body class="layout-h scroll">
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
	if($_SESSION['usertype'] != 'Admin'){
	?>
	<!-- floating button close -->
   <div id="floatbtn" class="settings">
      <div class="settings-inner" id="inner">
         <div class="settings-ctrl" style="border-top-left-radius: 15px;border-bottom-left-radius: 15px;">
           <!-- <em id="change" class="fa fa-arrow-left">Get Help !</em> -->
							<div id="arrow" style="margin-top:4px;margin-left:4px;height:40px;box-shadow:-5px 5px 10px gray;border-top-left-radius: 15px;border-bottom-left-radius: 15px;"><i id="change1" class="fa fa-arrow-left rounded-left" style="margin-top:8px;"></i><strong id="change" style="margin-left:5px;margin-top:10px;">My Agent!</strong></div>
         </div>
         <div class="settings-content">
           <center><h4>Here To assist</h4></center>
  <div class="detail-box" style="overflow-y:auto;height:700px;">
  <?php
  //$query="select * from trusted_partner tp inner join businesstype_master bm on bm.id = tp.business_type where forcedisplay='Yes' and display_date>=CURDATE() ";
  if($_SESSION['usertype'] == 'Customer'){
	  $query="select * from trusted_partner tp inner join businesstype_master bm on bm.id = tp.business_type where (forcedisplay='Yes' and display_date>=CURDATE()) or tp.id in (SELECT mm.partner_id FROM `mypartner_master` mm WHERE mm.loanofficer_id in (SELECT cm.loanofficer_id FROM `customer_master` cm WHERE cm.id='".$_SESSION['id']."'))";
  }else if($_SESSION['usertype'] == "Loanofficer"){
		$query="select * from trusted_partner tp inner join businesstype_master bm on bm.id = tp.business_type where (forcedisplay='Yes' and display_date>=CURDATE()) or tp.id in (SELECT mm.partner_id FROM `mypartner_master` mm WHERE mm.loanofficer_id='".$_SESSION['id']."' )";
  }
  foreach ($dbh->query($query) as $row)
			{
  ?>
		<div class="client-detail">
			<div class="col-md-12">
				<div class="col-md-4">
					<div class="row" style="margin-left:-10px;">
						<div class="profile_icon">
							<img class="img-circle" src="<?php echo $row['photo'];?>" style="width:80px;height:80px">
						</div>
					</div>
					<div class="row" style="margin-top:25px;">
						<center><p class=""><a href="https://twitter.com/<?php echo $row['twitter_handle'];?>" class='fa fa-twitter'></a>&nbsp;<a href="https://www.linkedin.com/<?php echo $row['linkedin_profile'];?>" class='fa fa-linkedin'></a>&nbsp;<a href="https://www.facebook.com/<?php echo $row['facebook_profile'];?>" class="fa fa-facebook"></a> </p></center>
					</div>
				</div>
					
					
        		<div class="col-md-8" class="pull-right">
        			<h3 style="margin-top:5px;"><?php echo $row['contact_name'];?></h3>
					<h4 style="margin-top:5px;color:#000;"><?php echo $row['freetext1'];?></h4>
        			<h5 style="margin-top:5px;color:#000;"><?php echo $row['freetext2'];?></h5>
        	
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

</html>
