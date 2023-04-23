<?php
if($_SERVER['HTTPS'] == "on"){
    include("extra/site.php");
}else{
	$pageLink = $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
    header("Location:https://$pageLink", TRUE, 301);
}
?>