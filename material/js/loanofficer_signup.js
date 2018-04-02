$(document).ready(function() {
	$("#loan_form").on('submit',(function(e){
		e.preventDefault();
		var name = document.getElementById('name').value;
		var email = document.getElementById('email').value;
		var photo = document.getElementById('file_attach').value;
		var phone = document.getElementById('phone').value;
		var address = document.getElementById('address').value;
		var state = document.getElementById('state').value;
		var zipcode = document.getElementById('zipcode').value;
		var lender = document.getElementById('lender').value;
		var pass = document.getElementById('password').value;
		var hear = document.getElementById('hear').value;
		
		
		//alert(cat_nm+","+cat_pos+","+file_attach+","+color);
		$.ajax({ 
							type: "POST",
							url: "ajax/loanofficer_signup_data.php?name="+name+"&email="+email+"&photo="+photo+"&phone="+phone+"&address="+address+"&state="+state+"&zipcode="+zipcode+"&lender="+lender+"&password="+pass+"&hear="+hear,
							success: function(data)
							{
								var res=data.split('-');
								$('#userid').attr('value',res[0]);
								$('#useremail').attr('value',res[1]);
								$('#userpassword').attr('value',res[2]);
								$('#btn_signup').hide();
								$('#payment_div').show();
								$('#payment_btn').show();
								$('#plan_details').hide();
								//$('#msg_save').html(data);
								/* $('#name').val('');
								$('#email').val('');
								$('#uploadFile').val('');
								$('#file_attach').val('');
								$('#phone').val('');
								$('#address').val('');
								$('#state').val('');
								$('#zipcode').val('');
								$('#lender').val('');
								$('#password').val('');
								$('#repassword').val('');
								
								$("#msg").html('');
								$('#container').empty(); */
								
							}
					});
		
	}));
	
	$(document).on('change','#plantype',function(){
		var plantype=$('#plantype').val();
		$.ajax({ 
			type: "POST",
			url: "ajax/loanofficer_signup_data.php",
			data:{'type':plantype},
			success: function(data)
			{
				var arr=eval(data);
				$('#monthlyfee1').html(' '+'$ '+arr[0]);
				$('#setupfee1').html(' '+'$ '+arr[1]);
				$('#totalfee1').html(' '+'$ '+arr[2]);
				
				$('#monthlyfee').html(' '+'$ '+arr[0]);
				$('#setupfee').html(' '+'$ '+arr[1]);
				$('#totalfee').html(' '+'$ '+arr[2]);
				
				$('#plan_details').show();
				$('#ptype').attr('value',plantype);
			}
		});
	});

});