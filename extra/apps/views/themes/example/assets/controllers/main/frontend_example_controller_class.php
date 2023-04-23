<?php
class frontend_example_controller_class extends main_controller_class{
  	public $xml;
  	public $theme_folder;
  	public $theme_url;
  	public $content;
	public $upload_image;
  	public $upload_video;
	public $upload_file;
	public function __construct(){  
      	$this->theme_name = $this->get_data_array["theme_name"] = "example";
      	$this->post_datatable = $this->get_data_array["post_datatable"] = "example_datatable";
      	parent::__construct();
      	$this->theme_folder = $this->get_data_array["theme_folder"] = $this->theme_name;
      	$this->theme_url = $this->get_data_array["theme_url"] = "extra/apps/views/themes/".$this->theme_folder;

		$this->xml = $this->get_data_array['xml'] = $this->theme_url."/app/content/assets/xml/content.xml";
      	$this->content = $this->get_data_array['content'] = $this->theme_url."/app/content/assets/xml/content.xml";
		
		$this->upload_file = UPLOAD_FOLDER.$this->theme_folder."/file";
		$this->upload_image = UPLOAD_FOLDER.$this->theme_folder."/img";
		$this->upload_video = UPLOAD_FOLDER.$this->theme_folder."/video";
		
		
		$this->get_data_array["all_post"] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable);
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array("status" => 1));
		$this->get_data_array["framework_level_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_level_datatable");
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_brand_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_brand_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable", array("status" => 1));
		$this->get_data_array["framework_chat_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
		$this->get_data_array["framework_notification_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_notification_datatable", array("type" => "user"));
      	$this->get_data_array["framework_advertise_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_advertise_datatable");
		

		$this->view_load_object_arrays->view_load_functions(theme_class::page("functions"), $this->get_data_array);
		
    }
	public function __destruct(){}
}
?>

