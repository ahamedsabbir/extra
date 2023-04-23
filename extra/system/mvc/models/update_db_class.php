<?php
class update_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
    function update_db_function($datatable_name, $update_data_array, $update_by = false){
		$updatekeys = NULL;
        foreach($update_data_array as $key => $value){
            $updatekeys .= "{$key} = :{$key}, ";
        }
        $updatekeys = rtrim($updatekeys,", ");
if($update_by == true){
$bykeys = NULL;
        foreach($update_by as $key => $value){
            $bykeys .= "{$key} = :{$key} AND ";
        }
		$bykeys = rtrim($bykeys," AND ");
		$sql = "UPDATE $datatable_name SET $updatekeys WHERE $bykeys";
		return $this->db_array->update_database_function($sql, $update_data_array, $update_by);
}else{
			$sql = "UPDATE $datatable_name SET $updatekeys";
			return $this->db_array->update_database_function($sql, $update_data_array);
	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
?>