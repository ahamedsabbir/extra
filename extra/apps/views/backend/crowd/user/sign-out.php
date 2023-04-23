<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<style>
body {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
}

.btn-google {
  color: white !important;
  background-color: #ea4335;
}

.btn-facebook {
  color: white !important;
  background-color: #3b5998;
}
</style>
</head>
<body> 
<div class="container"> 
	<div class="row"> 
		<div class="col-sm-9 col-md-7 col-lg-5 mx-auto"> 
			<div class="card border-0 shadow rounded-3 my-5"> 
				<div class="card-header text-center">
					<h1>Hello Sir!</h1>
					<small>we are alwse stay with you.</small>
				</div>
				<div class="card-body"> 
					<button class="btn btn-block text-uppercase fw-bold" onclick="window.location='<?php echo BASE_URL.'user_crowd_class/index_page_function/sign-in/'; ?>'">Sign in</button>
					<button class="btn btn-block text-uppercase fw-bold" onclick="window.location='<?php echo BASE_URL.'user_crowd_class/index_page_function/sign-up/'; ?>'">Sign up</button>
					<button class="btn btn-block text-uppercase fw-bold" onclick="window.location='<?php echo BASE_URL.'user_crowd_class/index_page_function/forget/'; ?>'">Forget</button>
 			</div> 
			</div> 
		</div> 
	</div> 
</div>
<?php include(backend_class::inc("fixed_button")) ?>
</body>
</html>