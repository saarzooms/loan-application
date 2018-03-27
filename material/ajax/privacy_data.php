<?php
include('../db/connection.php');
if(isset($_REQUEST['privacy']) && isset($_REQUEST['terms']))
{
	$privacy=addslashes($_REQUEST['privacy']);
	$terms=addslashes($_REQUEST['terms']);
	
	$msg="";
	try {
		$sql="INSERT INTO `privacy_policy`(`privacypolicy`, `terms_of_service`) VALUES ('$privacy','$terms')";
		//file_put_contents('./log_'.date("j.n.Y").'.txt', $sql, FILE_APPEND);
		if($dbh->query($sql))
		{
			$msg="Data Save Successfully";
			echo $msg;
		}
	}catch(Exception $e) {
	  echo 'Message: ' .$e->getMessage();
	}
}
else if(isset($_REQUEST['id1']))
{	
$id = $_REQUEST['id1']; 
if(isset($id)){
$sql = "DELETE FROM privacy_policy where id='$id'";		
			if($dbh->query($sql))
			{
				$msg1 = "<script>alert('Deleted Successfully');</script>";
			}
			else{
				$msg1 = "<script>alert('Error To Delete Data!!!');</script>";
			}							
}
}
else if(isset($_REQUEST['did2']))
{
$id= $_REQUEST['did2'];
if(isset($id)){
	$sql2 = "SELECT * FROM privacy_policy where id='$id'";
	$result = array();
		foreach ($dbh->query($sql2) as $row2)
			{
				$privacy=$row2['privacypolicy'];
				$terms=$row2['terms_of_service'];
				
		}
    array_push($result,$privacy,$terms);
	$result = array_map('utf8_encode', $result);
	echo json_encode($result);			
}

}
else if(isset($_REQUEST['privacy1']) && isset($_REQUEST['terms1']) && isset($_REQUEST['typeid']) )
{
	// $privacy=mysql_real_escape_string($_REQUEST['privacy1']);
	// $terms=mysql_real_escape_string($_REQUEST['terms1']);
	$privacy=addslashes($_REQUEST['privacy1']);
	$terms=addslashes($_REQUEST['terms1']);
	$typeid=$_REQUEST['typeid'];
	
	
	$msg="";
	$sql="UPDATE `privacy_policy` SET `privacypolicy`='$privacy',`terms_of_service`='$terms' WHERE id='$typeid'";
	//file_put_contents('./log_'.date("j.n.Y").'.txt', $sql, FILE_APPEND);
	if($dbh->query($sql))
	{
		$msg="Data Update Successfully";
		echo $msg;
	}
}
else if(isset($_REQUEST['id']))
{
	?>
	<script>
 var table = $('#example').DataTable( {
	scrollX: true,
	pageLength: 10,
	 fixedHeader: true,
        lengthChange: false,
		order: [[ 0, "asc" ]],
        buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]
    } );
    table.buttons().container()
        .appendTo( '#example_wrapper .col-sm-6:eq(0)' );
	
 /*  $('#example thead th').each( function () {
        var title = $(this).text();
        $(this).html( '<label>'+title+'</label><br><input type="text" placeholder="Search '+title+'" />' );
    } );  */
 
    // DataTable
    var table = $('#example').DataTable();
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.header() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
	
</script>
	<table id="example" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
        <thead>
            <tr>
				<th>Id</th>  			
				<th>privacy policy</th>  
				<th>terms of service</th>  
				   
				<th><center>Action</center></th>  
            </tr>
        </thead>
       <tbody>
<?php
		$sql = "select * from privacy_policy";
		$officername="";
			foreach ($dbh->query($sql) as $row)
			{
				
?>				
		<tr>
		<td><?php echo $row['id']; ?></td>
		<td><?php echo $row['privacypolicy']; ?></td>
		<td><?php echo $row['terms_of_service']; ?></td>
		
		<td><center><button  class="btn_up btn btn-xs btn-danger"  value="<?php echo $row['id']; ?>" >
			<i class="fa fa-edit"></i></button>
			<button class="btn_del btn btn-xs btn-danger" value="<?php echo $row['id']; ?>">
			<i class="fa fa-trash"></i></button></center></td>
		</tr>

	<?php
}
?>
</tbody>
			</table>
	<?php
}
?>