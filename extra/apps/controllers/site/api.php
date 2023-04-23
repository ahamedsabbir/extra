<?php
class api extends plugins_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		$this->get_data_array["plugins"] = $this->plugins = "api";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "district_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function getFunc($page = null, $array_key = false, $array_value = false){
		$notAccess = array("framework_admins_datatable", "framework_users_datatable");
		$datatable = !in_array($_REQUEST['datatable'], $notAccess) ? $_REQUEST['datatable'] : "example_datatable";
		if($_REQUEST['token'] == TOKEN){
			$select_by = array();
			$ignore_element = array("id", "status");
			foreach($_REQUEST as $get_key => $get_value){
				if(in_array($get_key, $ignore_element)){
					$select_by[$get_key] = $get_value;
				}
			}
			if(empty($select_by)){
				$getData = $this->model_array["select_db_class"]->select_db_function($datatable);
			}else{
				$getData = $this->model_array["select_db_class"]->select_db_function($datatable, $select_by);
			}
			$getResult = json_encode($getData);
			echo $getResult;
		}else{
			echo "empty";
		}
	}
	public function srcFunc($page = null, $array_key = false, $array_value = false){
		
	}
	public function insFunc($page = null, $array_key = false, $array_value = false){
		
	}
	public function delFunc($page = null, $array_key = false, $array_value = false){
		
	}
	public function __destruct(){}
}
?>