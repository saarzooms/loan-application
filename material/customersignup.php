<?php
include('db/connection.php');
?>
<!DOCTYPE>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Customer Signup Page</title>
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
   <!-- =============== Toast Message ===============-->
   <link rel="stylesheet" href="toastmessage/css/jquery.toastmessage.css" id="maincss">
</head>

<body>
   <div class="wrapper" style="margin-top:-10px;">
      <div class="block-center mt-xl wd-xl">
         <!-- START panel-->
         <div class="panel panel-dark panel-flat">
            <div class="panel-heading text-center">
               <a href="#">
                  <img src="app/img/logo.png" alt="Image" class="block-center img-rounded">
               </a>
            </div>
            <div class="panel-body">
               <p class="text-center pv">SIGN UP TO CONTINUE.</p>
               <form role="form" method="post" action="#" id="signup_Form" class="mb-lg">
											<div class="form-group has-feedback">
                     <input id="name" name="name" type="text" placeholder="Enter Your Name*" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter your name')" onchange="this.setCustomValidity('')">
                     
                  </div>
                  <div class="form-group has-feedback">
                     <input id="email" name="email" type="email" placeholder="Enter email*" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter email')" onchange="this.setCustomValidity('')">
                     <label id="msg" style="color:red;"></label>
                  </div>
				           <div class="form-group has-feedback">
                     <input id="mobile" name="mobile" type="text" maxlength="10" placeholder="Enter contact no*" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter contact no')" onchange="this.setCustomValidity('')">
                     
                  </div>
											<div class="form-group has-feedback">
                     <textarea id="address" name="address" placeholder="Enter Your Address" autocomplete="off" required class="form-control" oninvalid="this.setCustomValidity('please enter address')" onchange="this.setCustomValidity('')"></textarea>
                     
                  </div>
				           <div class="form-group has-feedback">
                     <select name="state" id="state" class="form-control m-b" oninvalid="this.setCustomValidity('please select state')" required>
																		<option value="" selected disabled >---Select State---</option>
																	<?php
																	$sql = "select * from state_table";
																	foreach ($dbh->query($sql) as $row)
																	{
																		?>
																		 <option value="<?php echo $row['state_name'];?>"><?php echo $row['state_name'];?></option>
																		<?php
																	}
																	?>
                                
                             </select>
                     
                  </div>
											<div class="form-group has-feedback">
                     <input type="text" name="zipcode" id="zipcode" class="form-control" maxlength="6" placeholder="Enter ZIP code*" oninvalid="this.setCustomValidity('please enter ZIP code')" onchange="this.setCustomValidity('')" required>
                     
                  </div>
                  <div class="form-group has-feedback">
                     <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password*" oninvalid="this.setCustomValidity('please enter password')" onchange="this.setCustomValidity('')" required>
                    
                  </div>
				           <div class="form-group has-feedback">
                     <input type="password" name="repassword" id="repassword" class="form-control" placeholder="Re-enter Password*" oninvalid="this.setCustomValidity('please enter Re-enter Password')" onchange="this.setCustomValidity('');checkpass();" required>
												 <label for="repassword" id="co" style="color:red;"></label>
                    
                  </div>
                  
                  <button type="submit" class="btn btn-block btn-primary mt-lg">Signup</button>
									 <label id='l' style="color:red;"></label>
               </form>
               
            </div>
         </div>
         <!-- END panel-->
         <div class="p-lg text-center">
            <span>&copy;</span>
            <span>2017</span>
            <span>-</span>
            <span>Angle</span>
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
   <!-- =============== Toast Message ===============-->
 <script type="text/javascript" src="toastmessage/javascript/jquery.toastmessage.js"></script>
   <!-- =============== APP SCRIPTS ===============-->
   <script src="app/js/app.js"></script>
   <script src="js/cus_signup.js"></script>
   <script>
			function checkpass()
		{
			
			var new_pass = document.getElementById('password').value;
			var con_pass = document.getElementById('repassword').value;
			
			if(new_pass == con_pass)
			{
				$('#co').html('');
			}
			else
			{
				$('#co').html('confirm password do not match !!!');
				$('#repassword').val('');
			}							
							
		}
		</script>
</body>

</html>