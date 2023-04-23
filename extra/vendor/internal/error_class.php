<?php
class error_class{
	public static $report_array = array();
	public function __construct(){}
	public static function set($error){
		$error_handle = fopen('extra/resources/error/'.date("j-m-Y").'_error.txt', 'a');
		fwrite($error_handle, $error);
		fwrite($error_handle, "\n");
		fclose($error_handle);
	}
}
?>