<?php
class plugins_location_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "location";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_country_datatable";
      	$this->get_data_array["secondary_datatable"] = $this->secondary_datatable = "framework_division_datatable";
      	$this->get_data_array["tertiary_datatable"] = $this->tertiary_datatable = "framework_district_datatable";
      	$this->get_data_array["quaternary_datatable"] = $this->quaternary_datatable = "framework_subdistrict_datatable";
      	
		$this->get_data_array["framework_country_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_country_datatable", array("status" => 1));
      	$this->get_data_array["framework_division_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_division_datatable", array("status" => 1));
      	$this->get_data_array["framework_district_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_district_datatable", array("status" => 1));
      	$this->get_data_array["framework_subdistrict_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_subdistrict_datatable", array("status" => 1));
      	$this->get_data_array["framework_policestation_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_policestation_datatable", array("status" => 1));
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function police_station_insert_function($page = null, $array_key = false, $array_value = false){
      	if($_POST["en_name"] != null AND $_POST["bn_name"] != null){
          $en_name = parent::data_control("en_name");
          $bn_name = parent::data_control("bn_name");
          $data_chack = $this->model_array["count_db_class"]->count_db_function("framework_policestation_datatable", array("en_name" => $en_name, "bn_name" => $bn_name));
              if($data_chack == 0){
                  $insert_data_array = array('district_id' => $_POST["district"], 'en_name' => $en_name, 'bn_name' => $bn_name);
                  $insert = $this->model_array['insert_db_class']->insert_db_function("framework_policestation_datatable", $insert_data_array);
                  header("location:".BASE_URL."plugins_location_class/index_page_function/$page");
              }else{
                report_class::set_report("submit", "error", "this name alrady in data base.");
              	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
              }
        }else{
          	report_class::set_report("submit", "error", "all input requre.");
        	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
        }
    }
  	public function subdistrict_insert_function($page = null, $array_key = false, $array_value = false){
      	if($_POST["en_name"] != null AND $_POST["bn_name"] != null){
          $en_name = parent::data_control("en_name");
          $bn_name = parent::data_control("bn_name");
          $data_chack = $this->model_array["count_db_class"]->count_db_function("framework_subdistrict_datatable", array("en_name" => $en_name, "bn_name" => $bn_name));
              if($data_chack == 0){
                  $insert_data_array = array('district_id' => $_POST["district"], 'en_name' => $en_name, 'bn_name' => $bn_name);
                  $insert = $this->model_array['insert_db_class']->insert_db_function("framework_subdistrict_datatable", $insert_data_array);
                  header("location:".BASE_URL."plugins_location_class/index_page_function/$page");
              }else{
                report_class::set_report("submit", "error", "this name alrady in data base.");
              	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
              }
        }else{
          	report_class::set_report("submit", "error", "all input requre.");
        	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
        }
    }
	public function __destruct(){}
}
?>
