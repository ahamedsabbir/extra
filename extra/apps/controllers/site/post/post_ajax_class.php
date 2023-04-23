<?php
class post_delete_class extends frontend_example_controller_class{
	public $type = "theme";
	public $app = "backend";
	public function __construct(){
		lock_class::lock_function(true);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
	}
	public function page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __destruct(){}
}
?>
