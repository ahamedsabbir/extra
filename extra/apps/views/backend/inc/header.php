<header class="">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
		<a class="btn btn-dark" href="#" onclick="openNav()"><i class="fa-solid fa-list"></i></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		  <i class="fa-solid fa-bars"></i>
		</button>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" onclick="openNotification()"><i class="fa-solid fa-bell"></i></button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item dropdown">
			  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				<i class="fa-solid fa-users-rectangle"></i> User Interface
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('theme', 'index_page_function', 'index'); ?>">Theme</a></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins', 'index_page_function', 'plugins'); ?>">Plugins</a></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('backend_settings_class', 'index_page_function', 'security'); ?>">Security</a></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('backend_settings_class', 'index_page_function', 'settings'); ?>">Settinges</a></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('backend_theme_class', 'index_page_function', 'theme'); ?>">universal Nav</a></li>
				<li><hr class="dropdown-divider"></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('backend_system_class', 'system_update_function', 'update'); ?>">Update</a></li>
				<li><a class="dropdown-item" href="<?php echo address_class::request_method('backend_settings_class', 'index_page_function', 'about'); ?>">About</a></li>
			  </ul>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<?php echo address_class::request_method('plugins_contact_class', 'index_page_function', 'inbox'); ?>" tabindex="-1"><i class="fas fa-inbox"></i> Inbox
				<span class="badge bg-danger">
                	
<?php
if(isset($unread_count)){   
echo $unread_count;
}
?>
				</span>
			  </a>
			</li>
            	<li class="nav-item dropdown">
				  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fa-solid fa-seedling"></i> SEO
				  </a>
				  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li class="nav-item"><a data-bs-toggle="modal" data-bs-target="#insertSitemap" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-sitemap"></i> Sitemap</a></li>
                    <li class="nav-item"><a data-bs-toggle="modal" data-bs-target="#emailMarketing" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-truck-fast"></i> Email Marketing</a></li>
                    <li class="nav-item"><a class="dropdown-item" href="index.php?url=seo/subscriber_email_function/index"><i class="fa-solid fa-heart"></i> Subscriber</a></li>
				  </ul>
				</li>
			  	<li class="nav-item dropdown">
				  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fa-solid fa-database"></i> Datatabse
				  </a>
				  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins_database_class', 'index_page_function', 'index'); ?>">Index</a></li>
					<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins_database_class', 'index_page_function', 'database'); ?>">Database</a></li>
					<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins_database_class', 'database_getalltables_function', 'database'); ?>">All Table</a></li>
					<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins_database_class', 'database_backup_function', 'database'); ?>">Database Backup</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="<?php echo address_class::request_method('plugins_database_class', 'index_page_function', 'settings'); ?>">Settings</a></li>
				  </ul>
				</li>
            	<li class="nav-item dropdown">
				  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-brands fa-uncharted"></i> Software</a>
				  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
<?php
$soft_file_list = glob("extra/apps/controllers/soft/*.php");
foreach($soft_file_list as $soft_name){
  $soft_name = str_replace(".php", "", $soft_name);
  $soft_name = str_replace("extra/apps/controllers/soft/", "", $soft_name);
  echo "<li><a class='dropdown-item' href='soft.php?url=$soft_name/index_page_function/index/'><i class='fa-solid fa-box-archive'></i> $soft_name</a></li>";
}                                   
?>
                  
                  
                  </ul>
				</li>
				<li class="nav-item dropdown">
				  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fa-solid fa-location-crosshairs"></i> Other Action
				  </a>
				  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li class="nav-item"><a href="index.php?url=frontend/goto_main_theme_function/index/" class="dropdown-item"><i class="fa-solid fa-masks-theater"></i> <?php echo siteinfo_class::$theme; ?></a></li>
					<li class="nav-item"><a href="index.php?url=advertise/index_page_function/insert/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-rectangle-ad"></i> advertise</a></li>
                    <li class="nav-item"><a href="index.php?url=notification/index_page_function/insert/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-bell"></i> Notification</a></li>
                    <li class="nav-item"><a data-bs-toggle="modal" data-bs-target="#codeTestResutl" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-code"></i> Code Test</a></li>
                    <li class="nav-item"><a href="index.php?url=template/index_page_function/template/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-synagogue"></i> Template</a></li>
                    <li class="nav-item"><a href="index.php?url=history/index_page_function/history/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-clock-rotate-left"></i> History</a></li>
                    <li class="nav-item"><a href="index.php?url=visitor/index_page_function/visitor/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-users"></i> Visitor</a></li>
					<li class="nav-item"><a href="<?php echo address_class::request_method('plugins_chat_class', 'index_page_function', 'achat'); ?>" class="dropdown-item" tabindex="-1"><i class="fas fa-fire"></i> Live Chat</a></li>
					<li class="nav-item"><a href="index.php?url=email/index_page_function/email/" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-envelope"></i> Email</a></li>
				  </ul>
				</li>
				<li class="nav-item dropdown">
				  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fa-brands fa-creative-commons-sampling-plus"></i> Create
				  </a>
				  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li class="nav-item"><a href="index.php?url=create/create_theme_function/&<?php echo $send_page_link; ?>" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-file-zipper"></i> Theme</a></li>
					<li class="nav-item"><a href="index.php?url=create/create_software_function/&<?php echo $send_page_link; ?>" class="dropdown-item" tabindex="-1"><i class="fa-solid fa-file-zipper"></i> Softwer</a></li>
				  </ul>
				</li>
		  </ul>
			<div class="nav-item dropdown">
				<a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<img src="<?php echo session_class::get("admin_photo"); ?>" class="" style="width:25px; border-radius:3px;"/>
				</a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="<?php echo BASE_URL."admin_profile_class/index_page_function/profile/"; ?>">Profile</a></li>
					<li><a class="dropdown-item" href="<?php echo BASE_URL."admin_profile_class/index_page_function/profile_edit/"; ?>">Edite profile</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="<?php echo BASE_URL.session_class::get("admin_deshboard"); ?>">Deshboard</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="<?php echo BASE_URL."admin_crowd_class/signout_function/"; ?>">LogOut</a></li>
				</ul>
			</div>
			<?php include(backend_class::inc("report")); ?>
			<?php echo report_class::chack_report("newbootstrap5error"); ?>
			<button class="btn btn-dark" style="-left:34px;" onclick="openNotification()"><i class="fa-solid fa-bell"></i></button>
		</div>
	  </div>
		</nav>
</header>
<?php include(backend_class::inc("left_side_nav")); ?>
<?php include(backend_class::inc("right_side_notification")); ?>

