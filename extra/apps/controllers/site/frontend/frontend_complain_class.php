<?php
class theme_redweb_complain_class extends frontend_redweb_controller_class{
	public function __construct(){
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_complain_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
    	address_class::reload_page();
    }
	public function insert_complain_function($page, $array_key = false, $array_value = false){
		$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : false;
		$complain = parent::data_control("complain");
		$update = $this->model_array['update_db_class']->update_db_function($this->post_datatable, array("complain" => 1), array("id" => $post_id));
		$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, array("datatable" => $this->post_datatable, "post_id" => $post_id, "complain" => $complain, "visitor_id" => cookie_class::get("visitor_id")));
		address_class::reload_page();
	}
	public function __destruct(){}
}
?>
