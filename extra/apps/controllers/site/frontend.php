<?php
class frontend extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function goto_main_theme_function($page, $array_key = false, $array_value = false){
		session_destroy();
		address_class::load_web_page(FRONTEND_HOME);
	}
	public function __destruct(){}
}
?>
