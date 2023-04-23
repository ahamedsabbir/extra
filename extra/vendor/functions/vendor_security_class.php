<?php
class vendor_security_class{
	public static function security_function($level){
		switch($level){
			case 1:true;
			break;
			default:false;
		}
	}
	public static function file_access($src){
		$level = session_class::get("admin_level"); 
		/*switch($level){
			case 1:
				chmod($src, 0777);
				return "0777";
			break;
			case 2:
				chmod($src, 0770);
				return "0770";
			break;
			default:
				chmod($src, 0000);
				return "0000";
		}*/	
    }	
}
?>