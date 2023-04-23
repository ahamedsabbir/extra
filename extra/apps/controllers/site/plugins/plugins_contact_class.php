<?php
class plugins_contact_class extends plugins_controller_class{
	public function __construct(){
		$this->get_data_array["plugins"] = $this->plugins = "contact";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_contact_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function send_message_function($page = null, $array_key = false, $array_value = false){
		$insert_data_array = array(
			"datatable" => $this->post_datatable,
			'name' => parent::data_control("name"),
			'email' => parent::data_control("email"),
			'subject' => parent::data_control("subject"),
			'message' => parent::data_control("message")
		);
		$this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
		address_class::reload_page();
	}
	public function delete_function($page = null, $array_key = false, $array_value = false){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$contact_id = parent::data_control("contact_id");
		$this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id"=> $contact_id));
        header(address_class::header_page('plugins_contact_class', 'index_page_function', $page));
	}
	public function __destruct(){}
}
?>
