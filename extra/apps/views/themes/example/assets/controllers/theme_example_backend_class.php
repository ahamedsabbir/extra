<?php
class theme_example_backend_class extends frontend_example_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "example_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/$page"), $this->get_data_array);
	}
	public function __destruct(){}
}
?>