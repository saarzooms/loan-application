<?php require_once('config.php'); ?>
<center>
<h3>One Time Setup Fees:<strong> 10 $</strong></h3>
<h3>Signup Fees:<strong> 10 $/month</strong></h3>
<h3>Total Fees:<strong> 20 $</strong></h3>
<form action="charge.php" method="post">
  <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
          data-key="<?php echo $stripe['publishable_key']; ?>"
          data-description="Loan Officer SIgnUp Fees"
          data-amount="2000"
          data-locale="auto"></script>
</form>
</center>