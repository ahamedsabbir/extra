<?php
class plugins_chat_class extends plugins_controller_class{
	public function __construct(){
		$this->plugins =  $this->get_data_array["plugins"] = "chat";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_chat_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable", array("chat" => 1), "DATE DESC");
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function visitor_ajax_reply_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["chat"])){
			$chat = $_POST["chat"];
			$insert_data_array = array(
				"datatable" => $this->post_datatable,
				"chat" => $chat,
				"pc_user" => $this->method_array['visitor_info_class']->env_user, 
				"visitor_id" => cookie_class::get("visitor_id")
			);
			$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
			$update = $this->model_array['update_db_class']->update_db_function("framework_visitor_datatable", array('chat'=> 1), array("id" => cookie_class::get("visitor_id")));
		}
		$framework_chat_datatable = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
		vendor_chat_class::user_reply_function($framework_chat_datatable);
	}
	public function user_live_page_function($page, $array_key = false, $array_value = false){
      $framework_chat_datatable = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
      vendor_chat_class::user_reply_function($framework_chat_datatable);
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