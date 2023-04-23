<?php
class project extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
      	$this->backend = $this->get_data_array["backend"] = "project";
		parent::__construct();
      	$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_project_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
  	public function project_insert_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
			$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("name" => parent::data_control("name")));
			if($post_exist == 0){
				$insert_data_array = array();
				foreach($_POST as $post_key => $post_value){
					$insert_data_array[$post_key] = parent::data_control($post_key);
				}
				foreach($_FILES as $files_key => $files_value){
                  	if(gettype($_FILES[$files_key]) == "array"){
                    	$insert_data_array[$files_key] = $this->method_array["file_upload_class"]->file_upload_function($files_key, $this->upload_file);
                    }else{
                    	$insert_data_array[$file_key] =  parent::file_control($file_key, settings_class::$file_extension, settings_class::$file_size, $this->upload_file);
                    }
                }
              	unset($insert_data_array["submit"]);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit() AND $this->method_array["file_upload_class"]->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
                      	$msg = vendor_getMsg_class::set("success insert");
						header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg));	
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
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
			//header(address_class::header_page($this->class, "index_page_function", $page, $msg));
		}	
	}
	public function __destruct(){}
}
?>