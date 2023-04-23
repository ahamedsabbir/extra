<?php
class errors extends soft_errors_controller_class{
	public function __construct(){
		parent::__construct();
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __get($property){
		header("Location:".SOFT."errors/index_page_function/index/", TRUE, 301);
    }
	public function __set($property, $value){
		header("Location:".SOFT."errors/index_page_function/index/", TRUE, 301);
    }
	public function __call($method, $praneter){
		header("Location:".SOFT."errors/index_page_function/index/", TRUE, 301);
    }
	public function __destruct(){}
}
?>