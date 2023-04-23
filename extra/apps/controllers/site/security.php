<?php
class security extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions("extra/apps/views/themes/".$page.".php", $this->get_data_array);
	}
	public function __destruct(){}
}
?>