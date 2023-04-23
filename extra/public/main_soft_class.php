<?php
class main_soft_class{
	public function __construct(){
		include_once "extra/public/element/first.php";
		$first = new first();
	    include_once "extra/public/element/body.php";
		$body = new body("soft");
		include_once "extra/public/element/last.php";
		$last = new last();
	}
}
?>