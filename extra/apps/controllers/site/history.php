<?php
class history extends backend_controller_class{ 
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "history";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_history_datatable";
	}
	public function index_page_function($page = null){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
