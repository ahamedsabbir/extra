<?php
class backend extends backend_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = siteinfo_class::$theme."_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
