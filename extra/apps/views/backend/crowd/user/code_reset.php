<!doctype html>
<html class="no-js" lang="en">
<?php 
if(isset($framework_user_datatable)){
	foreach($framework_user_datatable as $framework_user_datatable_key => $framework_user_datatable_value){
?>
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<?php echo backend_class::style('style', $plugins); ?>
	</head>
	<body>
		<main>
			<div class="form-bg py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="form-container"> 
								<h3 class="title"><?php echo $framework_user_datatable_value["name"]; ?><?php echo report_class::chack_report(); ?></h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'user_crowd_class/code_reset_function/sign-in/'; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Code</label>
										<input id="forgetAnswer" type="text" name="code" placeholder="name" class="form-control">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="Password" name="password">
									</div>
									<div class="form-group">
										<button class="btn signup" type="submit" value="password_reset" name="submit">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</body>
<?php
	}
}
?>
</html>
