<?php
class subscribe extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_subscribe_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
      $this->view_load_object_arrays->view_load_functions(theme_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
	public function subscribe_insert_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$insert_datatable = isset($_GET['primary_datatable']) ? $_GET['primary_datatable'] : $this->primary_datatable;
		$data_chack_array = array("email" => parent::data_control("email"));
		$insert_type = "other";
		$app = "";
		$reload = true;
		$success_class = BASE_CLASS;
		$success_function = "index_page_function";
		$success_page = $page;
		$success_link = BASE_URL.$success_class."/".$success_function."/".$success_page;
		$failure_class = BASE_CLASS;
		$failure_function = "index_page_function";
		$failure_page = $page;
		$failure_link = BASE_URL.$failure_class."/".$failure_function."/".$failure_page;
		$insert_data_array = array();
		$insert_data_array["status"] = 1;
		include("extra/apps/helper/insert_helper_function.php");
	}
	public function __destruct(){}
}
?>