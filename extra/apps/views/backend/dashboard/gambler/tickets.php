<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<link rel="stylesheet" href="extra/resources/framework/data_tables/datatables.min.css">
		<link rel="stylesheet" href="extra/resources/framework/data_tables/Responsive-2.2.9/css/responsive.bootstrap.min.css">
	</head>
<body>
		<?php include(backend_class::inc("header", $plugins_type, $plugins)); ?>
		<main class="py-4">
			<div class="container">       	
				<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
    <thead>
        <tr class="text-center">
														<th>ID</th>
            <th>Unique ID</th>
            <th>User ID</th>
														<th>Action</th>
        </tr>
    </thead>
    <tbody>		
<?php
if($ticket_datatable != null){
	foreach($ticket_datatable as $ticket_datatable_key => $ticket_datatable_value){
?>

       	 <tr class="text-center">
													<td><b><?php echo $ticket_datatable_value['id']; ?></b></td>
													<td><b><?php echo $ticket_datatable_value['unique_id']; ?></b></td>
           	<td><b><?php echo $ticket_datatable_value['user_id']; ?></b></td>
													<td><b>Option</b></td>
										</tr>
<?php
	}	
}
?>
    </tbody>
			</table>		
  </div>
		</main>
		<?php include(backend_class::inc("footer")); ?>
	</body>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="extra/resources/framework/bootstrap-4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="extra/resources/framework/data_tables/DataTables-1.11.5/js/jquery.dataTables.min.js"></script>
		<script src="extra/resources/framework/data_tables/datatables.min.js"></script>
		<script src="extra/resources/framework/data_tables/Responsive-2.2.9/js/dataTables.responsive.min.js"></script>
<?php echo vendor_getMsg_class::get(); ?>
<script>
$(document).ready(function() {
    $('#datatable').DataTable({
		order: [[3, 'desc']],
	});
} );
</script>
	<?php echo vendor_loader_class::loader_function(); ?>
</html>