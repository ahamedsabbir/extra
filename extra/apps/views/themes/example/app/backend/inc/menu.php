<?php
$hidecount = controller::$staticData->counts("example_post_datatable", array("status" => 0));
$recentcount = controller::$staticData->counts("example_post_datatable", array("level" => 0));
$backendMenu = <<<TEXT
<li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Backend</a>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	<li><a class="dropdown-item" href="index.php?url=theme_example_backend_class/index_page_function/insert/">Insert</a></li>
	<li><a class="dropdown-item" href="index.php?url=theme_example_backend_class/loop_page_function/loop/">All Post</a></li>
	<li><a class="dropdown-item" href="index.php?url=theme_example_backend_class/hide_page_function/loop/">Hide Post<span class="badge badge-danger text-dark">$hidecount</span></a></li>
	<li><a class="dropdown-item" href="index.php?url=theme_example_backend_class/recent_page_function/loop/">Recent Post</a></li>
  </ul>
</li>
TEXT;
array_class::set("backendMenu", $backendMenu);
ringtone_class::ringtone_function($recentcount, "Short Msg Tone.mp3");
include(backend_class::inc("menu"));
?>
