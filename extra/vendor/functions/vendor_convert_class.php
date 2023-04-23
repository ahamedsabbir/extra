<?php
class vendor_convert_class{
	public static function array_to_string_function($array, $by){
		$row_count = count($array);
		$string = "";
		for($i=0; $i<$row_count; $i++){
			$string .= $array[$i].$by;
		}
		$string = rtrim($string, $by);
		return $string;
	}
	public static function string_to_array_function($string, $by){
		$array = explode($by, $string);
		return $array;
	}
}