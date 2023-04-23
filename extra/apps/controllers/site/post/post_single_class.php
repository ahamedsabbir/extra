<?php
class theme_sumtech_single_class extends frontend_sumtech_controller_class{
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
	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : $this->get_data_array["post_id"];
		$this->model->post($this->primary_datatable, array("id" => $post_id, "status" => 1));
		$this->model->watch(array("datatable" => $this->primary_datatable, "post_id" => $post_id)));
		$this->model->themePage($page);
	}
	public function __destruct(){}
}