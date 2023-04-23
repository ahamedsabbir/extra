<?php
class search_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	public function search_select_db_function($datatable_name, $keywords, $data_array = null, $order_by = null, $pageno = null, $loop_item = null){
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
			foreach($data_array as $data_key => $data_value){
				$select_by .= $data_key." = ".$data_value." AND ";
			}
		}
		if($keywords != null){
			$keyword_string = null;
			foreach($keywords as $search_key => $search_value){
				$keyword_string .= "`$search_key` LIKE '$search_value%' OR";
			}
			$keyword_string = rtrim($keyword_string, " OR");
		}
		vendor_pagenation_class::$rows_count = $this->search_row_db_function($datatable_name, $keyword_string, $data_array);
		$sql = "SELECT * FROM `$datatable_name` WHERE $select_by $keyword_string ORDER BY ".$order_by." LIMIT ".$loop_start.", ".$loop_item;
        return $this->db_array->select_database_function($sql);
    }
	function search_row_db_function($datatable_name, $keyword_string, $data_array = null){
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key." = ".$value." AND ";
			}
		}
		$sql = "SELECT * FROM `$datatable_name` WHERE $select_by $keyword_string";
        return $this->db_array->count_database_function($sql);
	}
}
?>

