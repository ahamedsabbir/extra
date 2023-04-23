<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<?php echo backend_class::style('style', $plugins_type, $plugins); ?>
	</head>
	<body>
		<main>
			<div class="form-bg py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="form-container">
								<h3 class="title">Admin</h3>
								<div class="btn-group" role="group" aria-label="Basic example">
								  <button onclick="window.location='<?php echo BASE_URL.'admin_crowd_class/index_page_function/sign-in/'; ?>'" class="btn">Sign-in</button>
								  <button onclick="window.location='<?php echo BASE_URL.'admin_crowd_class/index_page_function/sign-up/'; ?>'" class="btn">Sign-up</button>
								  <button class="btn" id="forgetpassword" data-bs-toggle="dropdown" aria-expanded="false">Forget Password</button>
								  <ul class="dropdown-menu" aria-labelledby="forgetpassword">
									<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_crowd_class/index_page_function/info_verification/'; ?>">Info Verification</a></li>
									<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_crowd_class/index_page_function/email_verification/'; ?>">Email Verification</a></li>
									<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_crowd_class/index_page_function/sms_verification/'; ?>">SMS Verification</a></li>
								  </ul>
								</div>
								<hr />
								<button onclick="window.location='<?php echo FRONTEND_HOME; ?>'" class="btn">Publish Page</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</body>
	<script src="extra/resources/framework/jquery-ui-1.13.1/external/jquery/jquery.js" ></script>
	<script src="extra/resources/framework/jquery-ui-1.13.1/jquery-ui.js"></script>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
