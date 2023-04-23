<?php
class page extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->plugins =  $this->get_data_array["plugins"] = "page";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_page_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, array("status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($this->plugins."/".$page), $this->get_data_array);
	}
	public function post_delete_function($page, $array_key = false, $array_value = false){
		$page_id = parent::data_control("page_id");	
		$page_chack = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("id" => $page_id, "admin_id" => session_class::get('admin_id')));	
		if($page_chack == true){
			$delete = $this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id" => $page_id));
			if($delete == true){
				header(address_class::header_page("dashboard_blog_delete_class", "index_page_function", $page));
			}
		}	
	}
	public function __destruct(){}
}
?>