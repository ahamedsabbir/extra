<?php
class admin_notification_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "admin";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_admin_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){}
	public function admin_notification_delete_function($page = null, $array_key = false, $array_value = false){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$notification_id = parent::data_control("notification_id");	
		$delete = $this->model_array["delete_db_class"]->delete_db_function("framework_notification_datatable", array("id" => $notification_id));
		$url =  str_replace("/".ROOT_FOLDER, "", vendor_code_class::base64url_decode($_REQUEST["page_url"]));
		header("location:$url");
	}
	public function __destruct(){}
}
?>