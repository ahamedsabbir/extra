<!doctype html>
<html class="no-js" lang="en">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<?php echo backend_class::style('style', $plugins); ?>
	</head>
	<body>
		<main>
			<div class="form-bg py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="form-container">
								<h3 class="title">User Register</h3>
								<form class="form-horizontal" role="form" action="<?php echo BASE_URL.'user_crowd_class/user_signup_function/sign-in/'; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>User Name</label>
										<input type="text" class="form-control" placeholder="User Name" name="name">
									</div>
									<div class="form-group">
										<label>Email ID</label>
										<input type="email" class="form-control" placeholder="Email Address" name="email">
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" class="form-control" placeholder="Password" name="password">
									</div>
									<div class="form-group">
										<label>Phone No.</label>
										<input type="number" class="form-control" placeholder="Phone Number" name="mobile">
									</div>
									
									<h4 class="sub-title">Personal Information</h4>
									
									
									<div class="form-group">
										<label>Question</label>
										<select class="form-control" id="sel1" name="question">
											<option selected="true" disabled="disabled">Select Security Question.</option>
											<option value="Which is your favorite movie?">Which is your favorite movie?</option>
											<option value="What is your pet's name?">What is your pet's name?</option>
											<option value="What is the name of your village?">What is the name of your village?</option>
										</select>
									</div>
									<div class="form-group">
										<label>Answer</label>
										<input id="forgetAnswer" name="answer" placeholder="" class="form-control"  type="text">
									</div>
									<div class="form-group">
										<button class="btn signup" type="submit" name="submit" value="sign-up">Create Account</button>
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
