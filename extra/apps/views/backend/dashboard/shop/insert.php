<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<?php echo backend_class::style("form", $plugins_type, $plugins); ?>
<style>
.category {
    width: 100%;
    padding: 8px;
    padding-left: 20px;
    padding-bottom: 11px;
    font-size: 15px;
    /* line-height: 48px; */
}
</style>
	</head>
	<body>
		<main>
			<form role="form" action="<?php echo BASE_URL.'plugins_product_class/insert_function/'; ?>" method="POST" enctype="multipart/form-data">
				<?php include backend_class::inc("form"); ?>
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
								  <div class="btn-group" role="group">
									<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $plugins; ?> Submit</h1>
									<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									  <a class="dropdown-item" href="#">menu</a>
									  <a class="dropdown-item" href="#">Footer</a>
									</div>
								  </div>
								  <button onclick="window.location='<?php echo ADMIN_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
								</div>
							</div>
							<div class="card-body">
								<?php echo insert_input_text("product")?>
								<?php echo insert_input_text("title")?>
								<div class="form-row">
									<div class="name">Category</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="category_id">
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
?>
												<option value="<?php echo $framework_category_datatable_value['id']; ?>"><?php echo $framework_category_datatable_value['name']; ?></option>
<?php
	}
}
?>
											</select>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Type</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="type_id">
<?php
if(isset($type_datatable)){
	foreach($type_datatable as $type_datatable_key => $type_datatable_value){
?>
												<option value="<?php echo $type_datatable_value['id']; ?>"><?php echo $type_datatable_value['name']; ?></option>
<?php
	}
}
?>
											</select>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Brand</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="brand_id">
<?php
if(isset($framework_brand_datatable)){
	foreach($framework_brand_datatable as $framework_brand_datatable_key => $framework_brand_datatable_value){
?>
												<option value="<?php echo $framework_brand_datatable_value['id']; ?>"><?php echo $framework_brand_datatable_value['name']; ?></option>
<?php
	}
}
?>
											</select>
										</div>
									</div>
								</div>
								<?php echo insert_input_number("price")?>
								<?php echo insert_input_text("keywords")?>
								<?php echo insert_input_textarea("description")?>
								<?php echo insert_input_file("thumbnail")?>
								<?php echo insert_input_file("front_pic")?>
								<?php echo insert_input_file("right_pic")?>
								<?php echo insert_input_file("left_pic")?>
								<?php echo insert_input_file("rear_pic")?>
							</div>
							<?php include backend_class::inc("report"); ?>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit" value="insert">Save</button>
								<span class="mr-2"><?php echo report_class::chack_report(); ?></span>
							</div>
						</div>
					</div>
				</div>
			</form>
		</main>
<?php 
$array_key = array("folder");
$array_value = array("shop/");
?>
<script>
  var editor=CKEDITOR.replace('description', {
    extraPlugins : 'filebrowser',
    filebrowserBrowseUrl:'browser.php?type=Images',
    filebrowserUploadMethod:"form",
    filebrowserUploadUrl:"<?php echo address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', $array_key, $array_value); ?>"
  });
</script> 
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<?php echo backend_class::script("form", $plugins_type, $plugins); ?>
	</body>
</html>