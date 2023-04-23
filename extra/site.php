<?php     
ob_start();
include_once "extra/public/main_site_class.php";
$main_site_object = new main_site_class();
ob_end_flush();
?>