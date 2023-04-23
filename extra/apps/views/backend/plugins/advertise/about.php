<!doctype html>
<html class="no-js" lang="en">
<?php
foreach($about->about as $about){
	$name = vendor_code_class::base64url_decode($about->name);
	$type = vendor_code_class::base64url_decode($about->type);
	$title = vendor_code_class::base64url_decode($about->title);
	$versions = vendor_code_class::base64url_decode($about->versions);
	$author = vendor_code_class::base64url_decode($about->author);
	$email = vendor_code_class::base64url_decode($about->email);
	$mobile = vendor_code_class::base64url_decode($about->mobile);
	$description = vendor_code_class::base64url_decode($about->description);
	$home = vendor_code_class::base64url_decode($about->home);
	$plugin = vendor_code_class::base64url_decode($about->plugin);
	$menu = vendor_code_class::base64url_decode($about->menu);
	$settings = vendor_code_class::base64url_decode($about->settings);
?>
	<head>
		<title>Plugin about</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<?php echo backend_class::style("form"); ?>
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
			<?php include (backend_class::inc("form")); ?>
			<form role="form" action="<?php echo BASE_URL.'plugins_xplore_class/about_function/about'; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="card-heading">
									<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
									  <div class="btn-group" role="group">
										<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $name; ?> about.</h1>
										<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
										  <a class="dropdown-item" href="#">menu</a>
										  <a class="dropdown-item" href="#">Footer</a>
										</div>
									  </div>
									  <button onclick="window.location='<?php echo BACKEND_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
									  <button> <?php echo report_class::chack_report(); ?></button>
									</div>
								</div>
							</div>
							<div class="card-body">
								<?php echo text_input("name", $name); ?>
								<?php echo text_input("type", $type); ?>
								<?php echo textarea_input("title", $title); ?>
								<?php echo text_input("versions", $versions); ?>
								<?php echo text_input("author", $author); ?>
								<?php echo text_input("email", $email); ?>
								<?php echo number_input("mobile", $mobile); ?>
								<?php echo textarea_input("description", $description); ?>
								<?php echo text_input("home", $home); ?>
								<?php echo text_input("plugin", $plugin); ?>
								<?php echo text_input("menu", $menu); ?>
								<?php echo text_input("settings", $settings); ?>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="about" value="update">Update</button>
							</div>
						</div>
					</div>
					
				</div>
			</form>
		</main>
<?php 
$array_key = array("folder");
$array_value = array("plugins/");
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
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/js/bootstrap.min.js">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<?php echo backend_class::script("form"); ?>
	</body>
<?php
}
?>
</html>