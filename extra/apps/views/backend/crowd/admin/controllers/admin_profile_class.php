<?php
class admin_profile_class extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $plugins_folder;
	public $primary_datatable;
	public $upload_image;
	public function __construct(){
		parent::__construct();
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "admin";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		$this->get_data_array["plugins_folder"] = $this->plugins_folder = "extra/apps/views/backend/".$this->plugins_type."/".$this->plugins;
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = $this->plugins."_datatable";
		$this->upload_image = UPLOAD_FOLDER.$this->plugins;
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => session_class::get("admin_id"), "status" => 1));
		siteinfo_class::profile_info_set($this->get_data_array[$this->primary_datatable]);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function profile_update_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"])){
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => session_class::get("admin_id")));
			if($this->get_data_array[$this->primary_datatable] != null){
				$update_data_array = array(
					'name' => parent::data_control("name"),
					'photo' => parent::file_control('photo', array("jpg", "jpeg", "gip", "png"), 2, $this->upload_image, $this->get_data_array[$this->primary_datatable][0]['photo']),
					'mobile' => parent::data_control("mobile"),
					'email' => parent::data_control("email")
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$this->model_array['update_db_class']->update_db_function($this->primary_datatable, $update_data_array, array("id" => session_class::get("admin_id")));
					//header("location:".BASE_URL."publish_post_class/update_page_function/$post_id/");
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
	}
	public function __destruct(){}
}
?>