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
   <!-- =============== VENDOR STYLES ===============-->
   <link rel="stylesheet" href="app/css/styles.css">
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
  
</head>

<body>
   <div class="wrapper">
   <?php include('header.php');?>
   <section>
    <div class="content-wrapper">
      <!-- <button class="btn btn-primary" data-toggle="drawer" data-target="#drawer-2">Right Drawer</button> -->
				<div class="content-heading">
						<?php
						if($roll=='Loanofficer'){
						?>
							<div class="pull-right">
                  <div class="btn-group">
                     <button class="btn btn-primary" data-toggle="drawer" data-target="#drawer-2">My Partner</button>
                  </div>
               </div>
			   <?php
			   }
			   ?>
               Dashboard
               <small>Welcome to Angle!</small>
				</div>
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
                
    </div>
	</section>
   <?php include('footer.php');?>
   </div>
   </div>
   <!-- setting start --->
   <div class="settings">
      <div class="settings-inner">
         <div class="settings-ctrl">
            <em class="fa fa-cogs"></em>
         </div>
         <div class="settings-content">
            <p>Themes</p>
            <div class="setting-colors">
               <div data-load-css="css/theme-a.css" class="setting-color bg-info checked">
                  <em class="fa fa-check"></em>
               </div>
               <div data-load-css="css/theme-b.css" class="setting-color bg-success">
                  <em class="fa fa-check"></em>
               </div>
               <div data-load-css="css/theme-c.css" class="setting-color bg-purple">
                  <em class="fa fa-check"></em>
               </div>
               <div data-load-css="css/theme-d.css" class="setting-color bg-primary">
                  <em class="fa fa-check"></em>
               </div>
            </div>
            <p>Layout</p>
            <div class="clearfix">
               <p class="pull-left">RTL</p>
               <div class="pull-right">
                  <label for="rtlswitch" class="switch">
                     <input type="checkbox" id="rtlswitch">
                     <span></span>
                  </label>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- setting over -->
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
   <script src="../vendor/animo.js/animo.js"></script>
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
   <script>
   $('#drawer-2').drawer('toggle')
   </script>
   <div class="drawer" id="drawer-2" data-placement="right">
    <div class="drawer-dialog">
				<button type="button" data-dismiss="drawer" aria-label="Close" class="close" style="margin-right:10px;">
                  <span aria-hidden="true">&times;</span>
               </button>
        <div class="drawer-header">
            <h4>My Trusted Partner List</h4>
        </div>
		    
        <div class="drawer-body">
					
           <div class="drawer-header topnavbar" style="color:#fff;height:30px;"> <h4 style="margin-top:-10px;">Business Type-2</h4></div><hr/>
                           <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						         <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						   <div class="drawer-header topnavbar" style="color:#fff;height:30px;"> <h4 style="margin-top:-10px;">Business Type-1</h4></div><hr/>
						   <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						   <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						   <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						   <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
						   <div class="media-box">
                              <div class="pull-left">
                                 <img src="app/img/user/02.jpg" alt="Image" class="media-box-object img-circle thumb64">
                              </div>
                              <div class="media-box-body clearfix">
                                
                                 <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Arzoo Shaikh</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>Ally Soft</strong><br>
									                <strong class="media-box-heading text-primary">
                                    <span class="text-left"></span>8866152292</strong>
                                 
                              </div>
                           </div><hr/>
                        
        </div>
       
    </div>
</div>
</body>

</html>