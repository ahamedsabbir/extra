<?php
class dashboard_redweb_delete_class extends backend_controller_class{
	public $primary_datatable;
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "redweb_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		header(address_class::header_page("dashboard_redweb_author_class", "index_page_function", $page));
	}
	public function post_delete_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");	
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $post_id, "admin_id" => session_class::get('admin_id')));	
		unlink($this->get_data_array[$this->primary_datatable][0]["thumbnail"]);
		unlink($this->get_data_array[$this->primary_datatable][0]["file"]);
		$this->get_data_array["delete"] = $this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id" => $post_id));
		$this->model_array["delete_db_class"]->delete_db_function("framework_reach_datatable", array("post_id" => $post_id, "datatable" => $this->primary_datatable));
		$this->model_array["delete_db_class"]->delete_db_function("framework_watch_datatable", array("post_id" => $post_id, "datatable" => $this->primary_datatable));
		$this->model_array["delete_db_class"]->delete_db_function("framework_comment_datatable", array("post_id" => $post_id, "datatable" => $this->primary_datatable));
		$this->model_array["delete_db_class"]->delete_db_function("framework_reply_datatable", array("post_id" => $post_id, "datatable" => $this->primary_datatable));
		header(address_class::header_page("dashboard_redweb_delete_class", "index_page_function", $page));
	}
	public function __destruct(){}
}
?>