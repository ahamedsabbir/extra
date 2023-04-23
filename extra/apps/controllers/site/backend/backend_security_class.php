<?php
class backend_security_class extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "security";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "security_datatable";
	}
	public function __destruct(){}
}
?>