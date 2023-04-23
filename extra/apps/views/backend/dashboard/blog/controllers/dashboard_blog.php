<?php
class dashboard_blog extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $primary_datatable;
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "blog";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "blog_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
