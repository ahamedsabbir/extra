<?php
class main_backend_controller_class extends mysql_controller_class{
	public function __construct(){
      	parent::__construct();
		$page_link = "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
		if(session_class::get("admin_id") != false){
			$admin = session_class::get("admin_id");
		}else{
			$admin = $this->method_array['visitor_info_class']->ip;
		}
		$insert = $this->model_array['insert_db_class']->insert_db_function("framework_history_datatable", array("admin" => $admin, "address" => $page_link));
    }
	public function __destruct(){}
}
?>

