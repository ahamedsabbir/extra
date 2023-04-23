<!doctype html>
<html class="no-js" lang="en">
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
								<h3 class="title">User Email Verification <?php echo report_class::chack_report(); ?></h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'user_crowd_class/email_verification_function/code_reset/'; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Email ID</label>
										<input type="email" class="form-control" placeholder="Email Address" name="email">
									</div><br />
									<div class="form-group">
										<button class="btn signup" type="submit" value="code_send" name="submit">Send Code</button>
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
