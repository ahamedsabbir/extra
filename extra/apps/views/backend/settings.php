<!doctype html>
<html class="no-js" lang="en">
<?php
$xml = simplexml_load_file($settings);
foreach($xml->settings as $settings){
?>
	<head>
		<title>Setting</title>
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
			<?php include backend_class::inc("form"); ?>
			<form role="form" action="<?php echo BASE_URL.'backend_settings_class/settings_update_function/settings'; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="card-heading">
									<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
									  <div class="btn-group" role="group">
										<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">settings</h1>
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
								<?php echo text_input("site", $settings->site); ?>
                              	<?php echo text_input("class_name", $settings->class_name); ?>
                              	<?php echo text_input("function_name", $settings->function_name); ?>
                              	<?php echo text_input("page_name", $settings->page_name); ?>
								<?php echo number_input("loop_item", $settings->loop_item); ?>
								<?php echo text_input("facebook", $settings->facebook); ?>
								<?php echo text_input("twitter", $settings->twitter); ?>
								<?php echo text_input("linkedin", $settings->linkedin); ?>
								<?php echo text_input("instagram", $settings->instagram); ?>
								<?php echo text_input("youtube", $settings->youtube); ?>
								<?php echo text_input("github", $settings->github); ?>
								<?php echo text_input("image_extension", $settings->image_extension); ?>
								<?php echo number_input("image_size", $settings->image_size); ?>
								<?php echo text_input("video_extension", $settings->video_extension); ?>
								<?php echo number_input("video_size", $settings->video_size); ?>
								<?php echo text_input("file_extension", $settings->file_extension); ?>
								<?php echo number_input("file_size", $settings->file_size); ?>
								<?php echo text_input("copy_header", $settings->copy_header); ?>
								<?php echo text_input("copy_right", $settings->copy_right); ?>
								<?php echo text_input("copy_link", $settings->copy_link); ?>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="settings" value="update">Update</button>
							</div>
						</div>
					</div>
					
				</div>
			</form>
		</main>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<?php echo backend_class::script("form"); ?>
	</body>
<?php
}
?>
</html>