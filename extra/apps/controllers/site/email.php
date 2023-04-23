<?php
class email extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "email";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "email_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
  	public function email_send_function($page, $array_key = false, $array_value = false){
    	if(isset($_POST["submit"]) AND $_POST["submit"] == "send"){
              $insert_data_array = array();
              foreach($_POST as $post_key => $post_value){
                $insert_data_array[$post_key] = parent::data_control($post_key);
              }
              unset($insert_data_array["submit"]);
              if($this->method_array['text_validation_class']->submit()){
                    $send = mail($insert_data_array["email"], $insert_data_array["subject"], $_POST["desctiption"]);
                    if($send == true){
                      $msg = vendor_getMsg_class::set("email send");
                      header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg));	
                    }else{
                      report_class::set_report("signin", "error", "you are not member.");
                      $this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
                    }
              }else{
                report_class::set_report("signin", "error", "you are not member.");
                $this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
              }
		}else{
          	$msg = vendor_getMsg_class::set("email not send");
			header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg));
		}	
    }
	public function __destruct(){}
}
?>