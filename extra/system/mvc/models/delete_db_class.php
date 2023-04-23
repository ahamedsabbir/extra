<?php
class delete_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}

   function delete_db_function($datatable_name, $delete_by){
	   $bykeys = NULL;
        foreach($delete_by as $key => $value){
            $bykeys .= "{$key} = :{$key} AND ";
        }
		$bykeys = rtrim($bykeys," AND ");
		$sql = "DELETE FROM $datatable_name WHERE $bykeys";
        return $this->db_array->remove_database_function($sql, $delete_by);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
?>