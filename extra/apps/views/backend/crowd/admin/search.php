<!doctype html>
<html class="no-js" lang="">
<head>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">	
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
</head>
	<body>
		<?php include(backend_class::inc("header", $plugins_type, $plugins)); ?>
		<?php include(backend_class::inc("loop", $plugins_type, $plugins)); ?>
		<?php vendor_pagenation_class::pagenation_function("admin_manage_class/search_page_function/search"); ?>
		<?php include(backend_class::inc("footer")); ?>
	</body>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>