<?php
class settings_class{
	public static $site;
	public static $mobile;
	public static $email;
	public static $facebook;
	public static $twitter;
	public static $linkedin;
	public static $instagram;
	public static $youtube;
	public static $github;
	public static $image_extension;
	public static $image_size;
	public static $video_extension;
	public static $video_size;
	public static $file_extension;
	public static $file_size;
	public static $copy_header;
	public static $copy_right;
	public static $copy_link;
	public static $root_folder;
	public function __construct(){
		$settings = simplexml_load_file("extra/resources/xml/settings.xml");
		foreach($settings->settings as $settings){
			siteinfo_class::$site = self::$site = $settings->site;
			self::$email = $settings->email;
			self::$mobile = $settings->mobile;
			self::$facebook = $settings->facebook;
			self::$twitter = $settings->twitter;
			self::$linkedin = $settings->linkedin;
			self::$instagram = $settings->instagram;
			self::$youtube = $settings->youtube;
			self::$github = $settings->github;
			self::$image_extension = explode(", ", $settings->image_extension);
			self::$image_size = $settings->image_size;
			self::$video_extension = explode(", ", $settings->video_extension);
			self::$video_size = $settings->video_size;
			self::$file_extension = explode(", ", $settings->file_extension);
			self::$file_size = $settings->file_size;
			self::$copy_header = $settings->copy_header;
			self::$copy_right = $settings->copy_right;
			self::$copy_link = $settings->copy_link;
			vendor_pagenation_class::$loop_item = $settings->loop_item;
		}
	}
}
?>