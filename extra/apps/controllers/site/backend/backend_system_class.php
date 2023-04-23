<?php
class backend_system_class extends backend_controller_class{
	public $root_url;
	public $root_folder;
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "system";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "system_datatable";
		$this->root_folder = ROOT_FOLDER;
		$this->root_url = preg_replace("~\\\\~", "", $_SERVER["DOCUMENT_ROOT"]."/".$this->root_folder);
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){}
	public function system_update_function($page = null, $array_key = false, $array_value = false){
		$zip_file = $this->root_url."extra/resources/update/update.zip";
		$send_to = $this->root_url;
		$zip = new ZipArchive;
		$res = $zip->open($zip_file);
		  $zip->extractTo($send_to);
		  $zip->close();
		address_class::reload_page();
	}
	public function __destruct(){}
}
?>