<?php
class page_insert_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->plugins =  $this->get_data_array["plugins"] = "page";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_page_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($this->plugins."/".$page), $this->get_data_array);
	}
	public function page_insert_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
          	$datatable = parent::data_control("datatable");
          	$name = parent::data_control("name");
         	$title = parent::data_control("title");
			$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("datatable" => $datatable, "name" => $name, "title" => $title));
			if($post_exist == 0){
				$insert_data_array = array(
					'admin' => session_class::get("admin_id"),
					'datatable' => parent::data_control("datatable"),
                  	'sn' => parent::data_control("sn"),
					'name' => parent::data_control("name"),
					'title' => parent::data_control("title"),
					'keywords' => parent::data_control("keywords"),
					'description' => parent::data_control("description"),
					'content' => parent::data_control("content"),
                  	'icon' => parent::file_control('icon', settings_class::$image_extension, settings_class::$image_size, $this->upload_image),
                  	'font_icon' => parent::data_control("font_icon"),
                  	'status' => 1
				);
				if($this->method_array['text_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
						header(address_class::header_page("page", "index_page_function", "loop"));	
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
			header(address_class::header_page("page_insert_class", "index_page_function", "insert"));
		}	
	}
	public function __destruct(){}
}
?>