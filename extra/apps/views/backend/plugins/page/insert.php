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
			<form role="form" action="<?php echo BASE_URL.'page_insert_class/page_insert_function/insert'; ?>" method="POST" enctype="multipart/form-data">
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
                              	<?php echo number_input("sn"); ?>
								<?php echo text_input("name"); ?>
								<?php echo text_input("title"); ?>
                              	<?php echo text_input("keywords"); ?>
								<?php echo textarea_input("description"); ?>	
                              	<?php echo textarea_input("content"); ?>
                              	<?php echo file_input("icon"); ?>
                              	<?php echo text_input("font_icon"); ?>
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