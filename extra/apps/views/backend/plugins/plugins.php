<!doctype html>
<html class="no-js" lang="">
	<head>
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
	</head>
	<body>
		<header class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  <div class="container-fluid">
				<a class="navbar-brand" href="#">Plugins</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
				  <ul class="navbar-nav">
					<li class="nav-item">
					  <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
					</li>
				  </ul>
				</div>
			  </div>
			</nav>
		</header>
		<main class="container py-2">
<?php
if(isset($plugin_loops)){
	foreach($plugin_loops as $plugin_keys){
?>
		<div class="py-2">	
			<div class="card">
			  <h5 class="card-header"><?php echo $plugin_keys; ?></h5>
			  <div class="card-body">
<?php
$xml = simplexml_load_file("extra/apps/views/backend/plugins/".$plugin_keys."/assets/xml/about.xml");
foreach($xml as $xml_key){	
	if($xml_key["status"] == 1){
?>
				<h5 class="card-title"><?php echo vendor_code_class::base64url_decode($xml_key->author); ?></h5>
				<p class="card-text"><?php echo vendor_code_class::base64url_decode($xml_key->title); ?></p>
<?php
		if(vendor_code_class::base64url_decode($xml_key->type) != "system"){
?>
				<a href="<?php echo BASE_URL."plugins_".$plugin_keys.'_class/unstall/plugins/'; ?>" class="btn btn-primary">Unstall</a>
<?php
		}
?>
				<a href="<?php echo BASE_URL.vendor_code_class::base64url_decode($xml_key->home); ?>" class="btn btn-primary">Index</a>
				<a href="<?php echo BASE_URL.vendor_code_class::base64url_decode($xml_key->plugin); ?>" class="btn btn-primary">Plugin</a>
				<a href="<?php echo BASE_URL.vendor_code_class::base64url_decode($xml_key->menu); ?>" class="btn btn-primary">Menu</a>
				<a href="<?php echo BASE_URL.vendor_code_class::base64url_decode($xml_key->settings); ?>" class="btn btn-primary">Settings</a>
				<a href="<?php echo BASE_URL."plugins_".$plugin_keys.'_class/about_function/about/'; ?>" class="btn btn-primary">About</a>
<?php
	}
}
?>
			  </div>
			</div>
		</div>
<?php
	}
}
?>

		</main>
		<?php include(backend_class::inc("footer")) ?>
	</body>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
</html>