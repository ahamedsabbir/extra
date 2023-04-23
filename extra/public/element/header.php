<?php
class header{
	public function __construct(){
	    //error_reporting(E_ALL | E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
		date_default_timezone_set('Asia/Dhaka');
		header("Cache-Control: no-cache, must-revalidate");
		header("Pragma: no-cache");
		header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
		header("Cache-Control: max-age=2592000");
	}
}
?>