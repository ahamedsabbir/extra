<?php
class dashboard_blog_insert_class extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $plugins_folder;
	public $primary_datatable;
	public $upload_image;
	public $upload_file;
	public $upload_video;
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "blog";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "dashboard";
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "blog_datatable";
		$this->upload_video = $this->upload_file = $this->upload_image = UPLOAD_FOLDER.$this->plugins;
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->primary_datatable));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function post_insert_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
			$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("title" => parent::data_control("title")));
			if($post_exist == 0){
				$insert_data_array = array(
					'admin_id' => session_class::get("admin_id"),
					'expare' => parent::data_control("expare"),
					'name' => parent::data_control("name"),
					'title' => parent::data_control("title"),
					'category_id' => parent::data_control("category_id"),
					'group_id' => parent::data_control("group_id"),
					'list_id' => parent::data_control("list_id"),
					'keywords' => parent::data_control("keywords"),
					'description' => parent::data_control("description"),
					'thumbnail' => parent::file_control('thumbnail', settings_class::$image_extension, settings_class::$image_size, $this->upload_image),
					'video' => parent::file_control('video', settings_class::$video_extension, settings_class::$video_size, $this->upload_video),
					'file' => parent::file_control('file', settings_class::$file_extension, settings_class::$file_size, $this->upload_file)
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
						header(address_class::header_page("dashboard_blog_author_class", "index_page_function", "author"));	
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
			header(address_class::header_page("dashboard_blog_insert_class", "index_page_function", "insert"));
		}	
	}
	public function action($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->primary_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->primary_datatable));
		if(isset($_POST["category_id"])){
			$category_id = $_POST["category_id"];
			 if($this->get_data_array["framework_group_datatable"] !=  null){
				foreach($this->get_data_array["framework_group_datatable"] as $blog_group_key => $blog_group_value){
					if($blog_group_value["category_id"] == $category_id){
						$group_id = $blog_group_value['id'];
						$group_name = $blog_group_value['name'];
						echo "<option value='$group_id'>$group_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["group_id"])){ 
			$group_id = $_POST["group_id"];
			if($this->get_data_array["framework_list_datatable"] !=  null){
				foreach($this->get_data_array["framework_list_datatable"] as $blog_list_key => $blog_list_value){
					if($blog_list_value["group_id"] == $group_id){
						$list_id = $blog_list_value['id'];
						$list_name = $blog_list_value['name'];
						echo "<option value='$list_id'>$list_name</option>"; 
					}
				}
			}
		}
	}
	public function __destruct(){}
}
?>