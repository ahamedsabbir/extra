<?php
class sslcommerz extends soft_sslcommerz_controller_class{
	public function __construct(){
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "sslcommerz_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::load($page), $this->get_data_array, $this->read_data_array);
	}
	public function __destruct(){}
}
?>