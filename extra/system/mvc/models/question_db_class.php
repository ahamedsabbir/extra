<?php
class question_db_class extends main_model_class{
	public $where;
	function __construct(){
		parent::__construct();
	}
	public function set($data_array = null, $list = false){
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key."=:".$key." AND ";
			}
			$select_by = rtrim($select_by," AND ");		
			$this->where = $select_by;
		}else{
			$this->where = "";
		}
	}
	function random_db_function($datatable, $data_array, $list, $item = 20){
		$this->set($data_array, $list);
		$sql = "SELECT * FROM $datatable WHERE category_id IN ($list) AND ".$this->where." ORDER BY RAND() LIMIT $item";
		return $this->db_array->select_database_function($sql, $data_array);
    }
	public function search_select_db_function($datatable_name, $keyword, $data_array = null, $order_by = null, $pageno = null, $loop_item = null){
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
				$select_by .= $key." = ".$value." AND ";
			}
		}
		vendor_pagenation_class::$rows_count = $this->search_row_db_function($datatable_name, $keyword, $data_array);
		$sql = "SELECT * FROM `$datatable_name` WHERE $select_by `question` LIKE '%$keyword%' OR `description` LIKE '%$keyword%' ORDER BY ".$order_by." LIMIT ".$loop_start.", ".$loop_item;
        return $this->db_array->select_database_function($sql);
    }
	function search_row_db_function($datatable_name, $keyword, $data_array = null){
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key." = ".$value." AND ";
			}
		}
		$sql = "SELECT * FROM `$datatable_name` WHERE $select_by `question` LIKE '%$keyword%' OR `description` LIKE '%$keyword%'";
        return $this->db_array->count_database_function($sql);
	}
}
?>

