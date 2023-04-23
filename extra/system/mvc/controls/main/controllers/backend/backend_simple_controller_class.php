<?php
class simple_controller_class extends main_backend_controller_class{
  	public $xml;
  	public $simple;
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
		}else{
			$this->post_datatable = $this->get_data_array["post_datatable"] = siteinfo_class::$post_datatable;
		}
      	parent::__construct();
		
		$this->upload_file = UPLOAD_FOLDER.$this->simple."/file";
        $this->upload_image = UPLOAD_FOLDER.$this->simple."/img";
        $this->upload_video = UPLOAD_FOLDER.$this->simple."/video";
		
		$this->get_data_array["simple_menu_xml"] = simplexml_load_file("extra/apps/views/simple/assets/xml/menu.xml");
		
		include($this->theme_url."/assets/datatable/combo.php");
		
	}
	public function __destruct(){}
}
?>

