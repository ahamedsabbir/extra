<?php
class admin_manage_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "admin";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_admin_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, null, "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function member_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, array("status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function newmember_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, array("status" => 0), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function search_page_function($page, $array_key = false, $array_value = false){
		$keyword = isset($_POST['search']) ? $_POST['search'] : false;
		session_class::set("search", $keyword);
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["search_db_class"]->search_select_db_function($this->primary_datatable, array("name" => $keyword, "email" => $keyword), array("status" => 1), "ID ASC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function approve($page, $array_key = false, $array_value = false){
		$admin_id = isset($_GET['admin_id']) ? $_GET['admin_id'] : false;
		$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("status" => 1), array("id" => $admin_id));
		address_class::reload_page();
	}
	public function unprove($page, $array_key = false, $array_value = false){
		$admin_id = isset($_GET['admin_id']) ? $_GET['admin_id'] : false;
		$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("status" => 0), array("id" => $admin_id));
		address_class::reload_page();
	}
	public function block($page, $array_key = false, $array_value = false){
		$admin_id = isset($_GET['admin_id']) ? $_GET['admin_id'] : false;
		$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("block" => 1), array("id" => $admin_id));
		address_class::reload_page();
	}
	public function unblock($page, $array_key = false, $array_value = false){
		$admin_id = isset($_GET['admin_id']) ? $_GET['admin_id'] : false;
		$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("block" => 0), array("id" => $admin_id));
		address_class::reload_page();
	}
	public function __destruct(){}
}
?>