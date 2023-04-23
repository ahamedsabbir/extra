<?php
class method_load_class{
	function __construct(){}
    public function method_load_functions($method_class_file){
        include "extra/system/mvc/methods/".$method_class_file.".php";
        return new $method_class_file();
    }
	/*public function __get($property){
		report_class::$report_array['$property'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }
	public function __set($property, $value){
		report_class::$report_array['$property and $value'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }
	public function __call($method, $praneter){
		report_class::$report_array['$method and $praneter'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }*/
	public function __destruct(){}
}
?>
