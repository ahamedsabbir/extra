<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<?php echo backend_class::style('style', $plugins_type, $plugins); ?>
	</head>
	<body>
		<main>
			<div class="form-bg py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="form-container">
								<h3 class="title">Email Verification</h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'admin_crowd_class/code_reset_function/sign-in'; ?>" method="POST" enctype="multipart/form-data">
									<?php 
										if(isset($framework_admin_datatable)){
											foreach($framework_admin_datatable as $admin_key => $admin_value){
									?>
										<div class="form-group">
											<label>Email</label>
											<input class="form-control" type="email" name="email" placeholder="<?php echo $admin_value["email"]; ?>" value="<?php echo $admin_value["email"]; ?>">
										</div>		
									<?php		
											}
										}
									?>
									<div class="form-group">
										<label>Code</label>
										<input class="form-control" type="text" name="code">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input class="form-control" type="password" placeholder="Password" name="password">
									</div>
									<h4 class="sub-title"></h4>
									<div class="form-group">
										<button class="btn signup" type="submit" value="reset_pass" name="submit">Reset</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</body>
</html>
