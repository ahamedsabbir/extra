<!doctype html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.84.0">
	<title>Signin Template · Bootstrap v5.0</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<style>
.coremenu > ul{padding:0px; margin:0px; list-style-type: none;}
.coremenu > ul ul{list-style-type: none;}
</style>
  </head>
  <body> 
	<?php include(backend_class::inc("menu_models", $plugins_type, $plugins)) ?>
	<header class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
			<a class="navbar-brand" href="#"><?php echo $plugins; ?></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
			  <ul class="navbar-nav">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="<?php echo ADMIN_HOME; ?>">Home</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link active" href="#" data-bs-toggle="modal" data-bs-target="#createelement">Add New</a>
					<?php echo create_element("createelement", "new", $plugins); ?>
				</li>
			  </ul>
			</div>
		  </div>
		</nav>
	</header>
	<section class="container coremenu">
		<ul class="py-2">
<?php
$plugins_nav = simplexml_load_file("extra/resources/xml/plugins.xml");
foreach($plugins_nav->plugins as $plugins_nav){		
	if($plugins_nav['name'] == $plugins){	
		foreach($plugins_nav->one as $one){		
?>
			<li class="py-2">
				<div class="card">
				  <div class="card-header">Nav Element</div>   
				  <div class="card-body"> 
					<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
					  <button type="button" class="btn btn-primary">One</button>
					  <div class="btn-group" role="group">
						<button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						  <?php echo $one["name"]; ?>
						</button>
						<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "open".$one["name"]; ?>">Open</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$one["name"]; ?>">Add Child</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$one["name"]; ?>">Edite</a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_plugins_class/delete_nav_function/menu/&delete=one&plugins='.$plugins.'&get_one='.$one["name"]; ?>">Delete</a></li>
						</ul>
						<?php echo create_element("create".$one["name"], "one", $plugins, $one["name"]); ?>
						<?php echo update_element("update".$one["name"], "one", $plugins, $one); ?>
						<?php echo open_element("open".$one["name"], "one", $plugins, $one); ?>
					  </div>
					</div>
				<ul>
		    
<?php
			foreach($one->two as $two){
?>
				<li class="py-1">
					<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
					  <button type="button" class="btn btn-secondary">Two</button>
					  <div class="btn-group" role="group">
						<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><?php echo $two["name"]; ?></button>
						<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "open".$two["name"]; ?>">Open</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$two["name"]; ?>">Add Child</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$two["name"]; ?>">Edite</a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_plugins_class/delete_nav_function/menu/&delete=two&plugins='.$plugins.'&get_one='.$one["name"].'&get_two='.$two["name"]; ?>">Delete</a></li>
						</ul>
						<?php echo create_element("create".$two["name"], "two", $plugins, $two["name"]); ?>
						<?php echo update_element("update".$two["name"], "two", $plugins, $two); ?>
						<?php echo open_element("open".$two["name"], "two", $plugins, $two); ?>
					  </div>
					</div>
					<ul class="">
<?php
				foreach($two->three as $three){
?>			
						<li class="py-1">
							<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
							  <button type="button" class="btn btn-success">Three</button>
							  <div class="btn-group" role="group">
								<button id="btnGroupDrop1" type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><?php echo $three["name"]; ?></button>
								<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "open".$three["name"]; ?>">Open</a></li>
									<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$three["name"]; ?>">Add Child</a></li>
									<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$three["name"]; ?>">Edite</a></li>
									<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_plugins_class/delete_nav_function/menu/&delete=three&plugins='.$plugins.'&get_one='.$one["name"].'&get_two='.$two["name"].'&get_three='.$three["name"]; ?>">Delete</a></li>
								</ul>
								<?php echo create_element("create".$three["name"], "three", $plugins, $three["name"]); ?>
								<?php echo update_element("update".$three["name"], "three", $plugins, $three); ?>
								<?php echo open_element("open".$three["name"], "three", $plugins, $three); ?>
							  </div>
							</div>
							<ul class="">
<?php
					foreach($three->four as $four){
?>
								<li class="py-1">
									<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
									  <button type="button" class="btn btn-danger">Four</button>
									  <div class="btn-group" role="group">
										<button id="btnGroupDrop1" type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><?php echo $four["name"]; ?></button>
										<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
											<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "open".$four["name"]; ?>">Open</a></li>
											<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$four["name"]; ?>">Edite</a></li>
											<li><a class="dropdown-item" href="<?php echo BASE_URL.'admin_plugins_class/delete_nav_function/menu/&delete=four&plugins='.$plugins.'&get_one='.$one["name"].'&get_two='.$two["name"].'&get_three='.$three["name"].'&get_four='.$four["name"]; ?>">Delete</a></li>
										</ul>
										<?php echo update_element("update".$four["name"], "four", $plugins, $four); ?>
										<?php echo open_element("open".$four["name"], "four", $plugins, $four); ?>
									  </div>
									</div>
								</li>
<?php
					}
?>
										</ul>
									</li>
<?php
				}
?>
								</ul>
							</li>  
<?php
			}
?>
						</ul>
					</div>
				</div>
			</li>
<?php
		}
	}
}
?>
		</ul>
	</section>
		<footer class="container text-center py-2">
			<section>
			  <!-- Facebook -->
			  <a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$facebook; ?>" role="button"><i class="fab fa-facebook-f"></i></a>
			  <!-- Google -->
			  <a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$youtube; ?>" role="button"><i class="fab fa-youtube"></i></a>
			  <!-- Linkedin -->
			  <a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$linkedin; ?>" role="button"><i class="fab fa-linkedin-in"></i></a>
			  <!-- Github -->
			  <a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$github; ?>" role="button"><i class="fab fa-github"></i></a>
			</section>
			<div class="text-center p-3">
			<?php echo settings_class::$copy_header; ?>
			<a class="text-dark" href="<?php echo settings_class::$copy_link; ?>"><?php echo settings_class::$copy_right; ?></a>
			</div>
		</footer>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>