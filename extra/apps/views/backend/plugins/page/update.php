<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/css/bootstrap.min.css">
		<link href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css" rel="stylesheet">
		<script src="extra/resources/framework/ckeditor/ckeditor.js" type="text/javascript"></script>
		<script src="extra/resources/framework/ckfinder/ckfinder.js" type="text/javascript"></script>
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
		<?php include(backend_class::inc("form")); ?>
		<main>
			<form role="form" action="<?php echo BASE_URL.'admin_project_class/submit_project_function/'; ?>" method="POST" enctype="multipart/form-data">
				<div class="page-wrapper bg-dark p-t-100 p-b-50">
					<div class="wrapper wrapper--w900">
						<div class="card card-6">
							<div class="card-heading">
								<div class="card-heading">
									<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
									  <div class="btn-group" role="group">
										<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Page</h1>
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
								<?php echo text_input("datatable"); ?>
								<?php echo text_input("name"); ?>
								<?php echo text_input("title"); ?>
								<?php echo number_input("bootstrap"); ?>
								<div class="form-row">
									<div class="name">Content</div>
									<div class="value">
										<div class="input-group">
											<textarea id="content" class="textarea--style-6" name="content" placeholder="write here..."></textarea>
										</div>
									</div>
								</div>
<script type="text/javascript"> 
var editor = CKEDITOR.replace( 'content', { 
	filebrowserBrowseUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/ckfinder.html', 
	filebrowserImageBrowseUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/ckfinder.html?type=Images', 
	filebrowserFlashBrowseUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/ckfinder.html?type=Flash', 
	filebrowserUploadUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files', 
	filebrowserImageUploadUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images', 
	filebrowserFlashUploadUrl : 'http://localhost/mvc/extra/resources/framework/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash' 
}); 
CKFinder.setupCKEditor( editor ); 
</script>								
							</div>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit" value="insert">Upload</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</main> 
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="extra/resources/framework/bootstrap-4.0.0/js/bootstrap.min.js"></script>
	</body>
</html>