<?php
class user_profile_class extends plugins_controller_class{
	public function __construct(){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		$this->plugins = $this->get_data_array["plugins"] = "user";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_framework_user_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => cookie_class::get("user_id"), "status" => 1));
		siteinfo_class::profile_info_set($this->get_data_array[$this->primary_datatable]);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function profile_update_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => cookie_class::get('user_id')));
			if($this->get_data_array[$this->primary_datatable] != null){
				$update_data_array = array(
					'name' => parent::data_control("name"),
					'mobile' => parent::data_control("mobile"),
					'photo' => parent::file_control('photo', settings_class::$image_extension, settings_class::$image_size, $this->upload_image, $this->get_data_array[$this->primary_datatable][0]['photo'])
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, $update_data_array, array("id" => cookie_class::get('user_id')));
					if($update == true){
						cookie_class::set('name', parent::data_control("name"));
						header("location:".BASE_URL."user_profile_class/index_page_function/$page/");
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
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function survey_update_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){		
			if(!empty($_POST['survey'])){
				$survey_array = array();
				$i = 0;
				foreach($_POST['survey'] as $value){
					$survey_array[$i] = $value;
					$i++;
				}
				$survey_string = implode(", ", $survey_array);
			}
			$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("survey" => $survey_string), array("id" => cookie_class::get('user_id')));
			if($update == true){
				cookie_class::set('survey', $survey_string);
				header("location:".BASE_URL."user_profile_class/index_page_function/$page/");
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function __destruct(){}
}
?>