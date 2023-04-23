<?php
class frontend_contact_class extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
		//$this->get_data_array["primary_datatable"] = $this->primary_datatable = $_GET["primary_datatable"] != null ? $_GET["primary_datatable"] : "framework_contact_datatable";
		//$this->get_data_array["secondary_datatable"] = $this->secondary_datatable = $_GET["secondary_datatable"] != null ? $_GET["secondary_datatable"] : "example_datatable";
		//$this->get_data_array["tertiary_datatable"] = $this->tertiary_datatable = $_GET["tertiary_datatable"] != null ? $_GET["tertiary_datatable"] : "example_datatable";
		//$this->get_data_array["quaternary_datatable"] = $this->quaternary_datatable = $_GET["quaternary_datatable"] != null ? $_GET["quaternary_datatable"] : "example_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function contact_insert_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$insert_datatable = "framework_contact_datatable";
		$data_chack_array = array("email" => parent::data_control("email"), "status" => 1);
		$insert_type = "other";
		$app = "backend";
		$reload = true;
		$success_class = __CLASS__;
		$success_function = "single_courses_function";
		$success_page = $page;
		$success_link = BASE_URL.$success_class."/".$success_function."/".$success_page;
		$failure_class = __CLASS__;
		$failure_function = "single_courses_function";
		$failure_page = "courses_loop";
		$failure_link = BASE_URL.$failure_class."/".$failure_function."/".$failure_page;
		$insert_data_array = array();
		$insert_data_array["datatable"] = $this->theme_datatable;
		$insert_data_array["status"] = 1;
		include("extra/apps/helper/insert_helper_function.php");
	}
	public function __destruct(){}
}
?>
