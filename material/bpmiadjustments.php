<?php
include('db/connection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="description" content="Bootstrap Admin App + jQuery">
   <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
   <title>BPMI Adjustments</title>
   <link rel='icon' type='image/x-icon' href='favicon.ico' />
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
   <?php include('header.php');?>
   <!-- Main section-->
   <section>
    <div class="content-wrapper">
					<div class="clearfix">
						<div class="pull-left">
							<h3>BPMI Adjustments List</h3>
						</div>
						
          <div>  
            <!-- START row-->
            <div class="row">
               <div class="col-md-12">
                  <form method="post" action="#" id="customer_form">
                     <!-- START panel-->
                     <div class="panel panel-default" id="bpmiadjustmentsform" style="display:none;">
                        <div class="panel-heading">
                           <div class="panel-title">BPMI Adjustments</div>
                        </div>
                        <div class="panel-body">
													<div class="col-md-12">
													<div class="col-md-4">
                           <div class="form-group">
                              <label class="control-label">Adjustment Name *</label>
                              <input type="text" name="name" id="name" class="form-control" placeholder="Enter Adjustment Name*" oninvalid="this.setCustomValidity('please enter adjustment name')" onchange="this.setCustomValidity('')" required>
                           </div>
						              </div>
									      
									      <div class="col-md-4">
                           <div class="form-group">
                              <label for="control-label">Credit Score From *</label>
                              <input type="text" name="scorefrom" id="scorefrom" class="form-control" placeholder="Enter Credit Score From*" oninvalid="this.setCustomValidity('please enter credit score from')" onchange="this.setCustomValidity('')" required>
											     </div>
                        </div>
						            <div class="col-md-4">
                           <div class="form-group">
                              <label for="control-label">Credit Score To *</label>
                              <input type="text" name="scoreto" id="scoreto" class="form-control" placeholder="Enter Credit Score To*" oninvalid="this.setCustomValidity('please enter credit score to')" onchange="this.setCustomValidity('')" required>
											     </div>
						              </div>
												</div>
												<div class="col-md-12">
												
									      <div class="col-md-4">
                           <div class="form-group">
                              <label for="control-label">BPMI *</label>
                              <input type="text" name="bpmi" id="bpmi" class="form-control" placeholder="Enter BPMI*" oninvalid="this.setCustomValidity('please enter bpmi')" onchange="this.setCustomValidity('')" required>
											     </div>
						              </div>
									  
									      <div class="col-md-4"></div>
												 <div class="col-md-4"></div>
									  </div>
									  
                    <div class="col-md-12">
															<div class="col-md-4"></div>
                              <div class="col-md-4">
                                <center> 
																	<!--	<button type="submit" id="btn_insert" class="btn btn-primary">Save</button>	-->
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
   <script type="text/javascript" src="js/bpmiadjustment.js"></script>	
   <script type="text/javascript">
 
    $(document).ready(function() {
    
	$(document).on("click",".btn_cancel",function(){
		$('#bpmiadjustmentsform').hide();
		$(".btn_update").attr("disabled", "disabled");
		$('#name').val('');
		$('#scorefrom').val('');
		$('#scoreto').val('');
		$('#bpmi').val('');
		
		
	});
  });
  
</script>  
</body>

</html>