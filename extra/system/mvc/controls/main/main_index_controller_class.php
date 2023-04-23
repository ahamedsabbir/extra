<?php
class main_index_controller_class extends mysql_controller_class{
	public function __construct(){
      	parent::__construct();
      	$this->get_data_array["visitor_exist"] = $this->model_array["count_db_class"]->count_db_function("framework_visitor_datatable", array('session' => session_class::id()));
		if($this->get_data_array["visitor_exist"] == false){
			$insert_data_array = array(
				'datatable' => $this->post_datatable,
				'env_user' => $this->method_array['visitor_info_class']->env_user,
				"ip" => $this->method_array['visitor_info_class']->ip,
				'session' => session_class::id(),
				'browser' => $this->method_array['visitor_info_class']->browser,
				'country' => $this->method_array['visitor_info_class']->country,
				'city' => $this->method_array['visitor_info_class']->city,
				'block' => 0
			);
			$insert = $this->model_array['insert_db_class']->insert_db_function("framework_visitor_datatable", $insert_data_array);
			if($insert == true){
				report_class::set_report("visitor", "success", "new visitor come.");
				$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable");
				foreach($this->get_data_array["framework_visitor_datatable"] as $framework_visitor_datatable_key => $framework_visitor_datatable_value){
					if($framework_visitor_datatable_value["session"] == session_class::id()){
						cookie_class::set("visitor", true);
						cookie_class::set("visitor_id", $framework_visitor_datatable_value["id"]);
                      	address_class::reload_page();
					}
				}
			}
		}
		$page_link = "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
		$insert = $this->model_array['insert_db_class']->insert_db_function("framework_history_datatable", array("visitor_id" => cookie_class::get("visitor_id"), "address" => $page_link));
    }
	public function __destruct(){}
}
?>

