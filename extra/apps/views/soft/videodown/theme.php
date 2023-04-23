<!doctype html>
<html class="no-js" lang="en">
<?php
$soft = simplexml_load_file("extra/apps/views/softs/".$soft_name."/assets/xml/soft.xml");
foreach($soft->soft as $soft){
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
			<form role="form" action="<?php echo BASE_URL.'soft/soft_update_function/soft'; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
								  <div class="btn-group" role="group">
									<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $soft_name; ?></h1>
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
									<div class="name">soft</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="name">
<?php
foreach(soft_class::$soft_option as $folder_key){
	if($folder_key == $soft->name){
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
									<div class="name">Post Table</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="post_datatable" value="<?php echo $soft->post_datatable; ?>" placeholder="<?php echo $soft->post_datatable; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Title</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="title" value="<?php echo $soft->title; ?>" placeholder="<?php echo $soft->title; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Keywords</div>
									<div class="value">
										<div class="input-group">
											<textarea class="textarea--style-6" name="keywords" placeholder="<?php echo $soft->keywords; ?>"><?php echo $soft->keywords; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Description</div>
									<div class="value">
										<div class="input-group">
											<textarea id="description" class="textarea--style-6" name="description" placeholder="<?php echo $soft->description; ?>"><?php echo $soft->description; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Author</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="author" value="<?php echo $soft->author; ?>" placeholder="<?php echo $soft->author; ?>">
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
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($soft->icon); ?>"><?php echo vendor_file_class::get_file($soft->icon); ?></a></div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Banner Title</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="banner_title" value="<?php echo $soft->banner_title; ?>" placeholder="<?php echo $soft->banner_title; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Banner Description</div>
									<div class="value">
										<div class="input-group">
											<textarea class="textarea--style-6" name="banner_description" placeholder="<?php echo $soft->banner_description; ?>"><?php echo $soft->banner_description; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">
										<i>Banner</i>
									</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="banner" id="banner">
											<label class="label--file" for="banner">Choose banner</label>
											<span class="input-file__info" >No banner chosen</span>
										</div>
										<div class="label--desc">Upload Your banner. max 5mb</div>
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($soft->banner); ?>"><?php echo vendor_file_class::get_file($soft->banner); ?></a></div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">
										<i>Slider One</i>
									</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="slider_one" id="slider_one">
											<label class="label--file" for="slider_one">Choose Slider One</label>
											<span class="input-file__info" >No Slider One chosen</span>
										</div>
										<div class="label--desc">Upload Your post_datatable. max 100mb</div>
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($soft->slider_one); ?>"><?php echo vendor_file_class::get_file($soft->slider_one); ?></a></div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">
										<i>Slider Two</i>
									</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="slider_two" id="slider_two">
											<label class="label--file" for="slider_two">Choose Slider Two</label>
											<span class="input-file__info" >No Slider Two chosen</span>
										</div>
										<div class="label--desc">Upload Your post_datatable. max 100mb</div>
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($soft->slider_two); ?>"><?php echo vendor_file_class::get_file($soft->slider_two); ?></a></div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">
										<i>Slider Three</i>
									</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="slider_three" id="slider_three">
											<label class="label--file" for="slider_three">Choose slider Three</label>
											<span class="input-file__info" >No slider Three chosen</span>
										</div>
										<div class="label--desc">Upload Your slider Three. max 100mb</div>
										<div class="label--desc"><a href="<?php echo vendor_file_class::get_file($soft->slider_three); ?>"><?php echo vendor_file_class::get_file($soft->slider_three); ?></a></div>
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