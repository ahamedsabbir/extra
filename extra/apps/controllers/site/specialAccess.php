<?php
class specialAccess extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->plugins = $this->get_data_array["plugins"] = "specialAccess";
		$this->plugins_type = $this->get_data_array["plugins_type"] = "crowd";
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_access_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array["framework_access_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_access_datatable", array("status" => 1));
		$this->get_data_array["question_datatable"] = $this->model_array["select_db_class"]->select_db_function("question_datatable");
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function access_insert_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "save"){
			$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("email" => parent::data_control("email")));
			if($post_exist == 0){
				$insert_data_array = array();
				foreach($_POST as $post_key => $post_value){
					$insert_data_array[$post_key] = $_POST[$post_key];
				}
              	$insert_data_array["unique_id"] = substr($insert_data_array["name"], 0, 3).rand(999999, 000000);
              	unset($insert_data_array["submit"]);
				if($this->method_array['text_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
                      	$msg = vendor_getMsg_class::set("successfully insert");
						header(address_class::header_page(__CLASS__, "index_page_function", $page));	
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}	
		}else{
        	$msg = vendor_getMsg_class::set("Fail insert");
			header(address_class::header_page(__CLASS__, "index_page_function", $page));	
		}
	}
	public function __destruct(){}
}
?>