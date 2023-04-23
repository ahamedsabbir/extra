<!doctype html>
<html class="no-js" lang="en">
	<head>
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
		<?php echo backend_class::style("form"); ?>
	</head>
	<body>
		<main>
			<form role="form" action="<?php echo BASE_URL.'xml_insert_class/datarow_insert_function/loop/&primary_datatable=school'; ?>" method="POST" enctype="multipart/form-data">
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
								  <button onclick="window.location='<?php echo BACKEND_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
								  <button> <?php echo report_class::chack_report(); ?></button>
								</div>
							</div>
							<div class="card-body">
								<?php echo text_input("name", "sabbir"); ?>
								<?php echo number_input("department", 3); ?>
								<?php echo text_input("father", "jalal"); ?>
								<?php echo text_input("address", "barguna"); ?>
							</div>
							<div class="card-footer">
								<button class="btn btn--radius-2 btn--blue-2" type="submit" name="submit" value="insert">Save</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</main>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/js/bootstrap.min.js">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<?php echo backend_class::script("form"); ?>
	</body>
</html>