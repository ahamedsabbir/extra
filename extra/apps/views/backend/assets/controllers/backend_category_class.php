<?php
class backend_category_class extends backend_controller_class{
	public $plugins;
	public $plugins_type;
	public $primary_datatable;
	public $upload_image;
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_category_datatable";
		$this->upload_image = UPLOAD_FOLDER."category";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("status" => 1));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function insert_category_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
			$category = parent::data_control("name");
			$category_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("datatable" => $this->post_datatable, "name" => $category));
			if($category_exist == false){
				$insert_data_array = array(
					'datatable' => $this->post_datatable,
					'sn' => parent::data_control("sn"),
					'name' => $category,
					'title' => parent::data_control("title"),
					'icon' => parent::file_control('icon', settings_class::$image_extension, settings_class::$image_size, $this->upload_image),
					'font_icon' => parent::data_control("font_icon")
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
						header(address_class::header_page("backend_category_class", "insert_category_function", $page));
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
					}	
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
			}
		}else{
			header(address_class::header_page("backend_category_class", "index_page_function", $page));
		}
	}
	public function update_category_function($page, $array_key = false, $array_value = false){
		$category_id = parent::data_control("category_id");
		if($_POST["submit"] == "update"){
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $category_id));
			if($this->get_data_array[$this->primary_datatable] != null){
				$update_data_array = array(
					'sn' => parent::data_control("sn"),
					'name' => parent::data_control("name"),
					'title' => parent::data_control("title"),
					'icon' => parent::file_control('icon', array("jpg", "jpeg", "gip", "png"), 2, $this->upload_image, $this->get_data_array[$this->primary_datatable][0]['icon']),
					'font_icon' => parent::data_control("font_icon")
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$this->model_array['update_db_class']->update_db_function($this->primary_datatable, $update_data_array, array("id" => $category_id));
					header(address_class::header_page("backend_category_class", "index_page_function", $page, "&datatable_name=".$this->datatable_name."&plugins=".$this->plugins));
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
		}
	}
	public function delete_category_function($page, $array_key = false, $array_value = false){
		$category_id = parent::data_control("category_id");	
		$this->get_data_array["category"] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $category_id, "datatable" => $this->post_datatable));	
		unlink($this->get_data_array["category"][0]["icon"]);
		$delete = $this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id" => $category_id, "datatable" => $this->post_datatable));
		header(address_class::header_page("backend_category_class", "index_page_function", $page));
	}
	public function __destruct(){}
}
?>