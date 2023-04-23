<?php
class insert_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	function insert_db_function($datatable_name, $insert_data){
		$keys = implode(", ", array_keys($insert_data));
		$values = ":". implode(", :", array_keys($insert_data));
		$sql = "INSERT INTO $datatable_name($keys) VALUES ($values)";
		return $this->db_array->insert_database_function($sql, $insert_data);
    }

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	



	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

}

?>