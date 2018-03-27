$(document).ready(function() {
	
	loadprivacypolicy();
	
	$("#business_form").on('submit',(function(e){
		e.preventDefault();
		var Privacy = document.getElementById('Privacy').value;
		var terms = document.getElementById('terms').value;
		
		//alert(privacy+","+terms);
		$.ajax({ 
							type: "POST",
							url: "ajax/privacy_data.php",
							data:{'privacy':Privacy,'terms':terms},
							success: function(data)
							{
							
								//$('#msg_save').html(data);
								$('#Privacy').val('');
								$('#terms').val('');
							
								
								$("#msg").html('');
								$('#businessform').hide();
								$('#new').show();
								//alert(data);
								$().toastmessage('showSuccessToast',data);
								loadprivacypolicy();
							}
					});
		
	}));
	
	$(document).on("click",".btn_del",function(){	
							
							if(confirm('Are you sure to delete it?')){
								var id = $(this).attr('value');
							//alert(dl_id);
							$.ajax({ 
							type: "POST",
							url: "ajax/privacy_data.php?id1="+id,
							success: function(data)
							{
									loadprivacypolicy();
						
							}
						});	
								
							}
							else{
								
							}								
		});
		
		$(document).on("click",'.btn_up',function(){	
							
							var did2 = $(this).attr('value');
							$("#btn_insert").attr("disabled", "disabled");
							$(".btn_update").removeAttr("disabled", "disabled");
							$('#new').hide();
							$('#co_id').val(did2);
							//alert(did2);
							$.ajax({        
										type: "POST",											
										url: "ajax/privacy_data.php",
										data:{'did2':did2},
										dataType: 'json',
										success: function(data){//alert(data);
														
										var arr=eval(data);
										
										$("#Privacy").val(arr[0]);	
										$("#terms").val(arr[1]);	
										
										
											
									   $('#businessform').show();
										
								}
							});				
												
		});
		
		$(document).on("click",".btn_update",function(){
			
			   var privacy = document.getElementById('Privacy').value;
			   var terms = document.getElementById('terms').value;
				
				
				var typeid=document.getElementById('co_id').value;
				//alert(dept+""+dt+""+dt_id);
				
				$.ajax({ 
							type: "POST",
							url: "ajax/privacy_data.php",
							data:{'privacy1':privacy,'terms1':terms,'typeid':typeid},
							success: function(data)
							{
								$('#Privacy').val('');
								$('#terms').val('');
								
								$("#msg").html('');
								
								$('#businessform').hide();
								$('#new').show();
								$().toastmessage('showSuccessToast',data);
								loadprivacypolicy();	
	
								
                            $("#btn_insert").removeAttr("disabled", "disabled");
							$(".btn_update").attr("disabled", "disabled");								
								
							}
					});
			
		});
	
});

function loadprivacypolicy()
  {
	  var id='all';
	$.ajax({ 
						type: "POST",
						url: "ajax/privacy_data.php?id="+id,
						//dataType:'json',
						success: function(data)
						{
							$('#table_data').html(data);
						}
				});
  }