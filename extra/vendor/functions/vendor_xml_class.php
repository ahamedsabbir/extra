<?php
class vendor_xml_class{
	public static $xml_file = "extra/resources/xml/xml.xml";	
	public static $database = "mvc_database";
	public function __construct(){}
	public static function xml_function(){}
	public static function data_encode($data){
		$data = vendor_code_class::base64url_encode($data);
		return $data;
	}
	public static function data_decode($data){
		$data = vendor_code_class::base64url_decode($data);
		$data = strval("$data");
		return $data;
	}
	public static function getString($data){
		$data = strval("$data");
		return $data;
	}
}
?> 