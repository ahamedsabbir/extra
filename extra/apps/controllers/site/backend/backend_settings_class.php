<?php
class backend_settings_class extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "settings";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "settings_datatable";
		$this->xml = $this->get_data_array['settings'] = "extra/resources/xml/settings.xml";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function settings_update_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
		if(isset($_REQUEST["settings"]) AND $_REQUEST["settings"] == "update"){	
			foreach($xml->settings as $settings){
				if($settings["id"] == 1){
					$settings->site = parent::data_control("site");
					$settings->loop_item = parent::data_control("loop_item");
					$settings->image_extension = parent::data_control("image_extension");
					$settings->image_size = parent::data_control("image_size");
					$settings->video_extension = parent::data_control("video_extension");
					$settings->video_size = parent::data_control("video_size");
					$settings->file_extension = parent::data_control("file_extension");
					$settings->file_size = parent::data_control("file_size");
					$settings->facebook = parent::data_control("facebook");
					$settings->twitter = parent::data_control("twitter");
					$settings->linkedin = parent::data_control("linkedin");
					$settings->instagram = parent::data_control("instagram");
					$settings->youtube = parent::data_control("youtube");
					$settings->github = parent::data_control("github");
					$settings->copy_header = parent::data_control("copy_header");
					$settings->copy_right = parent::data_control("copy_right");
					$settings->copy_link = parent::data_control("copy_link");
					break;
				}
			}
			file_put_contents($this->xml, $xml->asXML());
		}
		header('location:'.address_class::request_method('backend_settings_class', 'index_page_function', $page));
	}
	public function __destruct(){}
}
?>
