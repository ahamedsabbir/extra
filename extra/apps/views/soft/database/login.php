<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="extra/apps/views/soft/database/assets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/bootstrap/extra/apps/views/soft/database/assets/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/fonts/font-awesome-4.7.0/extra/apps/views/soft/database/assets/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/animsition/extra/apps/views/soft/database/assets/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/database/assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('extra/apps/views/soft/database/assets/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" action="soft.php?url=database/database_login_function/database" method="post">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="userpassword" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" type="submit" name="submit">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/animsition/extra/apps/views/soft/database/assets/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/bootstrap/extra/apps/views/soft/database/assets/js/popper.js"></script>
	<script src="extra/apps/views/soft/database/assets/vendor/bootstrap/extra/apps/views/soft/database/assets/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="extra/apps/views/soft/database/assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="extra/apps/views/soft/database/assets/js/main.js"></script>

</body>
</html>