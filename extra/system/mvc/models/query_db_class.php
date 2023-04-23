<?php
class query_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	function query_db_function($sql, $type = false){
		return $this->db_array->query_read_function($sql);
    }	
}
?>