<?php
class block extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions("extra/apps/views/themes/".$page.".php", $this->get_data_array);
	}
	public function block_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$insert_datatable = "framework_block_datatable";
		$data_chack_array = array("ip" => parent::data_control("ip"));
		$insert_type = "other";
		$app = "";
		$reload = true;
		$success_class = __CLASS__;
		$success_function = "index_page_function";
		$success_page = $page;
		$success_link = BASE_URL.$success_class."/".$success_function."/".$success_page;
		$failure_class = __CLASS__;
		$failure_function = "index_page_function";
		$failure_page = "block";
		$failure_link = BASE_URL.$failure_class."/".$failure_function."/".$failure_page;
		$insert_data_array = array();
		$insert_data_array["ip"] = parent::data_control("ip");
		$insert_data_array["block"] = 1;
		include("extra/apps/helper/insert_helper_function.php");
	}
	public function unblock_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("ip");
		$update_datatable = "framework_visitor_datatable";
		$select_by_array = array("ip" => $post_id);
		$update_by_array = array("ip" => $post_id);
		$update_type = "admin";
		$app = "";
		$reload = true;
		$success_class = __CLASS__;
		$success_function = "index_page_function";
		$success_page = $page;
		$success_link = BASE_URL.$success_class."/".$success_function."/".$success_page;
		$failure_class = __CLASS__;
		$failure_function = "index_page_function";
		$failure_page = "block";
		$failure_link = BASE_URL.$failure_class."/".$failure_function."/".$failure_page;
		$update_data_array = array();
		$update_data_array["block"] = 0;
		//include("extra/apps/helper/update_helper_function.php");
	}
	public function __destruct(){}
}
?>