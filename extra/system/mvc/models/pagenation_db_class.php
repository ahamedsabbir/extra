<?php
class pagenation_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	public function pagenation_select_db_function($datatable, $data_array = null, $order_by = null, $pageno = null, $loop_item = null){
		if(isset($pageno)){
			$pageno = isset($pageno) ? $pageno : 1;
			$loop_start = ($pageno-1) * vendor_pagenation_class::$loop_item;
			$loop_start;
		}
		if($loop_item != null){
			$loop_item = $loop_item;
		}else{
			$loop_item = vendor_pagenation_class::$loop_item;
		}
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key."=:".$key." AND ";
			}
			$select_by = rtrim($select_by," AND ");
			$sql = "SELECT * FROM ".$datatable." WHERE ".$select_by." ORDER BY ".$order_by." LIMIT ".$loop_start.", ".$loop_item;
		}else{
			$sql = "SELECT * FROM ".$datatable." ORDER BY ".$order_by." LIMIT ".$loop_start.", ".$loop_item;
		}
		vendor_pagenation_class::$rows_count = $this->pagenation_row_db_function($datatable, $data_array);
		return $this->db_array->select_database_function($sql, $data_array);		
    }
	function pagenation_row_db_function($datatable, $data_array = null){
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
