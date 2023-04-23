<?php
class vendor_string_class{
	public static function text_shorten($text, $limit = 400){
		$text = $text. " ";
		$text = substr($text, 0, $limit);
		$text = substr($text, 0, strrpos($text, ' '));
		return $text."...";
	}
	public static function remove_tag($text){
		$text = htmlspecialchars_decode(stripslashes($text));
		return $text;
	}
	public static function title_style($text, $limit = 200){
		$text = htmlspecialchars_decode(stripslashes($text));
		$text = $text. " ";
		$text = substr($text, 0, $limit);
		$text = substr($text, 0, strrpos($text, ' '));
		$text = ucfirst($text);
		return $text."...";
	}
	public static function prefer($data){
		$data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
		return $data;
	}
}

