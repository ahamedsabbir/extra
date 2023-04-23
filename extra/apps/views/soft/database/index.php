<!doctype html>
<html class="no-js" lang="">
<head>
	<title>Database</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<header class="container py-5">
		<h1 class="text-center">Database Setup</h1>
    </header>
	<main>
		<section class="">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="col-md-6">
						<form action="soft.php?url=database/setup_database_function/index/" method="POST">
						  <div class="form-group">
							<label for="product_id">Product ID</label>
							<input type="text" class="form-control" id="product_id" name="product_id">
						  </div>
						  <div class="form-group">
							<label for="db_host">Database Host</label>
							<input type="text" class="form-control" id="db_host" name="db_host">
						  </div>
						  <div class="form-group">
							<label for="db_name">Database Name</label>
							<input type="text" class="form-control" id="db_name" name="db_name">
						  </div>
						  <div class="form-group">
							<label for="db_user">Database User</label>
							<input type="text" class="form-control" id="db_user" name="db_user">
						  </div>
						  <div class="form-group">
							<label for="db_password">Database Password</label>
							<input type="password" class="form-control" id="db_password" name="db_password">
						  </div>
						  <button type="submit" class="btn btn-primary" name="submit">Save</button>
						</form>
					</div>
				</div>
			</div>
		</section>
	</main>
    <!-- Footer -->
    <footer class="page-footer font-small blue">

      <!-- Copyright -->
      <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
      </div>
      <!-- Copyright -->

    </footer>
    <!-- Footer -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>