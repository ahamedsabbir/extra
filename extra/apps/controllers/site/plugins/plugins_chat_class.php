<?php
class plugins_chat_class extends plugins_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->plugins =  $this->get_data_array["plugins"] = "chat";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_chat_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable", array("chat" => 1), "DATE DESC");
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function admin_ajax_reply_function($page, $array_key = false, $array_value = false){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		if(isset($_POST["chat"])){
			$chat = $_POST["chat"];
			$visitor_id = $_POST["visitor_id"];
			$insert_data_array = array(
				"datatable" => $this->post_datatable,
				"chat" => $chat,
				"pc_user" => "admin", 
				"visitor_id" => $visitor_id
			);
			$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
			$update = $this->model_array['update_db_class']->update_db_function("framework_visitor_datatable", array('chat'=> 0), array("id" => $visitor_id));
		}
		$framework_chat_datatable = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => $visitor_id));
		vendor_chat_class::admin_reply_function($framework_chat_datatable, $visitor_id);
	}
  	public function admin_live_page_function($page, $array_key = false, $array_value = false){
      $framework_chat_datatable = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
      vendor_chat_class::admin_reply_function($framework_chat_datatable, $page);
    }
	public function local_upload_function($page, $array_key = false, $array_value = false){		
		if($_GET["old_file"] == true){
			$old_file = $_GET["old_file"];
			$old_file = vendor_code_class::base64url_decode($old_file);
			if(is_file($old_file)){
					$result = unlink($old_file);
			}
		}
		$upload_source = parent::file_control("local_file", settings_class::$file_extension, settings_class::$file_size, $this->upload_file);	
		$upload_source = vendor_code_class::base64url_encode($upload_source);
		address_class::reload_page("&upload_source=$upload_source");
	}
	public function __destruct(){}
}
?>
