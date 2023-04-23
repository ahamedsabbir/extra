<?php
class plugins extends backend_controller_class{
	public $plugin;
	public $plugin_loops = array();
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$get_url = preg_replace("~\\\\~", "", $_SERVER["DOCUMENT_ROOT"]."/".ROOT_FOLDER."extra/apps/views/backend/plugins/");
		$folder_list = glob($get_url.DIRECTORY_SEPARATOR."*", GLOB_ONLYDIR);
		$i = 0;
		foreach($folder_list as $folder_url){
			$folder_url = preg_replace("~\\\\~", "/", $folder_url);
			$link_array = explode("/", $folder_url);
			$plugin_name = end($link_array);
			if($plugin_name != "assets" AND $plugin_name != "inc"){
				$this->plugin_loops[$i++] = $plugin_name;
			}
		}
		$this->get_data_array["plugin_loops"] = $this->plugin_loops;
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page("plugins/".$page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>