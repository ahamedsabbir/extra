<?php
class soft_class{
	public static $name;
	public static $soft_option = array();
	public static $path;
	public static $title;
	public static $keywords;
	public static $description;
	public static $author;
	public static $icon;
	public static $banner;
	public static $banner_title;
	public static $banner_description;
	public function __construct($soft_name){
      	$soft_src = "extra/apps/views/soft/".$soft_name."/assets/xml/soft.xml";
      	$soft_data = simplexml_load_file($soft_src);
		foreach($soft_data->soft as $soft){
            self::$name = $soft_name;
			self::$path = "extra/apps/views/soft/".self::$name."/";
			siteinfo_class::$title = self::$title = $soft->title;
			siteinfo_class::$keywords = self::$keywords = $soft->keywords;
			siteinfo_class::$description = self::$description = $soft->description;
			siteinfo_class::$author = self::$author = $soft->author;
			siteinfo_class::$icon = self::$icon = $soft->icon;
			self::$banner = $soft->banner;
			self::$banner_title = $soft->banner_title;
			self::$banner_description = $soft->banner_description;
		}
		$get_url = preg_replace("~\\\\~", "", $_SERVER["DOCUMENT_ROOT"]."/".ROOT_FOLDER."extra/apps/views/soft/");
		$folder_list = glob($get_url.DIRECTORY_SEPARATOR."*", GLOB_ONLYDIR);
		$i = 0;
		foreach($folder_list as $folder_url){
			$this->folder_url = $folder_url = preg_replace("~\\\\~", "/", $folder_url);
			$link_array = explode("/", $folder_url);
			$soft_name = end($link_array);
			self::$soft_option[$i++] = $soft_name;
		}	
	}
	public static function load($name){
		if(strpos($name, '\\') != null){
			$name = explode("\\", $name);
			$name = implode("/", $name);
		}
		return "extra/apps/views/soft/".self::$name."/".$name.".php";
	}
	public static function page($name){
		return "extra/apps/views/soft/".self::$name."/".$name.".php";
	}
	public static function style($css){
		return "<link rel='stylesheet' type='text/css' href='".self::$path."assets/".$css.".css'>";
	}
	public static function script($js){
		return "<script type='text/javascript' src='".self::$path."assets/".$js.".js'></script>";
	}
	public static function inc($inc){
		return(self::$path."inc/".$inc.".php");
	}
	public static function part($part){
		return(self::$path."part/".$part.".php");
	}
	public static function source($link){
		if(file_exists(self::$path.$link)){
			return self::$path.$link;
		}else{
			return(UPLOAD_FOLDER."404.png");
		}	
	}
    public static function url($src){
      return self::$path.$src;
    }
}
?>