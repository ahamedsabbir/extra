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
								<h3 class="title">Sign-In</h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'admin_crowd_class/signin_function/profile/'; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Email ID</label>
										<input type="email" class="form-control" placeholder="Email Address" name="email">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="Password" name="password">
									</div>
									<div class="form-group">
										<button class="btn signup" type="submit" value="signin" name="submit">Sign-In</button>
									</div>
								</form>
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
