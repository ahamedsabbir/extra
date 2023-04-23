<?php
class seo extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "seo";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "seo_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
  	public function email_marketing_function($page, $array_key = false, $array_value = false){
      	$email_array = explode(", ", $_POST["emails"]);
      	foreach($email_array as $email_array_key => $email_array_value){
          $this->method_array['email_class']->mailing($email_array_value, "well come to my site.", "boos what are find all thing inhere.");
        }
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
  	public function subscriber_email_function($page, $array_key = false, $array_value = false){
        $framework_subscribe_datatable = $this->model_array["select_db_class"]->select_db_function("framework_subscribe_datatable", array("status" => 1));
      	foreach($framework_subscribe_datatable as $framework_subscribe_datatable_key => $framework_subscribe_datatable_value){
          $this->method_array['email_class']->mailing($framework_subscribe_datatable_value["email"], "well come to my site.", "boos what are find all thing inhere.");
        }
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>
