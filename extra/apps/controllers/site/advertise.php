<?php
class advertise extends plugins_controller_class{ 
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "advertise";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_advertise_datatable";
	}
	public function index_page_function($page = null){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function advertise_insert_function($page = null){
      if(isset($_POST["submit"]) AND $_POST["submit"] == "save"){
			$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("title" => parent::data_control("title")));
			if($post_exist == 0){
				$insert_data_array = array();
				foreach($_POST as $post_key => $post_value){
					$insert_data_array[$post_key] = parent::data_control($post_key);
				}
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
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}	
		}else{
        	$msg = vendor_getMsg_class::set("Fail insert");
			header(address_class::header_page(__CLASS__, "index_page_function", $page));	
		}
	}
  	public function click_count_function ($page = null){
      	$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : false;
    	$framework_advertise_datatable = $this->model_array["select_db_class"]->select_db_function("framework_advertise_datatable", array("id" => $post_id));
      	$update = $this->model_array['update_db_class']->update_db_function("framework_advertise_datatable", array("click" => $framework_advertise_datatable[0]["click"]+1), array("id" => $post_id));
      	address_class::load_web_page($framework_advertise_datatable[0]["link"]);
    }
	public function __destruct(){}
}
?>
