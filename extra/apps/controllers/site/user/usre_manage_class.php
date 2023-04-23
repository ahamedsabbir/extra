<?php
class crowd_manage_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = parent::data_control("plugins");
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_".$this->plugins."_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("status" => true));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function member_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("status" => true));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function newcomer_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("status" => false));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function user_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => "publish_datatable"));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>