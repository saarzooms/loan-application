$(document).ready(function() {
	
	$("#Login_Form").on('submit',(function(e){
	
		e.preventDefault();
			
		var username = document.getElementById('Email_Id_Login').value;
		var pass = document.getElementById('Password_Login').value;
		
		//alert(username +' '+pass);
		
		$.ajax({ 
					type: "POST",
					url: "ajax/login_data.php?username="+username+"&pass="+pass,
					success: function(data)
					{
						//alert(data);
						var result = $.trim(data);
						//$('#l').html(result);		
						 if(result == 1)
						{
							$('#l').html('');
							$('#Email_Id_Login').val('');
							$('#Password_Login').val('');
							
							window.location="index.php";
						}else if(result == 2){
							$('#l').html('Your Subscription is over!!!');
							$('#Email_Id_Login').val('');
							$('#Password_Login').val('');
						}
						else{
							$('#l').html('Invalid Username or Password !!!');
							$('#Email_Id_Login').val('');
							$('#Password_Login').val('');
						} 
						
					}
			
	    });
	
	}));
	
	$("#Email_Id_Login").blur(function(){
        var email = document.getElementById('Email_Id_Login').value;
		$.ajax({ 
					type: "POST",
					url: "ajax/login_data.php?email="+email,
					success: function(data)
					{
						//var result = $.trim(data);
						var res = eval(data);
						//var res=result[0].split('-');
						if(res[0] == 'Loanofficer')
						{
							if(res[1] == 0){
								$('#terms').show();
								$("#check").attr("oninvalid", "this.setCustomValidity('To sign in to NumberCruncher, you will have to agree to both the Privacy Policy & the Terms of Use')");
								$("#check").attr("onchange", "this.setCustomValidity('')");
								$("#check").prop('required',true);
							}else{
								$('#terms').hide();
								$("#check").removeAttr("oninvalid");
								$("#check").removeAttr("onchange");
								$("#check").removeAttr('required');
							}
							if(res[2] == 0){
								$('#terms1').show();
								$("#check1").attr("oninvalid", "this.setCustomValidity('To sign in to NumberCruncher, you will have to agree to both the Privacy Policy & the Terms of Use')");
								$("#check1").attr("onchange", "this.setCustomValidity('')");
								$("#check1").prop('required',true);
							}else{
								$('#terms1').hide();
								$("#check1").removeAttr("oninvalid");
								$("#check1").removeAttr("onchange");
								$("#check1").removeAttr('required');
							}
						}
						else if(res[0] == 'Customer'){
							if(res[1] == 0){
								$('#terms').show();
								$("#check").attr("oninvalid", "this.setCustomValidity('To sign in to NumberCruncher, you will have to agree to both the Privacy Policy & the Terms of Use')");
								$("#check").attr("onchange", "this.setCustomValidity('')");
								$("#check").prop('required',true);
							}else{
								$('#terms').hide();
								$("#check").removeAttr("oninvalid");
								$("#check").removeAttr("onchange");
								$("#check").removeAttr('required');
							}
							if(res[2] == 0){
								$('#terms1').show();
								$("#check1").attr("oninvalid", "this.setCustomValidity('To sign in to NumberCruncher, you will have to agree to both the Privacy Policy & the Terms of Use')");
								$("#check1").attr("onchange", "this.setCustomValidity('')");
								$("#check1").prop('required',true);
							}else{
								$('#terms1').hide();
								$("#check1").removeAttr("oninvalid");
								$("#check").removeAttr("onchange");
								$("#check1").removeAttr('required');
							}
						}
						else if(res[0] == 'Admin'){
							$('#terms').hide();
							$("#check").removeAttr("oninvalid");
							$("#check").removeAttr("onchange");
							$("#check").removeAttr('required');
							$('#terms1').hide();
							$("#check1").removeAttr("oninvalid");
							$("#check1").removeAttr("onchange");
							$("#check1").removeAttr('required');
						}
						else{}
						
					}
			
	    });
    });
	
});