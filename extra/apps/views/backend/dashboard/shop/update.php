<!doctype html>
<html class="no-js" lang="en">
<?php
if($framework_project_datatable != null){
	foreach($framework_project_datatable as $framework_project_datatable_key => $framework_project_datatable_value){
?>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<?php echo backend_class::style("form", $pugin_type, $plugins); ?>
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
			<form role="form" action="<?php echo BASE_URL.'admin_project_class/project_update_function/project_update/&post_id='.$framework_project_datatable_value["id"]; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<h2 class="title" style="padding:7px;">Project Update</h2>
							</div>
							<div class="card-body">
								<div class="form-row">
									<div class="name">Title</div>
									<div class="value">
										<input class="input--style-6" type="text" name="title" value="<?php echo $framework_project_datatable_value["title"]; ?>">
									</div>
								</div>
								<div class="form-row">
									<div class="name">Keywords</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="keywords" value="<?php echo $framework_project_datatable_value["keywords"]; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Category</div>
									<div class="value">
										<div class="input-group">
											<select class="input--style-6 category" name="category_id">
												<option value=""></option>
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		if($framework_category_datatable_value["id"] == $framework_project_datatable_value["category_id"]){
?>
												<option value="<?php echo $framework_category_datatable_value['id']; ?>" selected><?php echo $framework_category_datatable_value['category']; ?></option>
<?php
		}else{
?>
												<option value="<?php echo $framework_category_datatable_value['id']; ?>"><?php echo $framework_category_datatable_value['category']; ?></option>
<?php			
		}
	}
}
?>
											</select>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Description</div>
									<div class="value">
										<div class="input-group">
											<textarea id="description" class="textarea--style-6" name="description" value="<?php echo $framework_project_datatable_value['description']; ?>"><?php echo $framework_project_datatable_value['description']; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Personal</div>
									<div class="value">
										<div class="input-group">
											<textarea id="description" class="textarea--style-6" name="personal" value="<?php echo $framework_project_datatable_value['description']; ?>"><?php echo $framework_project_datatable_value['personal']; ?></textarea>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Website</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="website" value="<?php echo $framework_project_datatable_value['website']; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Git</div>
									<div class="value">
										<div class="input-group">
											<input class="input--style-6" type="text" name="git" value="<?php echo $framework_project_datatable_value['git']; ?>">
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Thamble</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="thamble" id="thamble">
											<label class="label--file" for="thamble">Choose Thamble</label>
											<span class="input-file__info">No thamble chosen.</span>
										</div>
										<div class="label--desc">Upload post_datatable Thamble. max 1mb</div>
										<small><a href="<?php echo $framework_project_datatable_value['thamble']; ?>">View</a></small>
									</div>
								</div>
								<div class="form-row">
									<div class="name">Zip File</div>
									<div class="value">
										<div class="input-group js-input-file">
											<input class="input-file" type="file" name="zip_file" id="zip_file">
											<label class="label--file" for="zip_file">Zip File</label>
											<span class="input-file__info">No Zip File chosen</span>
										</div>
										<div class="label--desc">Upload Your post_datatable. max 100mb</div>
										<small><a href="<?php echo $framework_project_datatable_value['zip_file']; ?>">Download</a></small>
									</div>
								</div>
							</div>
							<?php include backend_class::inc("report"); ?>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit">Upload</button>
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
	</body>
<?php
	}
}
?>
</html>