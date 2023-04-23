<?php
class siteinfo_class{
	public static $controller_class = "frontend";
	public static $controller_function = "index_page_function";
	public static $controller_page = "index";
	public static $theme;
	public static $post_datatable;
	public static $site;
	public static $title;
	public static $description;
	public static $keywords;
	public static $author;
	public static $icon;
	public static $thumbnail;
	public function __construct(){
    	$settings = simplexml_load_file("extra/resources/xml/settings.xml");
		foreach($settings->settings as $settings){
          	$class_name = $settings->class_name;
            $function_name = $settings->function_name;
            $page_name = $settings->page_name;
            $theme = $settings->theme;
            $post_datatable = $settings->post_datatable;
			self::$controller_class = "$class_name";
          	self::$controller_function = "$function_name";
          	self::$controller_page = "$page_name";
          	self::$theme = "$theme";
          	self::$post_datatable = "$post_datatable";
		}
    }
	public static function home_info_set($head_info = null){
		if(isset($head_info)){
			foreach($head_info as $head_key => $head_value){
				self::$title = $head_value['title'];
				self::$description = htmlspecialchars_decode(stripslashes($head_value['description']));
				self::$keywords = $head_value['keywords'];
				self::$icon = $head_value['icon'];
				self::$thumbnail = $head_value['thumbnail'];
			}
		}
	}
	public static function post_info_set($head_info = null){
		if(isset($head_info)){
			foreach($head_info as $head_key => $head_value){
				self::$title = $head_value['title'];
				self::$description = htmlspecialchars_decode(stripslashes($head_value['description']));
				self::$keywords = $head_value['keywords'];
				self::$icon = $head_value['thumbnail'];
				self::$thumbnail = $head_value['thumbnail'];
			}
		}
	}
	public static function profile_info_set($head_info = null){
		if(isset($head_info)){
			foreach($head_info as $head_key => $head_value){
				self::$title = $head_value['name'];
				self::$description = htmlspecialchars_decode(stripslashes($head_value['description']));
				self::$keywords = $head_value['keywords'];
				self::$icon = $head_value['photo'];
				self::$thumbnail = $head_value['photo'];
			}
		}
	}
}
?>

