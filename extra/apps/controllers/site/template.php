<?php
class template{
	public function __construct(){}
	public function index_page_function($page, $array_key = false, $array_value = false){
		include("extra/apps/views/template/template.php");
		exit;
	}
	public function single_template_function($source, $array_key = false, $array_value = false){
		address_class::load_web_page("extra/apps/views/template/$source");
        exit;
	}
	public function __destruct(){}
}
?>
