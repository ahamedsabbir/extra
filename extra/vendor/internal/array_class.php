<?php
class array_class{
	public static $inc = array();
    public static function set($name, $value){
    	self::$inc["$name"] = $value;
    }
	public static function get($name){
		if(isset(self::$inc["$name"])){
			$result = self::$inc["$name"];
			echo $result;
		}
    }
}
?>