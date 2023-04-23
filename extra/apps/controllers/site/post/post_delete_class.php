<?php
class post_delete_class extends frontend_example_controller_class{
	public $type = "theme";
	public $app = "backend";
	public function __construct(){
		lock_class::lock_function(true);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = $_GET["primary_datatable"] != null ? $_GET["primary_datatable"] : "example_datatable";
		$this->get_data_array["secondary_datatable"] = $this->secondary_datatable = $_GET["secondary_datatable"] != null ? $_GET["secondary_datatable"] : "example_datatable";
		$this->get_data_array["tertiary_datatable"] = $this->tertiary_datatable = $_GET["tertiary_datatable"] != null ? $_GET["tertiary_datatable"] : "example_datatable";
		$this->get_data_array["quaternary_datatable"] = $this->quaternary_datatable = $_GET["quaternary_datatable"] != null ? $_GET["quaternary_datatable"] : "example_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
	public function post_delete_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$delete_datatable = $this->primary_datatable;
		$select_by_array = array("id" => $post_id, "admin_id" => session_class::get('admin_id'));
		$another_datatable_array = array("framework_reach_datatable", "framework_watch_datatable", "framework_comment_datatable", "framework_reply_datatable");
		$delete_by_array = array("id" => $post_id);
		$file_select_array = array("img", "file", "image", "photo", "thumnell");
		include("extra/apps/helper/post/deleteRow_helper_function.php");
	}
	public function mark_delete_function($page, $array_key = false, $array_value = false){
		
	}
	public function all_delete_function($page, $array_key = false, $array_value = false){
		
	}
	public function __destruct(){}
}
?>
