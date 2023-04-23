<?php
class plugins_form_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "form";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "form_datatable";
      	$this->view_load_object_arrays->view_load_functions(backend_class::page("inc/form", $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function ajax_upload_function($page, $array_key = false, $array_value = false){
    	if($_FILES['file']['name'] != ''){
          $test = explode('.', $_FILES['file']['name']);
          $extension = end($test);    
          echo $name = rand(100,999).'.'.$extension;
          $location = 'extra/storage/'.$name;
          move_uploaded_file($_FILES['file']['tmp_name'], $location);
          echo '<img src="'.$location.'" height="100" width="100" />';
		}
    }
  	public function add_fild_function($page, $array_key = false, $array_value = false){
      	echo $_FILES["file"]["name"];
    	echo "<p>fdsfsdfsdfs</p>";
    }
	public function __destruct(){}
}
?>
