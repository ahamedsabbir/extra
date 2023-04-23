<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="keywords" content="htmlcss bootstrap, multi level menu, submenu, treeview nav menu examples" />
	<meta name="description" content="Bootstrap 5 navbar multilevel treeview examples for any type of project, Bootstrap 5" />  
	<title>Demo - Bootstrap 5 multilevel dropdown submenu sample</title>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<style type="text/css">
/* ============ desktop view ============ */
@media all and (min-width: 992px) {

	.dropdown-menu li{
		position: relative;
	}
	.dropdown-menu .submenu{ 
		display: none;
		position: absolute;
		left:100%; top:-7px;
	}
	.dropdown-menu .submenu-left{ 
		right:100%; left:auto;
	}

	.dropdown-menu > li:hover{ background-color: #f1f1f1 }
	.dropdown-menu > li:hover > .submenu{
		display: block;
	}
}	
/* ============ desktop view .end// ============ */

/* ============ small devices ============ */
@media (max-width: 991px) {

.dropdown-menu .dropdown-menu{
		margin-left:0.7rem; margin-right:0.7rem; margin-bottom: .5rem;
}

}	
/* ============ small devices .end// ============ */
</style>
<script type="text/javascript">
//	window.addEventListener("resize", function() {
//		"use strict"; window.location.reload(); 
//	});
	document.addEventListener("DOMContentLoaded", function(){
    	/////// Prevent closing from click inside dropdown
		document.querySelectorAll('.dropdown-menu').forEach(function(element){
			element.addEventListener('click', function (e) {
			  e.stopPropagation();
			});
		})
		// make it as accordion for smaller screens
		if (window.innerWidth < 992) {

			// close all inner dropdowns when parent is closed
			document.querySelectorAll('.navbar .dropdown').forEach(function(everydropdown){
				everydropdown.addEventListener('hidden.bs.dropdown', function () {
					// after dropdown is hidden, then find all submenus
					  this.querySelectorAll('.submenu').forEach(function(everysubmenu){
					  	// hide every submenu as well
					  	everysubmenu.style.display = 'none';
					  });
				})
			});
			document.querySelectorAll('.dropdown-menu a').forEach(function(element){
				element.addEventListener('click', function (e) {
		
				  	let nextEl = this.nextElementSibling;
				  	if(nextEl && nextEl.classList.contains('submenu')) {	
				  		// prevent opening link if link needs to open dropdown
				  		e.preventDefault();
				  		console.log(nextEl);
				  		if(nextEl.style.display == 'block'){
				  			nextEl.style.display = 'none';
				  		} else {
				  			nextEl.style.display = 'block';
				  		}

				  	}
				});
			})
		}
		// end if innerWidth

	}); 
	// DOMContentLoaded  end
</script>
</head>
<body>
	<header class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"><?php echo $plugin; ?></a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
				<div class="collapse navbar-collapse" id="main_nav">
					<ul class="navbar-nav">
						<li class="nav-item active"> <a class="nav-link" href="#">Home </a> </li>			
<?php
$nav = simplexml_load_file("extra/resources/xml/plugins.xml");
foreach($nav->plugin as $plugin_nav){		
	if($plugin_nav['name'] == $plugin){		
		foreach($plugin_nav->one as $one){
?>
        <li class="nav-item dropdown">
			<a ondblclick="window.location='<?php echo BASE_URL.$one->href; ?>'" class="nav-link" href="" data-bs-toggle="dropdown" target="_blank"><?php echo $one["name"]; ?></a>	
			
<?php
			if($one->two != false){
?>
			<ul class="dropdown-menu">
<?php
				foreach($one->two as $two){
?>
            
				<li><a ondblclick="window.location='<?php echo BASE_URL.$two->href; ?>'" class="dropdown-item" href="<?php echo $two->href; ?>"><?php echo $two["name"]; ?></a>
<?php
					if($two->three != false){
?>
				<ul class="submenu dropdown-menu">
<?php
						foreach($two->three as $three){
?>							
							<li><a ondblclick="window.location='<?php echo BASE_URL.$three->href; ?>'" class="dropdown-item" href="<?php echo $three->href; ?>"><?php echo $three["name"]; ?></a>
<?php
							if($three->four != false){
?>
							<ul class="submenu dropdown-menu">
<?php
								foreach($three->four as $four){
?>						
									<li><a ondblclick="window.location='<?php echo BASE_URL.$four->href; ?>'" class="dropdown-item" href="<?php echo $four->href; ?>" target="_blank"><?php echo $four["name"]; ?></a></li>
<?php
								}
?>
						</ul>
<?php
							}
?>
					</li>
<?php
						}
?>
				</ul>
<?php
					}
?>
			</li>  
<?php
				}
?>
		</ul>
<?php
			}
?>
      </li>
<?php
		}
	}
}
?>			
						<li class="nav-item"><a class="nav-link" href="#"> About </a></li>
					</ul>
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="<?php echo BASE_URL.'plugin_'.$plugin."_class/index_page_function/menu/"; ?>"> Edite Menu </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
	 home
	</main>
	<?php include(backend_class::inc("footer")) ?>
</body>
</html>