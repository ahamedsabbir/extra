<?php
class plugnis_example extends plugins_controller_class{
	public $type = "plugins";
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "example";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "example_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		$this->view->pluginsPage($page);
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view->pluginsPage($page);
	}
	public function __destruct(){}
}
?>