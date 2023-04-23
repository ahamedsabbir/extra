<?php
class vendor_click_class{
	public static function click_function($link, $event = false){
		if($event == true){
			return "$event = 'window.location='$link''";
		}else{
			return "window.location='$link'";	
		}
    }
}
?>