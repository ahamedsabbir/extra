<?php
class autoload_class{
	public function __construct(){}
	public function autoload_function($src){
		$data_list = glob($src."*.php");
		foreach($data_list as $data_name){
			include_once $data_name;
		}
	}
}
$autoload_class = new autoload_class();
?>