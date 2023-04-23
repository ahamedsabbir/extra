<?php
class dashboard_redweb_search_class extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $primary_datatable;
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "redweb";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "redweb_datatable";
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => "redweb_datatable"));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => "redweb_datatable"));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => "redweb_datatable"));
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$keyword = isset($_POST['search']) ? $_POST['search'] : false;
		$this->get_data_array[$this->primary_datatable] = $this->model_array["search_db_class"]->search_select_db_function($this->primary_datatable, array("title" => $keyword, "keywords" => $keyword), array("status" => 1), "ID ASC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
