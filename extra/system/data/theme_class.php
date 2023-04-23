<?php
class theme_class{
	public static $name;
	public static $theme_option = array();
	public static $path;
	public static $title;
	public static $keywords;
	public static $description;
	public static $author;
	public static $icon;
	public static $thumbnail;
	public static $banner;
	public static $banner_title;
	public static $banner_description;
	public function __construct($theme_name){
      	$theme_src = "extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml";
      	$theme_data = simplexml_load_file($theme_src);
		foreach($theme_data->theme as $theme){
            self::$name = $theme_name;
			self::$path = "extra/apps/views/themes/".self::$name."/";
			siteinfo_class::$title = self::$title = $theme->title;
			siteinfo_class::$keywords = self::$keywords = $theme->keywords;
			siteinfo_class::$description = self::$description = $theme->description;
			siteinfo_class::$author = self::$author = $theme->author;
			siteinfo_class::$icon = self::$icon = $theme->icon;
			siteinfo_class::$thumbnail = self::$thumbnail = $theme->icon;
			self::$banner = $theme->banner;
			self::$banner_title = $theme->banner_title;
			self::$banner_description = $theme->banner_description;
		}
		$get_url = preg_replace("~\\\\~", "", $_SERVER["DOCUMENT_ROOT"]."/".ROOT_FOLDER."extra/apps/views/themes/");
		$folder_list = glob($get_url.DIRECTORY_SEPARATOR."*", GLOB_ONLYDIR);
		$i = 0;
		foreach($folder_list as $folder_url){
			$this->folder_url = $folder_url = preg_replace("~\\\\~", "/", $folder_url);
			$link_array = explode("/", $folder_url);
			$theme_name = end($link_array);
			self::$theme_option[$i++] = $theme_name;
		}	
	}
	public static function load($name){
		if(strpos($name, '\\') != null){
			$name = explode("\\", $name);
			$name = implode("/", $name);
		}
		return "extra/apps/views/themes/".self::$name."/".$name.".php";
	}
	public static function page($name, $app = false){
		if($app == true){
			return "extra/apps/views/themes/".self::$name."/app/$app/".$name.".php";
		}else{
			return "extra/apps/views/themes/".self::$name."/".$name.".php";
		}
	}
	public static function style($css, $app = false){
		if($app == true){
			return "<link rel='stylesheet' type='text/css' href='".self::$path."app/$app/assets/".$css.".css'>";
		}else{
			return "<link rel='stylesheet' type='text/css' href='".self::$path."assets/".$css.".css'>";
		}
	}
	public static function script($js, $app = false){
		if($app == true){
			return "<script type='text/javascript' src='".self::$path."app/$app/assets/".$js.".js'></script>";
		}else{
			return "<script type='text/javascript' src='".self::$path."assets/".$js.".js'></script>";
		}
	}
	public static function helper($helper, $app = false){
		if($app == true){
			return(self::$path."app/$app/helper/".$helper.".php");
		}else{
			return(self::$path."helper/".$helper.".php");
		}
	}
	public static function inc($inc, $app = false){
		if($app == true){
			return(self::$path."app/$app/inc/".$inc.".php");
		}else{
			return(self::$path."inc/".$inc.".php");
		}
	}
	public static function sys($sys, $app = false){
		if($app == true){
			return(self::$path."app/$app/sys/".$sys.".php");
		}else{
			return(self::$path."sys/".$sys.".php");
		}
	}
	public static function part($part, $app = false){
		if($app == true){
			return(self::$path."app/$app/part/".$part.".php");
		}else{
			return(self::$path."part/".$part.".php");
		}
	}
	public static function source($link, $app = false){
		if($app == true){
			return vendor_file_class::get(self::$path."app/$app/".$link);
		}else{
			return vendor_file_class::get(self::$path.$link);
		}	
	}
    public static function url($src, $app = false){
		if($app == true){
			return self::$path."app/$app/".$src;
		}else{
			return self::$path.$src;
		}
    }
}
?>