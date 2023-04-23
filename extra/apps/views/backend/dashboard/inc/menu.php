<?php
$backend_url = BACKEND;
$admin_deshboard = BASE_URL.session_class::get("admin_deshboard");
$backendMenu = <<<TEXT
<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	Dashboard
  </a>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	<li><a class="dropdown-item" href="$backend_url">Pro Dashboard</a></li>
	<li><hr class="dropdown-divider"></li>
	<li><a class="dropdown-item" href="$admin_deshboard">Personal Dashboard</a></li>
  </ul>
</li>
<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	Backup
  </a>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	<li><a class="dropdown-item" href="soft.php?url=database/index_page_function/database/">database</a></li>
	<li><hr class="dropdown-divider"></li>
	<li><a class="dropdown-item" href="soft.php?url=database/file_backup/datafile/">datafile</a></li>
  </ul>
</li>
<li class="nav-item">
  <a class="nav-link text-white" href="index.php?url=plugnis_example_dashboard_class/index_page_function/reach">Reach</a>
</li>
TEXT;
array_class::set("backendMenu", $backendMenu);
include(backend_class::inc("menu")); 
?>