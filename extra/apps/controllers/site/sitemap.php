<?php
class sitemap extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "sitemap";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "sitemap_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function insert_sitemap_function($page, $array_key = false, $array_value = false){
		echo $src = "sitemap.xml";
      	$sitemap = simplexml_load_file($src);
      	$url = $sitemap->addChild("url");
      	$url->addChild("loc", $_POST["loc"]);
        $url->addChild("priority", $_POST["priority"]);
        $url->addChild("lastmod", date("Y-m-d"));
      	file_put_contents($src, $sitemap->asXML());
      	header(address_class::header_page("backend", "index_page_function", "index"));	
	}
	public function __destruct(){}
}
?>