<nav class="navbar navbar-expand-lg navbar-light bg-dark text-white">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php?url=backend">
      <img src="icon.png" class="img-thumbnail" alt="" width="30" height="30">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse text-white" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-white">
        <li class="nav-item">
          <a class="nav-link text-white" aria-current="page" href="<?php echo FRONTEND; ?>"><?php echo $theme_name; ?></a>
        </li>
		<?php array_class::get("backendMenu"); ?>
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
		<button class="btn text-white" onclick="openNotification()"><i class="fa-solid fa-bell"></i></button>
    </div>
  </div>
<?php include(backend_class::inc("left_side_nav")); ?>
<?php include(backend_class::inc("right_side_notification")); ?>
</nav>
