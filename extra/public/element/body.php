<?php
class body{
    public function __construct($appsType){
        include "extra/public/element/includes.php";
		if($appsType != null){
			include "extra/public/element/$appsType.php";
		}
    }
}
?>
