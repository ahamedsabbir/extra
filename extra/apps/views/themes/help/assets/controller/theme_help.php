<?php
class theme_help extends frontend_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_help_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
