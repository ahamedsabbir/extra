<?php
class thumbnail extends soft_thumbnail_controller_class{
	public function __construct(){
		parent::__construct();
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __destruct(){}
}
?>