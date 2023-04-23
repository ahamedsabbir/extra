<?php
class backend_controller_class extends main_backend_controller_class{
  	public $xml;
  	public $theme_folder;
  	public $theme_url;
  	public $content;
  	public $backend;
	public $upload_image;
	public $upload_file;
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
		$this->upload_file = UPLOAD_FOLDER.$this->backend."/file";
        $this->upload_image = UPLOAD_FOLDER.$this->backend."/img";
        $this->upload_video = UPLOAD_FOLDER.$this->backend."/video";
		$this->get_data_array["backend_menu_xml"] = simplexml_load_file("extra/apps/views/backend/assets/xml/menu.xml");
		include($this->theme_url."/assets/datatable/combo.php");
	}
	public function __destruct(){}
}
?>

