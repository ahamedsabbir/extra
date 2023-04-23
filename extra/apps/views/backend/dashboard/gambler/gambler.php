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
            <th>UID</th>
            <th>Total</th>
            <th>Bet</th>
        </tr>
    </thead>
    <tbody>		
<?php
if($gambler_datatable != null){
	foreach($gambler_datatable as $gambler_datatable_key => $gambler_datatable_value){
		$user_id = $gambler_datatable_value['user_id'];
?>

       	 <tr class="text-center">
           	<td><b><?php echo $gambler_datatable_value['id']; ?></b></td>
													<td>
														<div class="btn-group" role="group">
   											 <b data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $user_id; ?></b>
    											<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      										<b class="dropdown-item"><?php echo $user_id; ?></b>
																<b class="dropdown-item" data-toggle="modal" data-target="#buyticket<?php echo $user_id; ?>">Ticket</b>
																<d class="dropdown-item" data-toggle="modal" data-target="#profile<?php echo $user_id; ?>">Profile</d>
      										<a class="dropdown-item" href="#">Block</a>
    											</div>
  												</div>
													</td>
													<td><b><?php echo $gambler_datatable_value['total']; ?></b></td>
													<td><b><?php echo $gambler_datatable_value['bet']; ?></b></td>

</tr>
<?php echo profile($gambler_datatable_value, $ticket_datatable); ?>
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