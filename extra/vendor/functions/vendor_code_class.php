<?php
class vendor_code_class{
	public static function argu_encode($data){
		$data = base64_encode(implode(', ', $data));
		$data = rtrim($data, ", ");
		return $data;
	}
	public static function argu_decode($data){
		return explode(", ", base64_decode($data));
	}
	public static function base64url_encode($text){
		return strtr(base64_encode($text), '+/', '-_');
	}
	public static function base64url_decode($base64url){
    	return base64_decode(strtr($base64url, '-_', '+/'));
	}
}
?>