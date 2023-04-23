<?php
class main_site_class{
	public function __construct(){
		include_once "extra/public/element/first.php";
		$first = new first();
	    include_once "extra/public/element/body.php";
		$body = new body("site");
		include_once "extra/public/element/last.php";
		$last = new last();;
	}
}
?>