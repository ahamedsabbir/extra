<?php include(backend_class::sys("security")); ?>
<?php include(backend_class::sys("variables")); ?>
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
		<section class="py-3">
			<div class="container">
				<h3 class="py-1">SQL Example</h3>
				<ul>
					<li>CREATE TABLE `user_login_info_datatable` ( `user_id` INT NOT NULL AUTO_INCREMENT , `user_name` VARCHAR(255) NOT NULL , `user_email` VARCHAR(255) NOT NULL , `user_password` VARCHAR(255) NOT NULL , `user_code` VARCHAR(255) NOT NULL , `user_status` INT NOT NULL DEFAULT '0' , `user_image` VARCHAR(255) NOT NULL DEFAULT 'logo.png' , `user_mobile` INT NOT NULL , PRIMARY KEY (`user_id`)) ENGINE = InnoDB;</li>
					<li>DROP TABLE `admin_login_info_datatable`, `user_login_info_datatable`;</li>
					<li>DROP TABLE user_login_info_datatable;</li>
					<li>DROP DATABASE mvc_style;</li>
					<li>ALTER TABLE `admin_login_info_datatable` ADD `assa` VARCHAR(255) NOT NULL AFTER `admin_level`;</li>
					<li>TRUNCATE admin_login_info_datatable;</li>
				</ul>
			</div>
		</section>
		<section class="py-3">
			<div class="container">
				<h3 class="py-1 text-center">Enter Your SQL</h3>
				<div class="row">
					<div class="col-md-12">
						<form class="form-horizontal" role="form" action="<?php echo BASE_URL."plugins_database_class/datatable_sql_function/&$send_page_link"; ?>" method="POST">
						  <div class="form-group">
							   <input type="file" accept="text" onchange="loadfile(event)" />
						  </div>
						  <div class="form-group">
							  <textarea id="txt" class="form-control" rows="7" name="sql"></textarea>
						  </div>
						  <div class="form-group">
							<div class="py-2">
							  <button type="submit" class="btn btn-info" onclick="confirm('Careful.')">save</button>
							  <b style="color:red;"> warning!!!</b>
							</div>
						  </div>
						</form>
					</div>
				</div>
			</div>
		</section>
<script>
function loadfile(event){
  var fr=new FileReader();
  fr.onload=function(){
    txt.value=fr.result;
  };
  fr.readAsText(event.target.files[0]);
}
</script>
		<section class="container">
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
