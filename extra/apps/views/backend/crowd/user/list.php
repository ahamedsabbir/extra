<!doctype html>
<html class="no-js" lang="">
<head>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">	
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
</head>
<body>
<main class="py-5">
	<div class="container">
		<h1 class="text-center py-3">Admin list</h1>
		<table class="table table-bordered table-hover table-striped table-condensed">
			<tr>
				<th>Email</th>
				<th>Level</th>
				<th>Code</th>
				<th>Action</th>
			<tr>
<?php
if(isset($framework_admin_datatable)){
	foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_value){
?>
<form action="<?php echo BASE_URL."admin_blog_controller_class/update_category_function/".$cat_value["category_id"]; ?>" method="post" class="form" enctype="multipart/form-data">
	<tr>
		<td><input class="form-control" type="text" value="<?php echo $framework_admin_datatable_value['email']; ?>" placeholder="<?php echo $framework_admin_datatable_value['email']; ?>" name="category_sn" style="max-width:150px;"/></td>
		<td>
			<select class="form-control" name="" style="max-width:200px;">
<?php 
if(isset($framework_level_datatable)){
	foreach($framework_level_datatable as $framework_level_datatable_key => $framework_level_datatable_value){
		if($framework_level_datatable_value["sn"] == $framework_admin_datatable_value['level']){
?>
				<option value="<?php echo $framework_level_datatable_value["sn"]; ?>" ><?php echo $framework_level_datatable_value["level"]; ?></option>
<?php
		}else{
?>
				<option value="<?php echo $framework_level_datatable_value["sn"]; ?>" ><?php echo $framework_level_datatable_value["level"]; ?></option>
<?php
		}
	}
}
?>
			</select>
		
		
		</td>
		<td><input class="form-control" type="text" value="<?php echo $framework_admin_datatable_value['code']; ?>" placeholder="<?php echo $framework_admin_datatable_value['code']; ?>" name="category_title" style="max-width:200px;"/></td>
		<td>
			<span>
				<button type="submit" class="btn btn-success"><i class="fas fa-edit"></i></button>
				<a href="<?php echo BASE_URL.'admin_blog_controller_class/delete_cat_function/'.$cat_value['category_id']; ?>" class="btn btn-success" ><i class="fas fa-book"></i></a>
				<a href="<?php echo BASE_URL.'admin_blog_controller_class/delete_cat_function/'.$cat_value['category_id']; ?>" class="btn btn-danger" ><i class="fas fa-trash"></i></a>
			</span>
		</td>
	</tr>
</form>
<?php
	}
}
?>
		</table>
	<div>
</main>
</body>
</html>