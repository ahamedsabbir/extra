<!doctype html>
<html class="no-js" lang="en">
	<head>
		<meta charset="utf-8">
      	<meta name="viewport" content="width=device-width, initial-scale=1">
      	<meta name="description" content="">
      	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
      	<meta name="generator" content="Hugo 0.84.0">
      	<title>Signin Template · Bootstrap v5.0</title>
      	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" rel="stylesheet">
      	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<?php echo backend_class::style("chat", $plugins_type, $plugins); ?>
	</head>
	 <body class="">
       <?php include(backend_class::inc("models", $plugins_type, $plugins)); ?>
       <?php include(backend_class::inc("visitor_list", $plugins_type, $plugins)); ?> 
       <?php include(backend_class::inc("header", $plugins_type, $plugins)); ?> 
       <h1 class="text-center">Admin Chat</h1>
       <main>
         	<?php include(backend_class::inc("achat_load", $plugins_type, $plugins)); ?>
       </main>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>