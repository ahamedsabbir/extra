<?php
class dashboard_redweb_update_class extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $primary_datatable;
	public $upload_image;
	public $upload_file;
	public $upload_video;
	public function __construct(){
		parent::__construct();
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "redweb";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "redweb_datatable";
		$this->upload_video = $this->upload_file = $this->upload_image = UPLOAD_FOLDER.$this->plugins;
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $post_id, "admin_id" => session_class::get('admin_id')));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function post_update_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $post_id, "admin_id" => session_class::get('admin_id')));
			if($this->get_data_array[$this->primary_datatable] != null){
				$update_data_array = array(
					'expare' => parent::data_control("expare"),
					'title' => parent::data_control("title"),
					'keywords' => parent::data_control("keywords"),
					'category_id' => parent::data_control("category_id"),
					'description' => parent::data_control("description"),
					'thumbnail' => parent::file_control('thumbnail', settings_class::$image_extension, settings_class::$image_size, $this->upload_image, $this->get_data_array[$this->primary_datatable][0]['thumbnail']),
					'video' => parent::file_control('video', settings_class::$video_extension, settings_class::$video_size, $this->upload_video, $this->get_data_array[$this->primary_datatable][0]['video']),
					'anchor' => parent::data_control("anchor"),
					'file' => parent::file_control('file', settings_class::$file_extension, settings_class::$file_size, $this->upload_file, $this->get_data_array[$this->primary_datatable][0]['file'])
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, $update_data_array, array("id" => $post_id, "admin_id" => session_class::get('admin_id')));
					if($update == true){
						header("location:".BASE_URL."dashboard_redweb_update_class/index_page_function/$page/&post_id=$post_id");
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
			header("location:".BASE_URL."dashboard_redweb_update_class/index_page_function/$page/&post_id=$post_id");
		}
	}
	public function action($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->primary_datatable));
		if(isset($_POST["category_id"])){
			$category_id = $_POST["category_id"];
			 if($this->get_data_array["framework_group_datatable"] !=  null){
				foreach($this->get_data_array["framework_group_datatable"] as $redweb_group_key => $redweb_group_value){
					if($redweb_group_value["category_id"] == $category_id){
						$group_id = $redweb_group_value['id'];
						$group_name = $redweb_group_value['name'];
						echo "<option value='$group_id'>$group_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["group_id"])){ 
			$group_id = $_POST["group_id"];
			if($this->get_data_array["framework_list_datatable"] !=  null){
				foreach($this->get_data_array["framework_list_datatable"] as $redweb_list_key => $redweb_list_value){
					if($redweb_list_value["group_id"] == $group_id){
						$list_id = $redweb_list_value['id'];
						$list_name = $redweb_list_value['name'];
						echo "<option value='$list_id'>$list_name</option>"; 
					}
				}
			}
		}
	}
	public function __destruct(){}
}
?>