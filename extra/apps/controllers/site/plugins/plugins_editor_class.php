<?php
class plugins_editor_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "editor";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "editor_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function save_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		if(isset($this->get_data_array["src"])){
			$file=fopen($this->get_data_array["src"], "w");
			$content=$_POST["content"];
			fwrite($file, $content);
			fclose($file); 
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
