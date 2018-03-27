<?php
include('db/connection.php');
$terms='';$privacy='';
$sql="select * from privacy_policy";
foreach($dbh->query($sql) as $row)
{
	$privacy=addslashes($row['privacypolicy']);
	$terms=addslashes($row['terms_of_service']);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Login Page</title>
   <link rel='icon' type='image/x-icon' href='favicon.ico' />
   <!-- =============== VENDOR STYLES ===============-->
   <!-- FONT AWESOME-->
   <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
   <!-- SIMPLE LINE ICONS-->
   <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
   <!-- =============== BOOTSTRAP STYLES ===============-->
   <link rel="stylesheet" href="app/css/bootstrap.css" id="bscss">
   <!-- =============== APP STYLES ===============-->
   <link rel="stylesheet" href="app/css/app.css" id="maincss">
</head>

<body>
   <div class="wrapper" style="margin-top:100px;">
      <div class="block-center mt-xl wd-xl">
         <!-- START panel-->
         <div class="panel panel-dark panel-flat">
            <div class="panel-heading text-center">
               <a href="#">
                  <img src="app/img/logo.png" alt="Image" class="block-center img-rounded">
               </a>
            </div>
            <div class="panel-body">
               <p class="text-center pv" style="color:#4c8e41">SIGN IN TO CONTINUE.</p>
               <form role="form" method="post" action="#" id="Login_Form" class="mb-lg">
                  <div class="form-group has-feedback">
                     <input id="Email_Id_Login" name="Email_Id_Login" type="email" placeholder="Enter email" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter email')" onchange="this.setCustomValidity('')">
                     <span class="fa fa-envelope form-control-feedback text-muted"></span>
                  </div>
                  <div class="form-group has-feedback">
                     <input id="Password_Login" name="Password_Login" type="password" placeholder="Password" required class="form-control" oninvalid="this.setCustomValidity('please enter password')" onchange="this.setCustomValidity('')">
                     <span class="fa fa-lock form-control-feedback text-muted"></span>
                  </div>
                  <div class="clearfix">
                     <div class="checkbox c-checkbox pull-left mt0" id="terms" style="display:none;">
                        <label>
                           <input type="checkbox" id="check" value="" name="remember" >
                           <span class="fa fa-check"></span><a data-toggle="modal" data-target="#myModal"> I accept the Terms and Conditions</a></label>
                     </div>
					 <div class="checkbox c-checkbox pull-left mt0" id="terms1" style="display:none;">
                        <label>
                           <input type="checkbox" id="check1" value="" name="remember" >
                           <span class="fa fa-check"></span><a data-toggle="modal" data-target="#myModal1"> I accept the Privacy Policy</a></label>
                     </div>
                   <!--  <div class="pull-right"><a href="#" class="text-muted">Forgot your password?</a> -->
                     </div>
                  </div>
                  <button type="submit" class="btn btn-block btn-primary mt-lg" style="background-color:#90b63d">Login</button>
									 <label id='l' style="color:red;"></label>
               </form>
			   <br/>
			   <center>
               <a href="forgotpassword.php" id="resetpass" style="color:#4c8e41;">Forgot Password?</a>
			   </center>
			   
            </div>
         </div>
         <!-- END panel-->
         <div class="p-lg text-center">
            <span>&copy;</span>
            <span>2017</span>
            <span>-</span>
            <span>streetwork</span>
            <br>
            <span>Bootstrap Admin Template</span>
         </div>
      </div>
   </div>
   <!-- Modal for terms and condition-->
   <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal fade">
      <div class="modal-dialog" style="height:800px !important;">
         <div class="modal-content" style="height: 60% !important;overflow-Y:auto;">
            <div class="modal-header" style="background-color:#90b63d;color:#fff;">
               <button type="button" data-dismiss="modal" aria-label="Close" class="close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 id="myModalLabel" class="modal-title">Terms and Conditions</h4>
            </div>
            <div class="modal-body">
				<?php echo $terms;?> 
			</div>
            <div class="modal-footer">
               <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
            </div>
         </div>
      </div>
   </div> 
   
   <!-- Modal for privacy policy-->
   <div id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal fade">
      <div class="modal-dialog" style="height:800px !important;">
         <div class="modal-content" style="height: 60% !important;overflow-Y:auto;">
            <div class="modal-header" style="background-color:#90b63d;color:#fff;">
               <button type="button" data-dismiss="modal" aria-label="Close" class="close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 id="myModalLabel" class="modal-title">Privacy Policy</h4>
            </div>
            <div class="modal-body">
				<?php echo $privacy;?> 
			</div>
            <div class="modal-footer">
               <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
            </div>
         </div>
      </div>
   </div>
   
   <!-- =============== VENDOR SCRIPTS ===============-->
   <!-- MODERNIZR-->
   <script src="vendor/modernizr/modernizr.custom.js"></script>
   <!-- JQUERY-->
   <script src="vendor/jquery/dist/jquery.js"></script>
   <!-- BOOTSTRAP-->
   <script src="vendor/bootstrap/dist/js/bootstrap.js"></script>
   <!-- STORAGE API-->
   <script src="vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
   <!-- PARSLEY-->
   <script src="vendor/parsleyjs/dist/parsley.min.js"></script>
   <!-- =============== APP SCRIPTS ===============-->
   <script src="app/js/app.js"></script>
   <script src="js/login.js"></script>
</body>

</html>