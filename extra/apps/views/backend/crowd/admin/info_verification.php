<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
		<?php echo backend_class::style('style', $plugins_type, $plugins); ?>
	</head>
	<body>
		<main>
			<div class="form-bg py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="form-container">
								<h3 class="title">Admin Info Verification <?php echo report_class::chack_report(); ?></h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'admin_crowd_class/info_verification_function/sign-in/'; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Question</label>
										<select class="form-control" id="sel1" name="question">
											<option selected="true" disabled="disabled">Select Security Question.</option>
											<option>Which is your favorite movie?</option>
											<option>What is your pet's name?</option>
											<option>What is the name of your village?</option>
										</select>
									</div>
									<div class="form-group">
										<label>Answer</label>
										<input id="forgetAnswer" name="answer" placeholder="" class="form-control"  type="text">
									</div>
									<div class="form-group">
										<label>Email ID</label>
										<input type="email" class="form-control" placeholder="Email Address" name="email">
									</div>
									<h4 class="sub-title">Personal Information</h4>
									<div class="form-group">
										<label>new Password</label>
										<input type="password" class="form-control" placeholder="Password" name="new_pass">
									</div>
									<div class="form-group">
										<label>Renter Password</label>
										<input type="password" class="form-control" placeholder="Password" name="re_pass">
									</div>
									<div class="form-group">
										<button class="btn signup" type="submit" value="info-reset" name="submit">Reset</button>
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
