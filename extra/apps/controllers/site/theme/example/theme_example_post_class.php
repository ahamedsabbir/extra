<?php
class theme_example_post_class extends frontend_example_controller_class{
	public $type = "theme";
	public $app = "post";
	public function __construct(){
		lock_class::lock_function(false);
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_project_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/post/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/post/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __destruct(){}
}
?>