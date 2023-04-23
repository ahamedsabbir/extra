<?php
class dashboard_example extends plugins_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "example";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = $this->plugins."_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>