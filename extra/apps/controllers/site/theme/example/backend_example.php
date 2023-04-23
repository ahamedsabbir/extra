<?php
class backend_example extends backend_controller_class{
	public $type = "backend";
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "category";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_category_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		$this->model->get("framework_category_datatable", array("id" => $post_id, "status" => 1));
		$this->view->backendPage($page);
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->model->get("framework_category_datatable", array("id" => $post_id, "status" => 1));
		$this->view->backendPage($page);
	}
	public function __destruct(){}
}
?>