<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<!doctype html>
<html class="no-js" lang="en">
<base href="<?php echo BASE_SITE; ?>">
<?php
if($framework_admin_datatable != null){
	foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_value){
?>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<?php echo backend_class::style("form"); ?>
		<?php echo backend_class::style("style", $plugins_type, $plugins); ?>
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
			<form role="form" action="<?php echo BASE_URL.'admin_profile_class/profile_update_function/profile_edit/&post_id='.$framework_admin_datatable_value["id"]; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<h2 class="title" style="padding:7px;">Profile Update</h2>
							</div>
							<div class="card-body">
								<div class="form-row">
									<div class="name">Name</div>
									<div class="value">
										<input class="input--style-6" type="text" name="name" value="<?php echo $framework_admin_datatable_value["name"]; ?>">
									</div>
								</div>
								<div class="form-row">
									<div class="name">Deshboard</div>
									<div class="value">
										<input class="input--style-6" type="text" name="deshboard" value="<?php echo $framework_admin_datatable_value["deshboard"]; ?>">
									</div>
								</div>
								<div class="form-row">
									<div class="name">Thamble</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="photo" id="thamble">
											<label class="label--file" for="thamble">Choose Thamble</label>
											<span class="input-file__info">No thamble chosen.</span>
										</div>
										<div class="label--desc">Upload post_datatable Thamble. max 1mb</div>
										<small><a href="<?php echo $framework_admin_datatable_value['photo']; ?>">View</a></small>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Mobile</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="mobile" value="<?php echo $framework_admin_datatable_value["mobile"]; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Email</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="email" value="<?php echo $framework_admin_datatable_value["email"]; ?>">
										</div>
									</div>
								</div>
							</div>
							<?php //include backend_class::inc("report"); ?>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit">Update</button>
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
    filebrowserUploadUrl:"<?php echo address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', $array_key, $array_value); ?>"
  });
</script> 
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<?php echo backend_class::script("form"); ?>
	</body>
<?php
	}
}
?>
</html>