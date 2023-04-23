<?php
class dashboard extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = $_REQUEST["plugins"];
		$this->get_data_array["plugins_type"] = $this->plugins_type = $_REQUEST["dashboard"];
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_".$this->plugins."_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		 $this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
