<!doctype html>
<html class="no-js" lang="en">
<?php
$theme = simplexml_load_file("extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml");
foreach($theme->theme as $theme){
?>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
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
			<form role="form" action="<?php echo BASE_URL.'theme/theme_update_function/index/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
								  <div class="btn-group" role="group">
									<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $theme_name; ?></h1>
									<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									  <a class="dropdown-item" href="#">menu</a>
									  <a class="dropdown-item" href="#">Footer</a>
									</div>
								  </div>
								  <button onclick="window.location='<?php echo BACKEND_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
								</div>
							</div>
							<div class="card-body">
								<div class="form-row">
									<div class="name">Theme</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="name">
<?php
foreach(theme_class::$theme_option as $folder_key){
	if($folder_key == $theme->name){
		echo "<option value='".$folder_key."' selected >".$folder_key."</option>";
	}else{
		echo "<option value='".$folder_key."' >".$folder_key."</option>";
	}
}
?>
											</select>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Title</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="title" value="<?php echo $theme->title; ?>" placeholder="<?php echo $theme->title; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Keywords</div>
									<div class="value">
										<div class="input-group">
											<textarea class="textarea--style-6" name="keywords" placeholder="<?php echo $theme->keywords; ?>"><?php echo $theme->keywords; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Description</div>
									<div class="value">
										<div class="input-group">
											<textarea id="description" class="textarea--style-6" name="description" placeholder="<?php echo $theme->description; ?>"><?php echo $theme->description; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Author</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="author" value="<?php echo $theme->author; ?>" placeholder="<?php echo $theme->author; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">
										<i>Icon</i>
									</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="icon" id="icon">
											<label class="label--file" for="icon">Choose icon</label>
											<span class="input-file__info" >No icon chosen</span>
										</div>
										<div class="label--desc">Upload Your icon. max 2mb</div>
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($theme->icon); ?>"><?php echo vendor_file_class::get_file($theme->icon); ?></a></div>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit">Update</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<?php include backend_class::inc("report"); ?>
		</main>
<script>
  var editor=CKEDITOR.replace('description', {
    extraPlugins : 'filebrowser',
    filebrowserBrowseUrl:'browser.php?type=Images',
    filebrowserUploadMethod:"form",
    filebrowserUploadUrl:"<?php echo address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', array('folder'), array('admin/')); ?>"
  });
</script> 
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
<?php
}
?>
</html>