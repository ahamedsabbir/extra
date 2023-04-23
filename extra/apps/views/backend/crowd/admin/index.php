<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Signin Template · Bootstrap v5.0</title>
    <link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
    <style>
html, body {
	height: 100%;
}
body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}
main {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

  @media (min-width: 768px) {
	.bd-placeholder-img-lg {
	  font-size: 3.5rem;
	}
  }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="">  
	<main class="">
		<div class="list-group">
		  <a href="#" class="list-group-item list-group-item-action active text-center" aria-current="true">CROWD</a>
			<a href="<?php echo address_class::request_method('admin_profile_class', 'accounts_page_function', 'accounts'); ?>" class="list-group-item list-group-item-action">Accounts</a>
			<a href="<?php echo address_class::request_method('admin_profile_class', 'profile_page_function', 'profile', false, false, "&admin_id=".session_class::get('admin_id')); ?>" class="list-group-item list-group-item-action">Profile</a>
			<a href="<?php echo address_class::request_method('admin_crowd_class', 'category_function', 'category'); ?>" class="list-group-item list-group-item-action">Settings</a>
			<a href="<?php echo address_class::request_method('admin_crowd_class', 'category_function', 'category'); ?>" class="list-group-item list-group-item-action">About</a>
		</div>
	</main>
  </body>
</html>
