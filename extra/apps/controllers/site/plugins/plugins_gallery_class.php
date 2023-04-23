<?php
class plugins_gallery_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "gallery";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "gallery_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
      	$src = systems\variables\config_variable_class::STORAGE_FOLDER."interior/";
      	$file_list = glob($src."*.*");
      	$i = 0;
		foreach($file_list as $file_name){
			 $this->get_data_array["file_array"][$i++] = $file_name;
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
