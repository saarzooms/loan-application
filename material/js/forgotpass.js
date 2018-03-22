$(document).ready(function() {
	$(document).on("submit","#Login_Form",function(e){
	
		e.preventDefault();
		var email = document.getElementById('email').value;
		$.ajax({ 
							type: "POST",
							url: "ajax/forgotpassword_data.php",
							data:{'email':email},
							success: function(data)
							{
								$().toastmessage('showSuccessToast',data);
								$('#email').val('');
							}
		});
	});
	
	$(document).on("blur","#email",function(e){
		e.preventDefault();
		var email = document.getElementById('email').value;
		
		$.ajax({ 
							type: "POST",
							url: "ajax/forgotpassword_data.php",
							data:{'emailid':email},
							success: function(data)
							{
								if(data == 0){
									$('#l').html('Entered Email does not exist !!!');
									$('#forgot_pass').attr('disabled','disabled');
								}else{
									$('#l').html('');
									
									$('#forgot_pass').removeAttr('disabled');
								}
							}
		});
	});
	
	$(document).on("blur","#conpass",function(e){
		e.preventDefault();
		var newpass = document.getElementById('newpass').value;
		var conpass = document.getElementById('conpass').value;
		
		if(newpass == conpass)
		{
			$('#msg').html('');
			$('#btn_reset').removeAttr('disabled');
		}else{
			$('#msg').html('confirm Password not matched !!!');
			$('#btn_reset').attr('disabled','disabled');
		}
	});
	
	$(document).on("submit","#reset_Form",function(e){
	
		e.preventDefault();
		var url=window.location.href;
		var res=url.split('value=');
		
		var newpass = document.getElementById('newpass').value;
		$.ajax({ 
							type: "POST",
							url: "ajax/forgotpassword_data.php",
							data:{'useremail':res[1],'newpass':newpass},
							success: function(data)
							{
								if(data == 1){
									$().toastmessage('showSuccessToast','Password Reset Successfully !!!');
									window.location.href="\login.php";
								}else{
									$().toastmessage('showSuccessToast','Problem in Reset Password !!!');
								}
								
							}
		});
	});
});
