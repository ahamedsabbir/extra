<?php
class ajax extends plugins_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "ajax";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "district_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function getFunc($page = null, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$datatable = $_REQUEST["datatable"];
		$select_by_array = array();
		foreach($this->argument_array as $argument_key => $argument_value){
			$select_by_array[$argument_key] = $argument_value;
		}
		if($_REQUEST["token"] == TOKEN){
			$datatable_array = $this->get_data_array[$datatable] = $this->model_array["select_db_class"]->select_db_function($datatable, $select_by_array);
			foreach($datatable_array as $datatable_array_key => $datatable_array_value){
				echo $datatable_array_value["title"];
			}
		}else{
			echo "token no match";	
		}
	}
	public function fileFunc($page = null, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		if($_REQUEST["token"] == TOKEN){
			$image = parent::file_control('files', settings_class::$file_extension, settings_class::$file_size, $this->upload_file);
			echo BASE_SITE.$image;
		}else{
			echo "token no match";	
		}
	}
	
	public function insFunc($page = null, $array_key = false, $array_value = false){
		
	}
	public function delFunc($page = null, $array_key = false, $array_value = false){
		
	}
	public function __destruct(){}
}
?>