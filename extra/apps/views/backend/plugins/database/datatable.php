<!doctype html>
<html class="no-js" lang="">
<?php
foreach($database as $data_key=>$data_value){
	if($data_value["id"] = "admin"){
?>
<head>
	<?php include(backend_class::inc("head", $plugins_type, $plugins)) ?>
</head>
<body>
	<?php include(backend_class::inc("header", $plugins_type, $plugins)) ?>
	<main>
		<section class="container py-3">
			<div class="row">
<?php
foreach($datatable as $table_key=>$table_value){
?>
				<div class="col-sm-6 py-3">
					<div class="card border-dark">
					  <div class="card-header text-center text-white bg-dark">
						<?php echo $table_value["name"]; ?>
					  </div>
					  <div class="card-body">
						<form action="<?php echo BASE_URL.'plugins_database_class/datatable_update_function/datatable'; ?>" method="POST">
						  <div class="form-group">
							<label for="<?php echo $table_value["name"]; ?>">SQL</label>
							<textarea class="form-control" id="<?php echo $table_value["name"]; ?>" name="sql" value="<?php echo $table_value->sql; ?>" rows="6" ><?php echo $table_value->sql; ?></textarea>
						  </div>
						  <button type="submit" value="<?php echo $table_value["name"]; ?>" name="submit" class="btn btn-primary">Update</button>
						</form>
					  </div>
					  <div class="card-footer text-center text-white bg-dark">
						<a href="<?php echo address_class::request_method("plugins_database_class", "datatable_insert_function", "datatable", false, false, "&sql=".$table_value->sql."&table=".$table_value["name"]); ?>" ><button type="button" class="btn btn-info">Insert</button></a>
						<a href="<?php echo address_class::request_method("plugins_database_class", "datatable_query_function", "datatable", false, false, "&sql=SELECT * INTO OUTFILE 'extra/apps/{$table_value['name']}.sql' FROM {$table_value['name']};"); ?>" ><button type="button" class="btn btn-info">Backup</button></a>
						<button data-toggle="modal" data-target=".<?php echo $table_value["name"]; ?>" type="button" class="btn btn-info">View</button>
						<a onclick="confirm('It finish all data.')" href="<?php echo address_class::request_method("database", "datatable_query_function", "datatable", false, false, "&sql=TRUNCATE `{$table_value["name"]}`;"); ?>" ><button type="button" class="btn btn-danger">Empty</button></a>
<a onclick="confirm('It finish all data.')" href="<?php echo address_class::request_method("plugins_database_class", "datatable_delete_function", "datatable", false, false, "&sql=DROP TABLE `{$table_value["name"]}`&table={$table_value["name"]}"); ?>" ><button type="button" class="btn btn-danger">Delete</button></a>
					  </div>
					</div>
				</div>
<div class="modal fade <?php echo $table_value["name"]; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="container p-3">
<?php
$table_name = $table_value["name"];
if($table_name != null){
	echo "<pre>";
	print_r($table_value["name"]);
	echo "</pre>";
}else{
	echo "not install";
}
?>	
			</div>
		</div>
	</div>
</div>
<?php
}
?>
			</div>
		</section>
	</main>
	<?php include(backend_class::inc("footer")) ?>
	<?php include(backend_class::inc("models", $plugins_type, $plugins)) ?>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)) ?>
</body>
<?php
	}
}
?>
</html>
