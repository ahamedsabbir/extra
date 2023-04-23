<?php
class view_load_class{
	function __construct(){}
	function view_load_functions($page_url, $data_array_01 = false, $data_array_02 = false, $page_name = false){
		if($data_array_01 == true){
			if(gettype($data_array_01) == "array"){
				extract($data_array_01);
			}
		}
		if($data_array_02 == true){
			if(gettype($data_array_02) == "array"){
				extract($data_array_02);
			}
		}
		include($page_url);
	}
	/*public function __get($property){
		report_class::$report_array['$property'] = " not exist.";
		header("location:".BASE_URL."frontend_404_class/");
    }
	public function __set($property, $value){
		report_class::$report_array['$property and $value'] = " not exist.";
		header("location:".BASE_URL."frontend_404_class/");
    }
	public function __call($method, $praneter){
		report_class::$report_array['$method and $praneter'] = " not exist.";
		header("location:".BASE_URL."frontend_404_class/");
    }*/
	public function __destruct(){}
}
?>