<?php
class soft_sslcommerz_controller_class extends main_soft_controller_class{
  	public $xml;
  	public $soft_folder;
  	public $soft_url;
  	public $content;
	public $upload_image;
  	public $upload_video;
	public $upload_file;
	public function __construct(){  
      	$this->soft_name = $this->get_data_array["soft_name"] = "sslcommerz";
      	$this->post_datatable = $this->get_data_array["post_datatable"] = "sslcommerz_datatable";
      	parent::__construct();
      	$this->soft_folder = $this->get_data_array["soft_folder"] = $this->soft_name;
      	$this->soft_url = $this->get_data_array["soft_url"] = "extra/apps/views/softs/".$this->soft_folder;

		$this->xml = $this->get_data_array['xml'] = $this->soft_url."/assets/xml/content.xml";
      	$this->content = $this->get_data_array['content'] = $this->soft_url."/assets/xml/content.xml";
		
		$this->upload_file = UPLOAD_FOLDER.$this->soft_folder."/file";
		$this->upload_image = UPLOAD_FOLDER.$this->soft_folder."/img";
		$this->upload_video = UPLOAD_FOLDER.$this->soft_folder."/video";

		$this->view_load_object_arrays->view_load_functions(soft_class::page("functions"), $this->get_data_array);
		
    }
	public function __destruct(){}
}
?>

