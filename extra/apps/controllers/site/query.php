<?php
class query extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "query";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = $this->plugins."_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
      $this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function datatable_insert_function($page = null, $array_key = false, $array_value = false){
		$datatable_chack = $this->model_array["query_db_class"]->query_db_function('select 1 from '.$this->primary_datatable);
		if($datatable_chack == false){
			$this->model_array["query_db_class"]->query_db_function('CREATE DATABASE '.$this->primary_datatable);
		}
		$datarow_chack = $this->model_array["query_db_class"]->query_db_function('select 1 from '.$this->primary_datatable);
		if($datarow_chack == false){
			
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function __destruct(){}
}
?>