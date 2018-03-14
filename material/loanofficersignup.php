<?php
include('db/connection.php');
$sql="SELECT * FROM `plan` where id=(select max(id) from plan)";
$planid='';$planname='';$planamount='';$startdt='';$enddt='';$signupamt='';$result='';
$data=$dbh->query($sql);
foreach($data as $r){
	$planid=$r['id'];
	$planname=$r['planname'];
	$planamount=$r['planamount'];
	$startdt=$r['planstartdate'];
	$enddt = date('Y-m-d',strtotime('+1 month',  strtotime($startdt)));
	$signupamt=$r['signupamount'];	
}

if($data->rowCount() != 0){  
	
// Stripe library
require 'stripe/stripe/Stripe.php';

$params = array(
	"testmode"   => "on",
	"private_live_key" => "sk_live_xxxxxxxxxxxxxxxxxxxxx",
	"public_live_key"  => "pk_live_xxxxxxxxxxxxxxxxxxxxx",
	"private_test_key" => "sk_test_7K4E2CmXqaGkIxhNYwM8wR7w",
	"public_test_key"  => "pk_test_QdkK8IGpYRDnJrgfaeTVyz2J"
);

if ($params['testmode'] == "on") {
	Stripe::setApiKey($params['private_test_key']);
	$pubkey = $params['public_test_key'];
} else {
	Stripe::setApiKey($params['private_live_key']);
	$pubkey = $params['public_live_key'];
} 

if(isset($_POST['stripeToken']))
{	
    $token  = $_POST['stripeToken'];
    $email  = $_POST['useremail'];
    $id  = $_POST['userid'];
	$password=$_POST['userpassword'];
	/* $name=$_POST['name'];
	$email=$_POST['email'];
	$photo=$_POST['file_attach'];
	$phone=$_POST['phone'];
	$address=$_POST['address'];
	$state=isset($_POST['state']);
	$zipcode=$_POST['zipcode'];
	$lender=$_POST['lender'];
	$password=$_POST['password'];
	$hear=$_POST['hear'];  */
	try {
			
			// create a new customer if our current user doesn't have one
	$customer = Stripe_Customer::create(array(
			'card' => $token,
			'email' => $email,
			
		)
	);
 
	$customer_id = $customer->id;
	
	$invoiceItem=Stripe_InvoiceItem::create(array(
    "customer" => $customer_id,
    "amount" => $signupamt,
    "currency" => "usd",
    "description" => "One-time setup fee")
);

if( $customer_id ) {
 
 $subscription =Stripe_Subscription::create(array(
  "customer" => $customer_id,
  "items" => array(
    array(
      "plan" => $planname,
    ),
  )
));

$a="update loanofficer_master set planid='$planid',stripeid='$customer_id',startdate='$startdt',enddate='$enddt',status='Active' where id='$id'";
if($dbh->query($a)){
	//$result = "Payment successful, Thank You!";
	            $email_from = 'arzoo.rkcet@gmail.com';
	            $subject='Thank you for signing up';
				
 
				 $headers  = 'MIME-Version: 1.0' . "\r\n";
				 $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
				 $headers .= "From: ".$email_from."\r\n";
				 
				 $message="	  
						 <p>
						 URL:
						 <a href='http://http://loanapp-app.herokuapp.com/material/login.php'>Click Here To Login</a>
						 </p>
						 <p>
						 User ID:
						 $email 	   
						 </p>
						 <p>
						 Password:
						 $password
                         </p>						 
				   ";
				mail($email,$subject,$message,$headers);
				
}
		// Payment has succeeded, no exceptions were thrown or otherwise caught				

		

	}} catch(Stripe_CardError $e) {			

	$error = $e->getMessage();
		$result = "Payment processing error";

	} catch (Stripe_InvalidRequestError $e) {
		$result = "Payment processing error";		  
	} catch (Stripe_AuthenticationError $e) {
		$result = "Payment processing error";
	} catch (Stripe_ApiConnectionError $e) {
		$result = "Payment processing error";
	} catch (Stripe_Error $e) {
		$result = "Payment processing error";
	} catch (Exception $e) {

		if ($e->getMessage() == "zip_check_invalid") {
			$result = "Payment processing error";
		} else if ($e->getMessage() == "address_check_invalid") {
			$result = "Payment processing error";
		} else if ($e->getMessage() == "cvc_check_invalid") {
			$result = "Payment processing error";
		} else {
			$result = "Payment processing error";
		}		  
	}
	
	//echo "<BR>Stripe Payment Status : ".$result;
	//print_r($charge); exit;
 }
}else{
	$result = "Plan not Created by Admin !!!";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Loan Officer Signup</title>
   <!-- =============== VENDOR STYLES ===============-->
   <!-- FONT AWESOME-->
   <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
   <!-- SIMPLE LINE ICONS-->
   <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
   <!-- ANIMATE.CSS-->
   <link rel="stylesheet" href="vendor/animate.css/animate.min.css">
   <!-- WHIRL (spinners)-->
   <link rel="stylesheet" href="vendor/whirl/dist/whirl.css">
   <!-- DATATABLES-->
   <link rel="stylesheet" href="vendor/datatables-colvis/css/dataTables.colVis.css">
   <link rel="stylesheet" href="vendor/datatables/media/css/dataTables.bootstrap.css">
   <link rel="stylesheet" href="vendor/dataTables.fontAwesome/index.css">
   <!-- =============== PAGE VENDOR STYLES ===============-->
   <!-- WEATHER ICONS-->
   <link rel="stylesheet" href="vendor/weather-icons/css/weather-icons.min.css">
   <!-- =============== BOOTSTRAP STYLES ===============-->
   <link rel="stylesheet" href="app/css/bootstrap.css" id="bscss">
   <!-- =============== APP STYLES ===============-->
   <link rel="stylesheet" href="app/css/app.css" id="maincss">
   <!-- =============== Toast Message ===============-->
   <link rel="stylesheet" href="toastmessage/css/jquery.toastmessage.css" id="maincss">
</head>

<body>
   <div class="wrapper">
  
   <!-- Main section-->
   
    <div class="content-wrapper">
					<div class="clearfix">
						<div class="pull-left">
							<h3>Loan Officer's Signup Page</h3>
						</div>
					<!--	<div class="pull-right">
						<button type="button" class="btn btn-primary" id="new"><em class="fa fa-plus"></em> Loan Officer</button>		
						</div> -->
          </div>  
            <!-- START row-->
            <div class="row">
               <div class="col-md-12">
                  <form action="" method="POST" id="loan_form">
                     <!-- START panel-->
                     <div class="panel panel-default" id="loanform">
                        <div class="panel-heading">
                       <!-- <div class="panel-title">New Loan Officer</div> -->
                        </div>
                        <div class="panel-body">
													<div class="col-md-12">
													<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Name *</label>
                              <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name*" oninvalid="this.setCustomValidity('please enter name')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Email Address *</label>
                              <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email*" oninvalid="this.setCustomValidity('please enter Email')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									      <div class="col-md-2">
                           <div class="form-group">
                              <label for="user name">Select Photo:</label>
                              <input type="file" class="form-control" id="uploadFile" name="uploadFile" accept="image/*" >
									<input type="hidden" name="file_attach" id="file_attach" value=""/>
									<div id="msg"></div>
											     </div>
                        </div>
						            <div class="col-md-2">
													<div id="container"></div>
												</div>
												</div>
												<div class="col-md-12">
												<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Phone *</label>
                              <input type="text" name="phone" id="phone" class="form-control" maxlength="10" placeholder="Enter Phone*" oninvalid="this.setCustomValidity('please enter Phone')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Address</label>
                              <textarea type="text" name="address" id="address" class="form-control" placeholder="Enter Address"></textarea>
                           </div>
						              </div>
												<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">State</label>
                              <select name="state" id="state" class="form-control m-b">
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
						              </div>
									  </div>
									  <div class="col-md-12">
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">ZIP code</label>
                              <input type="text" name="zipcode" id="zipcode" class="form-control" maxlength="6" placeholder="Enter ZIP code">
                           </div>
						              </div>
									       <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Lender</label>
                              <input type="text" name="lender" id="lender" class="form-control" placeholder="Enter Lender">
                           </div>
						              </div> 
									  <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">How did you hear about us? *</label>
                              <select name="hear" id="hear" class="form-control m-b" oninvalid="this.setCustomValidity('please select Value')" onchange="this.setCustomValidity('')" required>
									<option value="" selected disabled >---Select Data---</option>
																	
									 <option value="On the internet">On the internet</option>
									 <option value="From a friend">From a friend</option>
									 <option value="From a colleague">From a colleague</option>
									 <option value="Flyer">Flyer</option>
									 <option value="Email">Email</option>
									 <option value="SMS">SMS</option>
									 <option value="Other">Other</option>
																	
                                
                             </select>
                           </div>
						              </div>
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Password *</label>
                              <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password*" oninvalid="this.setCustomValidity('please enter password')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									  <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Re-enter Password *</label>
                              <input type="password" name="repassword" id="repassword" class="form-control" placeholder="Re-enter Password*" oninvalid="this.setCustomValidity('please enter Re-enter Password')" onchange="this.setCustomValidity('');checkpass();" required>
							<label for="repassword" id="co" style="color:red;"></label>
                           </div>
						              </div>
									  </div>
<div class="col-md-12">
	<center>
		<button type="submit" id="btn_signup" name="btn_signup" class="btn btn-primary">Signup</button>											
		<label id="paymsg" style="color:blue;"></label>							
	</center>
</div>
</form>
<form action="" method="POST" id="payment-form">
<div class="col-md-12" id="payment_div" style="display:none;">
	<div class="col-md-6">
		<h3>Payment Details</h3>
		<hr width="50%" align="left"/>
		<h4>Monthly Subscription :<span id="monthlyfee"><?php echo ' '.'$ '.($signupamt/100);?></span></h4><br/>
		<h4>One Time Setup Fee :<span id="setupfee"><?php echo ' '.'$ '.($planamount/100);?></span></h4><br/>
		<h4>Total :<span id="monthlyfee"><?php echo ' '.'$ '.(($planamount+$signupamt)/100);?></span></h4>
	</div>
	<div class="col-md-6">
		<h3>Card Details</h3>
		<hr width="50%" align="left"/>
	<span style="color:red;" class="payment-errors"></span>

  <div class="form-group">
    <label>
      <span>Card Number</span>
      <input type="text" size="20" class="form-control" maxlength="16" placeholder="Enter Card No" data-stripe="number" oninvalid="this.setCustomValidity('please enter card no')" onchange="this.setCustomValidity('');" required>
    </label>
  </div>

  <div class="form-group">
    <label>
      <span>Expiration (MM/YY)</span>
      <input type="text" size="2" class="form-control" maxlength="2" placeholder="MM" data-stripe="exp_month" oninvalid="this.setCustomValidity('please enter MM')" onchange="this.setCustomValidity('');" required>
    
       <span> / </span>
      <input type="text" size="2" class="form-control" maxlength="2" placeholder="YY" data-stripe="exp_year" oninvalid="this.setCustomValidity('please enter YY')" onchange="this.setCustomValidity('');" required>
	  </label>
  </div>

  <div class="form-group">
    <label>
      <span>CVC</span>
      <input type="text" size="4" class="form-control" maxlength="4" placeholder="CVC" data-stripe="cvc" oninvalid="this.setCustomValidity('please enter CVC')" onchange="this.setCustomValidity('');" required>
    </label>
  </div>
</div>
</div>
						         
<div class="col-md-12" id="payment_btn" style="display:none;">
	<div class="col-md-4"></div>
        <div class="col-md-4">
            <center> 
				<!-- <button type="submit" id="btn_insert" class="btn btn-primary">Signup</button>	-->												
				<input type="submit" class="submit btn btn-primary" value="Submit Payment">
				<div id="msg1"></div>
				<input type="hidden" id="userid" name="userid"/>
				<input type="hidden" id="useremail" name="useremail"/>
				<input type="hidden" id="userpassword" name="userpassword"/>
				<br/>
				
			</center>
        </div>
		<div class="col-md-4"></div>
</div>       
</div>
</div>
</form>
                        
                     </div>
                     <!-- END panel-->
                 
               </div>
			  </div>
	
	<br/>
   <?php include('footer.php');?>
   </div>
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
    <!-- =============== Toast Message ===============-->
 <script type="text/javascript" src="toastmessage/javascript/jquery.toastmessage.js"></script>
 
   <!-- =============== APP SCRIPTS ===============-->
   <script src="app/js/app.js"></script>
   <script type="text/javascript" src="app/js/AjaxFileUpload.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<!-- TO DO : Place below JS code in js file and include that JS file -->
<script type="text/javascript" src="js/loanofficer_signup.js"></script>
<script type="text/javascript">
	Stripe.setPublishableKey('<?php echo $params['public_test_key']; ?>');
  
	$(function() {
	  var $form = $('#payment-form');
	  $form.submit(function(event) {
		  
		  $("#msg1").html("<font color='red'><i class='fa fa-refresh fa-spin fa-3x fa-fw'></i>Please wait, Payment processing .....</font>");
		  
		// Disable the submit button to prevent repeated clicks:
		$form.find('.submit').prop('disabled', true);
	
		// Request a token from Stripe:
		Stripe.card.createToken($form, stripeResponseHandler);
	
		// Prevent the form from being submitted:
		return false;
	  });
	});

	function stripeResponseHandler(status, response) {
	  // Grab the form:
	  var $form = $('#payment-form');
	
	  if (response.error) { // Problem!
	
		// Show the errors on the form:
		$form.find('.payment-errors').text(response.error.message);
		$form.find('.submit').prop('disabled', false); // Re-enable submission
	
	  } else { // Token was created!
	
		// Get the token ID:
		var token = response.id;

		// Insert the token ID into the form so it gets submitted to the server:
		$form.append($('<input type="hidden" name="stripeToken">').val(token));
	
		// Submit the form:
		$form.get(0).submit();
		
		$('#paymsg').html('Payment successful, Thank You!');
		$("#msg1").html("");
	  }
	};
</script>
   <script type="text/javascript">
 
    $(document).ready(function() {
	
	$('#uploadFile').ajaxfileupload({
  //'action' : 'callAction',
  'action' : 'ajax/upload.php',
  'onStart': function() {$("#msg").html("<font color='red'><i class='fa fa-refresh fa-spin fa-3x fa-fw'></i>Please wait file is uploading.....</font>"); },
  'onComplete' : function(response) {
	 // alert(response);
      if(response==''){
          $("#msg").html("<font color='red'>"+"Error in file upload"+"</font>");
      }else{
          // $("#message").html("<font color='green'>"+"file upload successfully"+"</font>");
           var res=response.split("/");
           $("#file_attach").val(response);
           $("#msg").html("<font color='green'>"+res[2]+"</font>");
		   $('#container').empty();
		   var url = getRootUrl();  
		   var img = $('<img />').addClass('img').attr({
						'id': 'myImage',
						//'src': url+'material/'+response,
						'src': response,
						'width': 100,
												
						}).appendTo('#container');
      } 

    }});
  });
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
function getRootUrl() {
	return window.location.origin?window.location.origin+'/':window.location.protocol+'/'+window.location.host+'/';
}
</script>  

</body>

</html>