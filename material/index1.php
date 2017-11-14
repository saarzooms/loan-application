<?php
   include('db/connection.php');
   $user_id=isset($_SESSION['id']);
	$roll="";
	$sql = "SELECT * FROM login_master WHERE user_id='$user_id' ";
	foreach ($dbh->query($sql) as $row)
	{		
		$roll=$row['user_type'];
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Index Page</title>
   <link rel="stylesheet" href="app/css/styles.css">
   
   <!-- =============== VENDOR STYLES ===============-->
   
   <!-- FONT AWESOME-->
   <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
   <!-- SIMPLE LINE ICONS-->
   <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
   <!-- ANIMATE.CSS-->
   <link rel="stylesheet" href="vendor/animate.css/animate.min.css">
   <!-- WHIRL (spinners)-->
   <link rel="stylesheet" href="vendor/whirl/dist/whirl.css">
   <!-- =============== PAGE VENDOR STYLES ===============-->
   <!-- WEATHER ICONS-->
   <link rel="stylesheet" href="vendor/weather-icons/css/weather-icons.min.css">
   <!-- =============== BOOTSTRAP STYLES ===============-->
   <link rel="stylesheet" href="app/css/bootstrap.css" id="bscss">
   <!-- =============== APP STYLES ===============-->
   <link rel="stylesheet" href="app/css/app.css" id="maincss">
  <link rel="stylesheet" href="app/css/bootstrap-drawer.css">
 
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
 <script type="text/javascript">
	function toggleSibling(sibling){
		sibling = sibling.nextSibling;
		while(!/tr/i.test(sibling.nodeName)){
			sibling = sibling.nextSibling;
		}
		sibling.style.display = sibling.style.display == 'table-row' ? 'none' : 'table-row';
	}
	</script> 
</head>

<body>

 <!-- <div id="main"><span onClick="openNav()">&#9776;</span></div> -->
   <div class="wrapper">
   <?php include('header.php');?>
   <section>
    <div class="content-wrapper">
      <!-- <button class="btn btn-primary" data-toggle="drawer" data-target="#drawer-2">Right Drawer</button> -->
				<div class="content-heading">
						
               Dashboard
               <small>Welcome to Angle!</small>
				</div>
				<div class="row">
           <div class="col-md-12">
							<?php
							if($roll=='Admin'){
								
							?>
               <div class="col-lg-3 col-sm-6">
                  <!-- START widget-->
                  <div class="panel widget bg-primary">
                     <div class="row row-table">
                        <div class="col-xs-4 text-center bg-primary-dark pv-lg">
                           <em class="icon-people fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                           <div id="loan" class="h2 mt0"></div>
                           <div class="text-uppercase">Loan Officers</div>
                        </div>
                     </div>
                  </div>
               </div>
								<?php
								}
								?>
								<?php
							if($roll=='Admin' || $roll=='Loanofficer'){
								
							?>
               <div class="col-lg-3 col-sm-6">
                  <!-- START widget-->
                  <div class="panel widget bg-purple">
                     <div class="row row-table">
                        <div class="col-xs-4 text-center bg-purple-dark pv-lg">
                           <em class="icon-user fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                           <div id="cust" class="h2 mt0"></div>
                           <div class="text-uppercase">Customers</div>
                        </div>
                     </div>
                  </div>
               </div>
			          <?php
								}
								?>
								<?php
							if($roll=='Admin' || $roll=='Loanofficer'){
								
							?>
               <div class="col-lg-3 col-md-6 col-sm-12">
                  <!-- START widget-->
                  <div class="panel widget bg-green">
                     <div class="row row-table">
                        <div class="col-xs-4 text-center bg-green-dark pv-lg">
                           <em class="icon-user-following fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                           <div id="part" class="h2 mt0"></div>
                           <div class="text-uppercase">Trusted Partners</div>
                        </div>
                     </div>
                  </div>
               </div>
			         <?php
								}
								?>
								<?php
							if($roll=='Admin'){
								
							?>
               <div class="col-lg-3 col-md-6 col-sm-12">
                  <!-- START date widget-->
                  <div class="panel widget">
                     <div class="row row-table">
                        <div class="col-xs-4 text-center bg-green pv-lg">
                           <!-- See formats: https://docs.angularjs.org/api/ng/filter/date-->
                           <em class="fa fa-briefcase fa-3x"></em>
                        </div>
						             <div class="col-xs-8 pv-lg">
                           <div id="bus" class="h2 mt0"></div>
                           <div class="text-uppercase">Business Types</div>
                        </div>
                        
                     </div>
                  </div>
                  <!-- END date widget-->
               </div>
			   <?php
								}
								?>
					<?php
							if($roll=='Admin' || $roll=='Loanofficer'){
								
							?>
               <div class="col-lg-3 col-md-6 col-sm-12">
                  <!-- START date widget-->
                  <div class="panel widget">
                     <div class="row row-table">
                        <div class="col-xs-4 text-center bg-yellow pv-lg">
                           <!-- See formats: https://docs.angularjs.org/api/ng/filter/date-->
                           <em class="fa fa-calculator fa-3x"></em>
                        </div>
						             <div class="col-xs-8 pv-lg">
                           <div id="cal" class="h2 mt0">3</div>
                           <div class="text-uppercase">Loan Calculator</div>
                        </div>
                        
                     </div>
                  </div>
                  <!-- END date widget-->
               </div>
			   <?php
								}
								?>
    </div>
	</div>
</div>
	<?php
	if($roll == 'Loanofficer'){
	?>
	<!-- <div class="wrapper"> -->
		
		<div class="row" style="margin-left:20px;margin-right:20px;margin-top:-20px;">
			<div class="col-md-12">
				<h4>List of recent revisions by customers</h4>
					<table id="tb" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead style="background-color:#23b7e5;">
         <tr>
						<th style="color:#fff;">Loan Id</th>  			
						<th style="color:#fff;">Customer Name</th>     
						<th style="color:#fff;">Date</th>  
         </tr>
        </thead>
       <tbody>
		<tr id="a" onclick="toggleSibling(this)">
    <td>1</td>
    <td>Arzoo</td>
    <td>22-09-2017</td>
   </tr>
  <tr class="extra hide_all">
    <td colspan="3">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					<thead style="background-color:#23b7e5;">
						<th colspan="2" style="text-align:center;color:#fff;">Previous Version</th>
						<th colspan="2" style="text-align:center;color:#fff;">Customer Version</th>
					</thead>
					<tbody>
						<tr>
							<tr>
    <td><strong>Qualifying Credit Score</strong></td>
    <td>0</td>
	  <td><strong>Qualifying Credit Score</strong></td>
    <td>0</td>
   </tr>
  <tr>
    <td><strong>Name</strong></td>
    <td>Arzoo</td>
		<td><strong>Name</strong></td>
    <td>Arzoo</td>
  </tr>
  <tr>
    <td><strong>Sale Price</strong></td>
    <td>0</td>
		<td><strong>Sale Price</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Purchase</strong></td>
    <td>0</td>
		<td><strong>Purchase</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Loan Type</strong></td>
    <td>CONV</td>
		<td><strong>Loan Type</strong></td>
    <td>CONV</td>
  </tr>
  <tr>
    <td><strong>Loan Amount</strong></td>
    <td>0.00</td>
		<td><strong>Loan Amount</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Rate</strong></td>
    <td>0.00</td>
		<td><strong>Rate</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Point</strong></td>
    <td>0</td>
		<td><strong>Point</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Term</strong></td>
    <td>0</td>
		<td><strong>Term</strong></td>
    <td>0</td>
  </tr>
  <tr>
		<td colspan="2">
			<center>
				<a href="http://loan-calculator.xcartadesigns.com/#/loan-calculator/1" target="_blank"><button id="pre" class="btn btn-success">View More</button><a>
				<a href="http://loan-calculator.xcartadesigns.com/#/loan-calculator/1" target="_blank"><button id="pre" class="btn btn-success">Modify</button><a>
				<a href="#"><button id="pre" class="btn btn-success">Delete</button><a>
			</center>
		</td>
  </tr>
						</tr>
					</tbody>
				</table>
			</td>
  </tr>
  <tr id="b" onclick="toggleSibling(this)">
    <td>2</td>
    <td>Vishal</td>
    <td>22-09-2017</td>
  </tr>
  <tr class="extra hide_all">
    <td colspan="3">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					<thead style="background-color:#23b7e5;">
						<th colspan="2" style="text-align:center;color:#fff;">Previous Version</th>
						<th colspan="2" style="text-align:center;color:#fff;">Customer Version</th>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>4</td>
						</tr>
					</tbody>
				</table>
		</td>
  </tr>
  <tr id="c" onclick="toggleSibling(this)">
    <td>3</td>
    <td>Vivek</td>
    <td>22-09-2017</td>
  </tr>
  <tr class="extra hide_all">
    <td colspan="3">
				<table  class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					<thead style="background-color:#23b7e5;">
						<th colspan="2" style="text-align:center;color:#fff;">Previous Version</th>
						<th colspan="2" style="text-align:center;color:#fff;">Customer Version</th>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
							<td>4</td>
						</tr>
					</tbody>
				</table>
		</td>
  </tr>
				</tbody>
			</table>
      
			</div>
		</div>
<!--	</div>  -->
	<?php
	}
	?>
	<?php
	if($roll == 'Loanofficer'){
	?>
	<!-- <div class="wrapper"> -->
		
		<div class="row" style="margin-left:20px;margin-right:20px;margin-top:-20px;">
			<div class="col-md-12">
				<h4>Loan Instance List</h4>
					<table id="tb" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead style="background-color:#23b7e5;">
         <tr>
						<th style="color:#fff;">Loan Id</th>  			
						<th style="color:#fff;">Qualifying Credit Score</th>     
						<th style="color:#fff;">Name</th>  
						<th style="color:#fff;">Sale Price</th>  
						<th style="color:#fff;">Purchase</th>  
						<th style="color:#fff;">Loan Type</th>  
						<th style="color:#fff;">Loan Amount</th>  
						<th style="color:#fff;">Rate</th>  
						<th style="color:#fff;">Point</th>  
						<th style="color:#fff;">Term</th>  
         </tr>
        </thead>
       <tbody>
		<tr>
    <td>1</td>
    <td>0</td>
    <td>Arzoo</td>
    <td>0.00</td>
    <td>0.00</td>
    <td>CONV</td>
    <td>0.00</td>
    <td>0 %</td>
    <td>0</td>
    <td>0</td>
   </tr>
  <tr>
    <td>2</td>
    <td>0</td>
    <td>Vishal</td>
    <td>0.00</td>
    <td>0.00</td>
    <td>CONV</td>
    <td>0.00</td>
    <td>0 %</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>1</td>
    <td>0</td>
    <td>Vivek</td>
    <td>0.00</td>
    <td>0.00</td>
    <td>CONV</td>
    <td>0.00</td>
    <td>0 %</td>
    <td>0</td>
    <td>0</td>
  </tr>
				</tbody>
			</table>
      
			</div>
		</div>
<!--	</div>  -->
	<?php
	}
	?>
	<?php
	if($roll == 'Customer'){
	?>
<!--	<div class="wrapper" style="margin-top:-30px;"> -->
		<div class="row" style="margin-left:20px;margin-right:20px;margin-top:-20px;">
			<div class="col-md-6">
					
					<table id="tb" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead style="background-color:#23b7e5;">
         <tr>
						<th colspan="2" style="color:#fff;text-align:center;">Your Last Saved Version</th>  			  
         </tr>
        </thead>
       <tbody>
		<tr>
    <td><strong>Qualifying Credit Score</strong></td>
    <td>0</td>
   </tr>
  <tr>
    <td><strong>Name</strong></td>
    <td>Arzoo</td>
  </tr>
  <tr>
    <td><strong>Sale Price</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Purchase</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Loan Type</strong></td>
    <td>CONV</td>
  </tr>
  <tr>
    <td><strong>Loan Amount</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Rate</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Point</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Term</strong></td>
    <td>0</td>
  </tr>
  <tr>
		<td colspan="2">
			<center>
				<a href="http://loan-calculator.xcartadesigns.com/#/loan-calculator/1" target="_blank"><button id="pre" class="btn btn-success">View More</button><a>
				<a href="http://loan-calculator.xcartadesigns.com/#/loan-calculator/1" target="_blank"><button id="pre" class="btn btn-success">Modify</button><a>
			</center>
		</td>
  </tr>
    </tbody>
			</table>
      
			</div>
	<div class="col-md-6">
					<table id="tb" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead style="background-color:#23b7e5;">
         <tr>
						<th colspan="2" style="color:#fff;text-align:center;">Loan officer's Suggestion</th>  			  
         </tr>
        </thead>
       <tbody>
		<tr>
    <td><strong>Qualifying Credit Score</strong></td>
    <td>0</td>
   </tr>
  <tr>
    <td><strong>Name</strong></td>
    <td>Arzoo</td>
  </tr>
  <tr>
    <td><strong>Sale Price</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Purchase</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Loan Type</strong></td>
    <td>CONV</td>
  </tr>
  <tr>
    <td><strong>Loan Amount</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Rate</strong></td>
    <td>0.00</td>
  </tr>
  <tr>
    <td><strong>Point</strong></td>
    <td>0</td>
  </tr>
  <tr>
    <td><strong>Term</strong></td>
    <td>0</td>
  </tr>
  <tr>
		<td colspan="2">
			<center><a href="http://loan-calculator.xcartadesigns.com/#/loan-calculator/1" target="_blank"><button id="pre" class="btn btn-success">View More</button><a></center>
		</td>
  </tr>
    </tbody>
			</table>
      
			</div>
		</div>
<!--	</div>  -->
	<?php
	}
	?>
	</section>
	
   <?php include('footer.php');?>
  </div> 
  <?php
  if($roll == 'Customer'){
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
 <!-- floating button over -->
 <?php
  }
 ?>
  <script src="app/js/jquery.min.js"></script>
  <script src="app/js/scripts.js"></script>
   <!-- =============== VENDOR SCRIPTS ===============-->
   <!-- MODERNIZR-->
   <script src="vendor/modernizr/modernizr.custom.js"></script>
   <!-- MATCHMEDIA POLYFILL-->
   <script src="vendor/matchMedia/matchMedia.js"></script>
   <!-- JQUERY-->
   <script src="vendor/jquery/dist/jquery.js"></script>
   <!-- BOOTSTRAP-->
   <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
   <!-- STORAGE API-->
   <script src="vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
   <!-- JQUERY EASING-->
   <script src="vendor/jquery.easing/js/jquery.easing.js"></script>
   <!-- ANIMO-->
   <script src="vendor/animo.js/animo.js"></script>
   <!-- SLIMSCROLL-->
   <script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
   <!-- SCREENFULL-->
   <script src="vendor/screenfull/dist/screenfull.js"></script>
   <!-- LOCALIZE-->
   <script src="vendor/jquery-localize-i18n/dist/jquery.localize.js"></script>
   <!-- RTL demo-->
   <script src="app/js/demo/demo-rtl.js"></script>
   <!-- =============== PAGE VENDOR SCRIPTS ===============-->
   <!-- SPARKLINE-->
   <script src="vendor/sparkline/index.js"></script>
   <!-- FLOT CHART-->
   <script src="vendor/flot/jquery.flot.js"></script>
   <script src="vendor/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
   <script src="vendor/flot/jquery.flot.resize.js"></script>
   <script src="vendor/flot/jquery.flot.pie.js"></script>
   <script src="vendor/flot/jquery.flot.time.js"></script>
   <script src="vendor/flot/jquery.flot.categories.js"></script>
   <script src="vendor/flot-spline/js/jquery.flot.spline.min.js"></script>
   <!-- EASY PIE CHART-->
   <script src="vendor/jquery.easy-pie-chart/dist/jquery.easypiechart.js"></script>
   <!-- MOMENT JS-->
   <script src="vendor/moment/min/moment-with-locales.min.js"></script>
   <!-- DEMO-->
   <script src="app/js/demo/demo-flot.js"></script>
   <!-- =============== APP SCRIPTS ===============-->
   <script src="app/js/app.js"></script>
   <script src="app/js/drawer.js"></script>
   <script src="js/index.js"></script>
   
</body>

</html>