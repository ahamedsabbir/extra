<?php
class layer extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "layer";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "layer_datatable";
		$this->get_data_array["framework_layerone_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_layerone_datatable", array("datatable" => $this->post_datatable, "status" => 1));
		$this->get_data_array["framework_layertwo_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_layertwo_datatable", array("datatable" => $this->post_datatable, "status" => 1));
		$this->get_data_array["framework_layerthree_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_layerthree_datatable", array("datatable" => $this->post_datatable, "status" => 1));
		$this->get_data_array["framework_layerfour_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_layerfour_datatable", array("datatable" => $this->post_datatable, "status" => 1));
		$this->get_data_array["framework_layerfive_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_layerfive_datatable", array("datatable" => $this->post_datatable, "status" => 1));
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
  	public function action($page, $array_key = false, $array_value = false){
      	if(isset($_POST["layerOne"])){
			$layerOne = $_POST["layerOne"];
			 if($this->get_data_array["framework_layerone_datatable"] !=  null){
          		echo "<option value=''>Select</option>";
               foreach($this->get_data_array["framework_layertwo_datatable"] as $framework_layertwo_datatable_key => $framework_layertwo_datatable_value){
					if($framework_layertwo_datatable_value["layerOne"] == $layerOne){
						$layerTwo_id = $framework_layertwo_datatable_value['id'];
						$layerTwo_name = $framework_layertwo_datatable_value['name'];
						echo "<option value='$layerTwo_id'>$layerTwo_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["layerTwo"])){
			$layerTwo = $_POST["layerTwo"];
			 if($this->get_data_array["framework_layertwo_datatable"] !=  null){
          		echo "<option value=''>Select</option>";
               foreach($this->get_data_array["framework_layerthree_datatable"] as $framework_layerthree_datatable_key => $framework_layerthree_datatable_value){
					if($framework_layerthree_datatable_value["layerTwo"] == $layerTwo){
						$layerThree_id = $framework_layerthree_datatable_value['id'];
						$layerThree_name = $framework_layerthree_datatable_value['name'];
						echo "<option value='$layerThree_id'>$layerThree_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["layerThree"])){
			$layerThree = $_POST["layerThree"];
			 if($this->get_data_array["framework_layerthree_datatable"] !=  null){
          		echo "<option value=''>Select</option>";
               foreach($this->get_data_array["framework_layerfour_datatable"] as $framework_layerfour_datatable_key => $framework_layerfour_datatable_value){
					if($framework_layerfour_datatable_value["layerThree"] == $layerThree){
						$layerFour_id = $framework_layerfour_datatable_value['id'];
						$layerFour_name = $framework_layerfour_datatable_value['name'];
						echo "<option value='$layerFour_id'>$layerFour_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["layerFour"])){
			$layerFour = $_POST["layerFour"];
			 if($this->get_data_array["framework_layerfour_datatable"] !=  null){
          		echo "<option value=''>Select</option>";
               foreach($this->get_data_array["framework_layerfive_datatable"] as $framework_layerfive_datatable_key => $framework_layerfive_datatable_value){
					if($framework_layerfive_datatable_value["layerFour"] == $layerFour){
						$layerFive_id = $framework_layerfive_datatable_value['id'];
						$layerFive_name = $framework_layerfive_datatable_value['name'];
						echo "<option value='$layerFive_id'>$layerFive_name</option>"; 
					}
				}
			}
		}
	}
	public function __destruct(){}
}
?>