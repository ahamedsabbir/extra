<?php
class frontend_controller_class extends main_index_controller_class{
  	public $xml;
  	public $theme_folder;
  	public $theme_url;
  	public $content;
	public $upload_file;
	public $upload_image;
  	public $upload_video;
	public function __construct(){
		if(isset($_REQUEST["theme_name"])){
			$this->theme_name = $this->get_data_array["theme_name"] = $_REQUEST["theme_name"];
		}else{
			$this->theme_name = $this->get_data_array["theme_name"] = siteinfo_class::$theme;
		}
      	if(isset($_REQUEST["post_datatable"])){
			$this->post_datatable = $this->get_data_array["post_datatable"] = $_REQUEST["post_datatable"];	
			$this->theme_datatable = $this->get_data_array["theme_datatable"] = $_REQUEST["post_datatable"];	
		}else{
			$this->post_datatable = $this->get_data_array["post_datatable"] = siteinfo_class::$post_datatable;
			$this->theme_datatable = $this->get_data_array["theme_datatable"] = siteinfo_class::$post_datatable;
		}
      	parent::__construct();
      	$this->theme_folder = $this->get_data_array["theme_folder"] = $this->theme_name;
      	$this->theme_url = $this->get_data_array["theme_url"] = "extra/apps/views/themes/".$this->theme_folder;
		$this->xml = $this->get_data_array['xml'] = $this->theme_url."/assets/xml/content.xml";
      	$this->content = $this->get_data_array['content'] = $this->theme_url."/assets/xml/content.xml";
		$this->upload_file = UPLOAD_FOLDER.$this->theme_folder."/file";
		$this->upload_image = UPLOAD_FOLDER.$this->theme_folder."/img";
		$this->upload_video = UPLOAD_FOLDER.$this->theme_folder."/video";
		$this->get_data_array["backend_menu_xml"] = simplexml_load_file("extra/apps/views/backend/assets/xml/menu.xml");
		include($this->theme_url."/assets/datatable/combo.php");
		$this->view_load_object_arrays->view_load_functions(theme_class::page("functions"), $this->get_data_array);
    }
	public function __destruct(){}
}
?>

