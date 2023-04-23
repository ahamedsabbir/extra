<!doctype html>
<html class="no-js" lang="">
<head>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
</head>
<body>
	<?php include(backend_class::inc("category_models")) ?>
	<header class="">
<?php 
$backendMenu = <<<TEXT
<li class="nav-item">
  <a class="nav-link text-white" href="index.php?url=backend_category_class/allcat_page_function/category/">All Category</a>
</li>
<li class="nav-item">
  <a class="nav-link text-white" href="#" data-bs-toggle="modal" data-bs-target="#createcategory">Add New</a>
</li>
<li class="nav-item">
	<form class="d-flex me-3" role="form" action="index.php?url=backend_category_class/search_page_function/category/" method="POST" enctype="multipart/form-data">
		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
</li>
TEXT;
echo add_function("createcategory");
array_class::set("backendMenu", $backendMenu);
include(backend_class::inc("menu")); 
?>
	</header>
	<section>
		<div class="container">
			<table class="table table-bordered table-hover table-striped table-condensed">
				<tr class="text-center">
					<th>SN</th>
					<th>Data Table</th>
					<th>Name</th>
				<tr>
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
?>
	<tr>
		<td class="text-center">
<?php 
if($framework_category_datatable_value['sn'] != null){
	$string = $framework_category_datatable_value['sn'];
	$strarray = str_split($string, 1);
	$sacount = count($strarray);
	for($s=0;$s<$sacount;$s++){
		echo "<i class='fa-solid fa-".$strarray[$s]."'></i> ";
	}
}
?>
		</td>
		<td>
<?php
if(session_class::get("post_datatable") == $framework_category_datatable_value['datatable']){
	echo "<b>".$framework_category_datatable_value['datatable']."</b>"; 
}else{
	echo $framework_category_datatable_value['datatable'];
}
?>
		</td>
		<td>
			<div class="dropdown">
			  <a class="btn" href="#" role="button" id="option<?php echo $framework_category_datatable_value["id"]; ?>" data-bs-toggle="dropdown" aria-expanded="false" title="<?php echo $framework_category_datatable_value['title']; ?>"><?php echo $framework_category_datatable_value['name']; ?></a>
			  <ul class="dropdown-menu" aria-labelledby="option<?php echo $framework_category_datatable_value["id"]; ?>">
				<li class="text-center"><b>Option</b></li>
				<li><button class="btn dropdown-item" data-bs-toggle="modal" data-bs-target="#update_<?php echo $framework_category_datatable_value["id"]; ?>">Update</button></li>
				<li><button class="btn dropdown-item" onclick="window.location='<?php echo BASE_URL.'backend_category_class/delete_category_function/category/&category_id='.$framework_category_datatable_value['id']; ?>'">Delete</button></li>
			  </ul>
			</div>
			<?php echo update_function($framework_category_datatable_value); ?>
		</td>
	</tr>
<?php
	}
}
?>
			</table>
		<div>
	</section>
		<?php include(backend_class::inc("footer")) ?>
	</body>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>