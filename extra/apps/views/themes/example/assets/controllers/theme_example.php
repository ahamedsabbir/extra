<?php
class theme_example extends frontend_example_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "example_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __destruct(){}
}
?>