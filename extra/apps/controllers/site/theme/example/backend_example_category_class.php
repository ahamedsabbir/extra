<?php
class backend_example_category_class extends backend_controller_class{
	public $type = "backend";
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "category";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "example_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->post_datatable, "status" => 1));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array, $this->read_data_array);
	}
	public function category_view_function($page, $array_key = false, $array_value = false){
      	$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->primary_datatable, "status" => 1));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array, $this->read_data_array);	
    }
	public function __destruct(){}
}
?>