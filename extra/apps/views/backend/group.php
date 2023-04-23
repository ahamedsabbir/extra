<!doctype html>
<html class="no-js" lang="">
<head>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
</head>
<body>
	<?php include(backend_class::inc("group_models")) ?>
	<header class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
			<a class="navbar-brand" href="#">Group</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
			  <ul class="navbar-nav">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link active" href="#" data-bs-toggle="modal" data-bs-target="#creategroup">Add New</a>
				  <?php echo add_function("creategroup", $framework_category_datatable); ?>
				</li>
			  </ul>
			</div>
		  </div>
		</nav>
	</header>
	<group>
		<div class="container">
			<table class="table table-bordered table-hover table-striped table-condensed">
				<tr class="text-center">
					<th>SN</th>
					<th>Data Table</th>
					<th>Name</th>
				<tr>
<?php
if(isset($framework_group_datatable)){
	foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
?>
	<tr>
		<td class="text-center"><i class="fa-solid fa-<?php echo $framework_group_datatable_value['sn']; ?>"></i></td>
		<td>
<?php
if(session_class::get("post_datatable") == $framework_group_datatable_value['datatable']){
	echo "<b>".$framework_group_datatable_value['datatable']."</b>"; 
}else{
	echo $framework_group_datatable_value['datatable'];
}
?>
		</td>
		<td>
			<div class="dropdown">
			  <a class="btn" href="#" role="button" id="option<?php echo $framework_group_datatable_value["id"]; ?>" data-bs-toggle="dropdown" aria-expanded="false" title="<?php echo $framework_group_datatable_value['title']; ?>"><?php echo $framework_group_datatable_value['name']; ?></a>
			  <ul class="dropdown-menu" aria-labelledby="option<?php echo $framework_group_datatable_value["id"]; ?>">
				<li class="text-center"><b>Option</b></li>
				<li><button class="btn dropdown-item" data-bs-toggle="modal" data-bs-target="#update_<?php echo $framework_group_datatable_value["id"]; ?>">Update</button></li>
				<li><button class="btn dropdown-item" onclick="window.location='<?php echo BASE_URL.'backend_group_class/delete_group_function/group/&group_id='.$framework_group_datatable_value['id']; ?>'">Delete</button></li>
			  </ul>
			</div>
			<?php echo update_function($framework_group_datatable_value, $framework_category_datatable); ?>
		</td>
	</tr>
<?php
	}
}
?>
			</table>
		<div>
	</group>
		<?php include(backend_class::inc("footer")) ?>
	</body>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>