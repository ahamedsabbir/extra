<?php
class count_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	function count_db_function($datatable, $data_array = null){
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key."=:".$key." AND ";
			}
			$select_by = rtrim($select_by," AND ");
			$sql = "SELECT * FROM ".$datatable." WHERE ".$select_by;
		}else{
			$sql = "SELECT * FROM $datatable";
		}
		return $this->db_array->count_database_function($sql, $data_array);
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
?>