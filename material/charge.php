<?php
  require_once('config.php');

  $token  = $_POST['stripeToken'];
  
  
	// create a new customer if our current user doesn't have one
	$customer = \Stripe\Customer::create(array(
			'card' => $token,
			'email' => $_POST['stripeEmail'],
			
		)
	);
 
	$customer_id = $customer->id;
	
	$invoiceItem=\Stripe\InvoiceItem::create(array(
    "customer" => $customer_id,
    "amount" => 1000,
    "currency" => "usd",
    "description" => "One-time setup fee")
);
 
if( $customer_id ) {
 
 $subscription =\Stripe\Subscription::create(array(
  "customer" => $customer_id,
  "items" => array(
    array(
      "plan" => "Monthly-Plan",
    ),
  )
));


	/* $plan = \Stripe\Plan::create(array(
			  "name" => "Monthly-fees",
			  "id" => "Monthly-Plan",
			  "interval" => "month",
			  "currency" => "usd",
			  "amount" => 1000,
	)); */
	
	header('location:../loanofficersignup.php');
 
} else {
	// the customer wasn't found or created, throw an error
	throw new Exception( __( 'A customer could not be created, or no customer was found.', 'pippin' ) );
}

  /* $customer = \Stripe\Customer::create(array(
      'email' => 'customer@example.com',
      'source'  => $token
  ));

  $charge = \Stripe\Charge::create(array(
      'customer' => $customer->id,
      'amount'   => 5000,
      'currency' => 'usd'
  )); */

  echo '<h1>Successfully charged $50.00!</h1>';
?>