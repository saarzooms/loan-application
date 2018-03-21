<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Reset Password</title>
   <!-- =============== VENDOR STYLES ===============-->
   <!-- FONT AWESOME-->
   <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
   <!-- SIMPLE LINE ICONS-->
   <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
   <!-- =============== BOOTSTRAP STYLES ===============-->
   <link rel="stylesheet" href="app/css/bootstrap.css" id="bscss">
   <!-- =============== Toast Message ===============-->
   <link rel="stylesheet" href="toastmessage/css/jquery.toastmessage.css" id="maincss">
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
               <p class="text-center pv" style="color:#4c8e41">Reset Your Password</p>
               <form role="form" method="post" action="#" id="Login_Form" class="mb-lg">
                  <div class="form-group has-feedback">
                     <input id="newpass" name="newpass" type="password" placeholder="Enter New Password" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter new password')" onchange="this.setCustomValidity('')">
                    
                  </div>
				  <div class="form-group has-feedback">
                     <input id="conpass" name="conpass" type="text" placeholder="Enter Confirm Password" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter Confirm password')" onchange="this.setCustomValidity('')">
                    
                  </div>
                 
            </div>
            <button type="submit" class="btn btn-block btn-primary mt-lg" style="background-color:#90b63d">Submit</button>
			<label id='l' style="color:red;"></label>
               </form>
			   
			   
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
   <!-- =============== Toast Message ===============-->
   <script type="text/javascript" src="toastmessage/javascript/jquery.toastmessage.js"></script>
  
</body>

</html>