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
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<style>
.menu_section > ul{padding:0px; margin:0px; list-style-type: none;}
.menu_section > ul ul{list-style-type: none;}
</style>
  </head>
  <body>
 <?php
$page = "menu";
$xml_file = "extra/resources/xml/backend_menu.xml";
$array_key = vendor_code_class::argu_encode(array("menu_xml"));
$array_value = vendor_code_class::argu_encode(array($xml_file));
$backend_menu_xml = simplexml_load_file($xml_file);
 ?>
	<header class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
			<a class="navbar-brand" href="#">Menu</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
			  <ul class="navbar-nav">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link active" href="" data-bs-toggle="modal" data-bs-target="#createzero">Add Nav</a>
					<?php echo plugins_nav_class::create_element("createzero", "zero", $page, $array_key, $array_value); ?>
				</li>
			  </ul>
			</div>
		  </div>
		</nav>
	</header>
	<main class="py-3">
<?php
foreach($backend_menu_xml->zero as $zero){	
	$zero_sn = $zero["sn"];
	$zero_id = $zero["id"];
	$zero_name = vendor_code_class::base64url_decode($zero["name"]);
	$zero_title = vendor_code_class::base64url_decode($zero->title);
	$zero_href = vendor_code_class::base64url_decode($zero->href);
	$zero_target = vendor_code_class::base64url_decode($zero->target);
	$zero_font_icon = vendor_code_class::base64url_decode($zero->font_icon);
?>
	<section class="container menu_section py-2">
	<div class="card">
	  <div class="card-header">
			<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
			  <button type="button" class="btn btn-warning">ZERO</button>
			  <div class="btn-group" role="group">
				<button id="btnGroupDrop1" type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
					<?php echo $zero_name; ?> 
					<span class="badge bg-dark"><?php echo $zero_sn; ?></span>
				</button>
				<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<li><a class="dropdown-item" href="" style="color:red;"><?php echo $zero_id; ?></a></li>
					<li><a class="dropdown-item" href="<?php echo BASE_URL.$zero_href; ?>">Open</a></li>
					<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$zero_id; ?>">Add Child</a></li>
					<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$zero_id; ?>">Edite</a></li>
					<li><a class="dropdown-item" href="<?php echo BASE_URL.'plugins_nav_class/delete_function/'.$page.'/'.$array_key.'/'.$array_value.'/&delete=zero&zero='.$zero_id; ?>">Delete</a></li>
				</ul>
				<?php echo plugins_nav_class::create_element("create".$zero_id, "one", $page, $array_key, $array_value, $zero_id); ?>
				<?php echo plugins_nav_class::update_element("update".$zero_id, "zero", $page, $array_key, $array_value, $zero, $zero_id); ?>
			  </div>
			</div>
		</div> 
		<div class="card-body">
		<ul>
<?php
	foreach($zero->one as $one){
		$one_sn = $one["sn"];
		$one_id = $one["id"];
		$one_name = vendor_code_class::base64url_decode($one["name"]);
		$one_title = vendor_code_class::base64url_decode($one->title);
		$one_href = vendor_code_class::base64url_decode($one->href);
		$one_target = vendor_code_class::base64url_decode($one->target);
		$one_font_icon = vendor_code_class::base64url_decode($one->font_icon);
?>
			<li class="py-1" style="list-style:none">
					<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
					  <button type="button" class="btn btn-primary">ONE</button>
					  <div class="btn-group" role="group">
						<button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						  <?php echo $one_name; ?>
						  <span class="badge bg-dark"><?php echo $one_sn; ?>
						</button>
						<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<li><a class="dropdown-item" href="" style="color:red;"><?php echo $one_id; ?></a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.$one_href; ?>">Open</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$one_id; ?>">Add Child</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$one_id; ?>">Edite</a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.'plugins_nav_class/delete_function/'.$page.'/'.$array_key.'/'.$array_value.'/&delete=one&zero='.$zero_id.'&one='.$one_id; ?>">Delete</a></li>
						</ul>
						<?php echo plugins_nav_class::create_element("create".$one_id, "two", $page, $array_key, $array_value, $zero_id, $one_id); ?>
						<?php echo plugins_nav_class::update_element("update".$one_id, "one", $page, $array_key, $array_value, $one, $zero_id, $one_id); ?>
					  </div>
					</div>
				<ul>
		    
<?php
			foreach($one->two as $two){
				$two_sn = $two["sn"];
				$two_id = $two["id"];
				$two_name = vendor_code_class::base64url_decode($two["name"]);
				$two_title = vendor_code_class::base64url_decode($two->title);
				$two_href = vendor_code_class::base64url_decode($two->href);
				$two_target = vendor_code_class::base64url_decode($two->target);
				$two_font_icon = vendor_code_class::base64url_decode($two->font_icon);
?>
				<li class="py-1" style="list-style:none">
					<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
					  <button type="button" class="btn btn-secondary">TWO</button>
					  <div class="btn-group" role="group">
						<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
						<?php echo $two_name; ?>
						<span class="badge bg-dark"><?php echo $two_sn; ?></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
							<li><a class="dropdown-item" href="" style="color:red;"><?php echo $two_id; ?></a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.$two_href; ?>">Open</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$two_id; ?>">Add Child</a></li>
							<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$two_id; ?>">Edite</a></li>
							<li><a class="dropdown-item" href="<?php echo BASE_URL.'plugins_nav_class/delete_function/'.$page.'/'.$array_key.'/'.$array_value.'/&delete=two&zero='.$zero_id.'&one='.$one_id.'&two='.$two_id; ?>">Delete</a></li>
						</ul>
						<?php echo plugins_nav_class::create_element("create".$two_id, "three", $page, $array_key, $array_value, $zero_id, $one_id, $two_id); ?>
						<?php echo plugins_nav_class::update_element("update".$two_id, "two", $page, $array_key, $array_value, $two, $zero_id, $one_id, $two_id); ?>
					  </div>
					</div>
					<ul class="">
<?php
				foreach($two->three as $three){
					$three_sn = $three["sn"];
					$three_id = $three["id"];
					$three_name = vendor_code_class::base64url_decode($three["name"]);
					$three_title = vendor_code_class::base64url_decode($three->title);
					$three_href = vendor_code_class::base64url_decode($three->href);
					$three_target = vendor_code_class::base64url_decode($three->target);
					$three_font_icon = vendor_code_class::base64url_decode($three->font_icon);
?>			
						<li class="py-1" style="list-style:none">
							<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
							  <button type="button" class="btn btn-success">THREE</button>
							  <div class="btn-group" role="group">
								<button id="btnGroupDrop1" type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
									<?php echo $three_name; ?>
									<span class="badge bg-dark"><?php echo $three_sn; ?></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									<li><a class="dropdown-item" href="" style="color:red;"><?php echo $three_id; ?></a></li>
									<li><a class="dropdown-item" href="<?php echo BASE_URL.$three_href; ?>">Open</a></li>
									<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "create".$three_id; ?>">Add Child</a></li>
									<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$three_id; ?>">Edite</a></li>
									<li><a class="dropdown-item" href="<?php echo BASE_URL.'plugins_nav_class/delete_function/'.$page.'/'.$array_key.'/'.$array_value.'/&delete=three&zero='.$zero_id.'&one='.$one_id.'&two='.$two_id.'&three='.$three_id; ?>">Delete</a></li>
								</ul>
								<?php echo plugins_nav_class::create_element("create".$three_id, "four", $page, $array_key, $array_value, $zero_id, $one_id, $two_id, $three_id); ?>
								<?php echo plugins_nav_class::update_element("update".$three_id, "three", $page, $array_key, $array_value, $three, $zero_id, $one_id, $two_id, $three_id); ?>
							  </div>
							</div>
							<ul class="">
<?php
					foreach($three->four as $four){
						$four_sn = $four["sn"];
						$four_id = $four["id"];
						$four_name = vendor_code_class::base64url_decode($four["name"]);
						$four_title = vendor_code_class::base64url_decode($four->title);
						$four_href = vendor_code_class::base64url_decode($four->href);
						$four_target = vendor_code_class::base64url_decode($four->target);
						$four_font_icon = vendor_code_class::base64url_decode($four->font_icon);
?>
								<li class="py-1" style="list-style:none">
									<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
									  <button type="button" class="btn btn-danger">FOUR</button>
									  <div class="btn-group" role="group">
										<button id="btnGroupDrop1" type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
											<?php echo $four_name; ?>
											<span class="badge bg-dark"><?php echo $four_sn; ?></span>
										</button>
										<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
											<li><a class="dropdown-item" href="" style="color:red;"><?php echo $four_id; ?></a></li>
											<li><a class="dropdown-item" href="<?php echo BASE_URL.$four_href; ?>">Open</a></li>
											<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#<?php echo "update".$four_id; ?>">Edite</a></li>
											<li><a class="dropdown-item" href="<?php echo BASE_URL.'plugins_nav_class/delete_function/'.$page.'/'.$array_key.'/'.$array_value.'/&delete=four&zero='.$zero_id.'&one='.$one_id.'&two='.$two_id.'&three='.$three_id.'&four='.$four_id; ?>">Delete</a></li>
										</ul>
										<?php echo plugins_nav_class::update_element("update".$four_id, "four", $page, $array_key, $array_value, $four, $zero_id, $one_id, $two_id, $three_id, $four_id); ?>
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
			</li>
<?php
	}
?>
		</ul>
		</div>
		</div>
		
	</section>
<?php
}
?>
</main>
	<?php include(backend_class::inc("footer")) ?>
  </body>
	<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
</html>
