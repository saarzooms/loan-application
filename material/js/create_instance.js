$(document).ready(function() {
	$("#loan_instance").on('submit',(function(e){
		e.preventDefault();
		
		var cust_id = document.getElementById('cust').value;
		//alert(cust_id);
		$.ajax({ 
							type: "POST",
							url: "../../loan-calculator-server/loan/newloan",
							success: function(data)
							{
								var arr = $.parseJSON(data);
								//alert(arr['loanId']);
								$.ajax({ 
										type: "POST",
										url: "ajax/createinstance_data.php?custid="+cust_id+"&loanid="+arr['loanId'],
										success: function(data)
										{
												//window.location.href="\index.html#/loan-calculator/"+arr['loanId'];
												window.open(
												  '\calculator.html#/loan-calculator/'+arr['loanId'],
												  '_blank' // <- This is what makes it open in a new window.
												);
										}
								});
							}
		});
	}));
});