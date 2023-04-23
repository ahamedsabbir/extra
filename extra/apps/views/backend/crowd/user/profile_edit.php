<!doctype html>
<html class="no-js" lang="en">
<?php
if($framework_user_datatable != null){
	foreach($framework_user_datatable as $framework_user_datatable_key => $framework_user_datatable_value){
?>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<?php echo backend_class::style("form", $plugins); ?>
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
			<form role="form" action="<?php echo BASE_URL.'user_profile_class/profile_update_function/profile_edit/'; ?>" method="POST" enctype="multipart/form-data">
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
								  <button onclick="window.location='<?php echo FRONTEND_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
								  <button> <?php echo report_class::chack_report(); ?></button>
								</div>
							</div>
							<div class="card-body">
								<div class="form-row">
									<div class="name">Name</div>
									<div class="value">
										<input class="input--style-6" type="text" name="name" value="<?php echo $framework_user_datatable_value["name"]; ?>">
									</div>
								</div>
								<div class="form-row">
									<div class="name">photo</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="photo" id="photo">
											<label class="label--file" for="photo">Choose photo</label>
											<span class="input-file__info">No photo chosen.</span>
										</div>
										<div class="label--desc">Upload post_datatable photo. max 1mb</div>
										<small><a href="<?php echo $framework_user_datatable_value['photo']; ?>">View</a></small>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Mobile</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="mobile" value="<?php echo $framework_user_datatable_value["mobile"]; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Email</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="email" value="<?php echo $framework_user_datatable_value["email"]; ?>">
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit" value="update">Update</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</main>
<?php 
$array_key = array("folder");
$array_value = array("admin/");
?>
<script>
  var editor=CKEDITOR.replace('description', {
    extraPlugins : 'filebrowser',
    filebrowserBrowseUrl:'browser.php?type=Images',
    filebrowserUploadMethod:"form",
    filebrowserUploadUrl:"<?php echo address_class::request_method('ckeditor', 'upload_function', 'index', $array_key, $array_value); ?>"
  });
</script> 
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
<?php
	}
}
?>
</html>