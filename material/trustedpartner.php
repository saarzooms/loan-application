<?php
include('db/connection.php');
if(isset($_GET['id']))
{
	$id=$_GET['id'];
	if($id==1){
		?>
		<script>
		       alert('File Data Upload Successfully !!!');
		</script>
		<?php
	}else{
		?>
		<script>
		       alert('Please Select Valid Excel File !!!');
		</script>
		<?php
	}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>Trusted Partner</title>
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
   <!-- DATETIMEPICKER-->
   <link rel="stylesheet" href="vendor/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
   
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
   <?php include('header.php');?>
   <!-- Main section-->
   <section>
    <div class="content-wrapper">
					<div class="clearfix">
						<div class="pull-left">
							<h3>Trusted Partner List</h3>
						</div>
						<div class="pull-right">
						<button type="button" class="btn btn-primary" id="new"><em class="fa fa-plus"></em> Trusted Partner</button>		
						<button type="button" class="btn btn-primary" id="excel" data-toggle="modal" data-target="#myModal"><em class="fa fa-file-excel-o"></em> Upload File</button>		
						</div>
          <div>  
            <!-- START row-->
            <div class="row">
               <div class="col-md-12">
                  <form method="post" action="#" id="partner_form">
                     <!-- START panel-->
                     <div class="panel panel-default" id="loanform" style="display:none;">
                        <div class="panel-heading">
                           <div class="panel-title">New Trusted Partner</div>
                        </div>
                        <div class="panel-body">
													<div class="col-md-12">
													<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Select Business Type *</label>
                              <select name="type" id="type" class="form-control m-b" oninvalid="this.setCustomValidity('please select business type')" onchange="this.setCustomValidity('')" required>
																		<option value="" selected disabled >---Select Business Type---</option>
																	<?php
																	$sql = "select * from businesstype_master";
																	foreach ($dbh->query($sql) as $row)
																	{
																		?>
																		 <option value="<?php echo $row['id'];?>"><?php echo $row['businesstype_name'];?></option>
																		<?php
																	}
																	?>
                                
                             </select>
                           </div>
						              </div>
													<div class="col-md-2">
                           <div class="form-group">
                              <label for="user name">Select Photo:</label>
                              <input type="file" class="form-control" id="uploadFile" name="uploadFile[]" accept="image/*" oninvalid="this.setCustomValidity('please Select Photo')" onchange="this.setCustomValidity('')" required>
															<input type="hidden" id="file_attach" value=""/>
															<div id="msg"></div>
											     </div>
                        </div>
						            <div class="col-md-2">
													<div id="container"></div>
												</div>
												<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Email Address *</label>
                              <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email*" oninvalid="this.setCustomValidity('please enter Email')" onchange="this.setCustomValidity('')" required>
                           </div>
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
                              <label class="control-label">Business Name *</label>
                              <input type="text" name="bus" id="bus" class="form-control"  placeholder="Enter Business Name*" oninvalid="this.setCustomValidity('please enter business name')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									       <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Contact Name *</label>
                              <input type="text" name="contact" id="contact" class="form-control"  placeholder="Enter Contact Name*" oninvalid="this.setCustomValidity('please enter contact name')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									     
									  </div>
									  <div class="col-md-12">
									   <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Address *</label>
                              <textarea type="text" name="address" id="address" class="form-control" placeholder="Enter Address*" oninvalid="this.setCustomValidity('please enter Address')" onchange="this.setCustomValidity('')" required></textarea>
                           </div>
						              </div>
												
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Facebook Profile</label>
                              <input type="text" name="facebook" id="facebook" class="form-control"  placeholder="Enter Facebook Profile">
                           </div>
						              </div>
									       <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Linked In Profile</label>
                              <input type="text" name="linked" id="linked" class="form-control" placeholder="Enter Linked In Profile">
                           </div>
						              </div> 
									  </div>
									   <div class="col-md-12">
									    <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Twitter handle</label>
                              <input type="text" name="twitter" id="twitter" class="form-control" placeholder="Enter Twitter handle">
                           </div>
						              </div> 
									      <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Business Hours *</label>
                              <input type="text" name="hours" id="hours" class="form-control" placeholder="Enter Business Hours*" oninvalid="this.setCustomValidity('please enter business hours')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									  <div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Note</label>
                              <textarea  name="note" id="note" class="form-control" placeholder="Enter Address"></textarea>
                           </div>
						              </div>
									  </div>
									  <?php
									  if($roll=='Admin')
									  {
									  ?>
									  <div class="col-md-12">
									    <div class="col-md-4">
													<div class="checkbox c-checkbox pull-left mt0" id="terms">
                           <label>
                           <input type="checkbox" id="check" value="" name="check" >
                           <span class="fa fa-check"></span> Force display</label>
                        </div>
										  </div>
									    <div class="col-md-4" id="dt" style="display:none;">
													<div class="form-group">
                           <label class="control-label">Force display till *</label>
                           
                              <div id="datetimepicker1" class="input-group date">
                                 <input type="text" class="form-control" id="date" name="date" value='' placeholder="Select Date*">
                                 <label id="d" style="color:red;"></label>
                              </div>
                          
                        </div>
										  </div>
									    <div class="col-md-4"></div>
												
									  </div>
									  <?php
											}
											?>
						         
                    <div class="col-md-12">
															<div class="col-md-4"></div>
                              <div class="col-md-4">
                                <center> 
																		<button type="submit" id="btn_insert" class="btn btn-primary">Save</button>													
																		<button type="button" class="btn btn-primary btn_update" disabled>Update</button>	
																		<button type="button" class="btn btn-primary btn_cancel">Cancel</button>	
																		<input type="hidden" id="co_id" value=""/>
								                </center>
                              </div>
							                <div class="col-md-4"></div>
					          </div>       
                 </div>
					   </div>
					   </form>
                        <div class="panel-footer">
                           <div class="table-responsive" id="table_data">
															
                           </div>
                        </div>
                     </div>
                     <!-- END panel-->
                 
               </div>
			  </div>
	</div>
</section>

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
   <script src="../vendor/animo.js/animo.js"></script>
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
   
<!-- DATATABLES-->
   <script src="vendor/datatables/media/js/jquery.dataTables.min.js"></script>
   <script src="vendor/datatables-colvis/js/dataTables.colVis.js"></script>
   <script src="vendor/datatables/media/js/dataTables.bootstrap.js"></script>
   <script src="vendor/datatables-buttons/js/dataTables.buttons.js"></script>
   <script src="vendor/datatables-buttons/js/buttons.bootstrap.js"></script>
   <script src="vendor/datatables-buttons/js/buttons.colVis.js"></script>
   <script src="vendor/datatables-buttons/js/buttons.flash.js"></script>
   <script src="vendor/datatables-buttons/js/buttons.html5.js"></script>
   <script src="vendor/datatables-buttons/js/buttons.print.js"></script>
   <script src="vendor/datatables-responsive/js/dataTables.responsive.js"></script>
   <script src="vendor/datatables-responsive/js/responsive.bootstrap.js"></script>
   <script src="app/js/demo/demo-datatable.js"></script>   
   
   <!-- MOMENT JS-->
   <script src="vendor/moment/min/moment-with-locales.min.js"></script>
   <!-- DATETIMEPICKER-->
   <script type="text/javascript" src="vendor/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
   
   <script type="text/javascript" src="js/partner.js"></script>	
   <script type="text/javascript">
 
    $(document).ready(function() {
		$("#date").datetimepicker();
	 var ckbox = $('#check');
    $('input').on('click',function () {
        if (ckbox.is(':checked')) {
            $('#dt').show();
			//$("#date").attr("oninvalid", "this.setCustomValidity('please select date')");
			//$("#date").attr("onchange", "this.setCustomValidity('')");
			//$("#date").prop('required',true);
        } else {
            $('#dt').hide();
			
			//$("#date").removeAttr("oninvalid");
			//$("#date").removeAttr("onchange");
			//$("#date").removeAttr('required');
        }
    });
    $(document).on("click","#new",function(){
		$('#loanform').show();
		$('#new').hide();
	}); 
	$(document).on("click",".btn_cancel",function(){
		$('#loanform').hide();
		$('#new').show();
		$('#excel').show();
		$("#btn_insert").removeAttr("disabled", "disabled");
		$(".btn_update").attr("disabled", "disabled");
		$('#file_attach').val('');
		$('#email').val('');
		$('#uploadFile').val('');
		$('#phone').val('');
		$('#business').val('');
		$('#contact').val('');
		$('#address').val('');
		$('#facebook').val('');
		$('#linked').val('');
		$('#hours').val('');
		$('#note').val('');
		$('#type').val('');
		$('#twitter').val('');
		$('#container').empty();
	});
	
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
		
</script> 
<!-- Modal-->
   <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal fade">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" data-dismiss="modal" aria-label="Close" class="close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 id="myModalLabel" class="modal-title">Upload Trusted Partner List</h4>
            </div>
            <div class="modal-body">
							<form  action="excelupload/uploadExcel.php" method="POST" enctype="multipart/form-data">
							  <input type="file" class="form-control" id="file" name="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel,text/comma-separated-values, text/csv, application/csv" oninvalid="this.setCustomValidity('please Select File')" onchange="this.setCustomValidity('')" required>
							  <button type="submit" class="btn btn-primary" style="margin-top:10px;">Upload</button>
							</form>
						</div>
           
         </div>
      </div>
   </div>
<!-- MOdal Over  --->

 
</body>

</html>