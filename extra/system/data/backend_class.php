<?php
class backend_class{
	public static $name = "backend";
	public static $path = "extra/apps/views/backend/";
	public static $mvc = "1.9";
	public function __construct(){}
	public static function page($page, $plugins_type = false, $plugins = false){
		switch($plugins_type){
			case "plugins":
			return "extra/apps/views/".self::$name."/plugins/".$plugins."/".$page.".php";
			break;
			case "dashboard":
			return "extra/apps/views/".self::$name."/dashboard/".$plugins."/".$page.".php";
			break;
			case "crowd":
			return "extra/apps/views/".self::$name."/crowd/".$plugins."/".$page.".php";
			break;
			case "post":
			return "extra/apps/views/".self::$name."/post/".$plugins."/".$page.".php";
			break;
			case "page":
			return "extra/apps/views/".self::$name."/page/".$plugins."/".$page.".php";
			break;
			default:
			return "extra/apps/views/".self::$name."/".$page.".php";
		}
	}
	public static function inc($part, $plugins_type = false, $plugins = false){
		switch($plugins_type){
			case "plugins":
			return(self::$path."plugins/".$plugins."/inc/".$part.".php");
			break;
			case "dashboard":
			return(self::$path."dashboard/".$plugins."/inc/".$part.".php");
			break;
			case "crowd":
			return(self::$path."crowd/".$plugins."/inc/".$part.".php");
			break;
			case "post":
			return(self::$path."post/".$plugins."/inc/".$part.".php");
			break;
			case "page":
			return(self::$path."page/".$plugins."/inc/".$part.".php");
			break;
			default:
			return(self::$path."inc/".$part.".php");
		}
	}
	public static function style($css, $plugins_type = false, $plugins = false){
		switch($plugins_type){
			case "plugins":
			return "<link rel='stylesheet' type='text/css' href='".self::$path."plugins/".$plugins."/assets/style/".$css.".css'>";
			break;
			case "dashboard":
			return "<link rel='stylesheet' type='text/css' href='".self::$path."dashboard/".$plugins."/assets/style/".$css.".css'>";
			break;
			case "crowd":
			return "<link rel='stylesheet' type='text/css' href='".self::$path."crowd/".$plugins."/assets/style/".$css.".css'>";
			break;
			case "post":
			return "<link rel='stylesheet' type='text/css' href='".self::$path."post/".$plugins."/assets/style/".$css.".css'>";
			break;
			case "page":
			return "<link rel='stylesheet' type='text/css' href='".self::$path."page/".$plugins."/assets/style/".$css.".css'>";
			break;
			default:
			return "<link rel='stylesheet' type='text/css' href='".self::$path."assets/style/".$css.".css'>";
		}	
	}
	public static function script($js, $plugins_type = false, $plugins = false){
		switch($plugins_type){
			case "plugins":
			return "<script type='text/javascript' src='".self::$path."plugins/".$plugins."assets/script/".$js.".js'></script>";
			break;
			case "dashboard":
			return "<script type='text/javascript' src='".self::$path."dashboard/".$plugins."assets/script/".$js.".js'></script>";
			break;
			case "crowd":
			return "<script type='text/javascript' src='".self::$path."crowd/".$plugins."assets/script/".$js.".js'></script>";
			break;
			case "post":
			return "<script type='text/javascript' src='".self::$path."post/".$plugins."assets/script/".$js.".js'></script>";
			break;
			case "page":
			return "<script type='text/javascript' src='".self::$path."page/".$plugins."assets/script/".$js.".js'></script>";
			break;
			default:
			return "<script type='text/javascript' src='".self::$path."assets/script/".$js.".js'></script>";
		}	
	}
	public static function sys($part, $plugins_type = false, $plugins = false){
		switch($plugins_type){
			case "plugins":
			return(self::$path."plugins/".$plugins."/sys/".$part.".php");
			break;
			case "dashboard":
			return(self::$path."dashboard/".$plugins."/sys/".$part.".php");
			break;
			case "crowd":
			return(self::$path."crowd/".$plugins."/sys/".$part.".php");
			break;
			case "post":
			return(self::$path."post/".$plugins."/sys/".$part.".php");
			break;
			case "page":
			return(self::$path."page/".$plugins."/sys/".$part.".php");
			break;
			default:
			return(self::$path."sys/".$part.".php");
		}
	}
	public static function source($link, $plugins_type = false, $plugins = false){
		if(isset($plugins_type) AND isset($plugins)){
			if(file_exists(self::$path.$plugins_type."/".$plugins."/".$link)){
				return self::$path.$plugins_type."/".$plugins."/".$link;
			}else{
				return(UPLOAD_FOLDER."404.png");
			}
		}else{
			if(file_exists(self::$path.$link)){
				return self::$path.$link;
			}else{
				return(UPLOAD_FOLDER."404.png");
			}
		}	
	}
}
?>