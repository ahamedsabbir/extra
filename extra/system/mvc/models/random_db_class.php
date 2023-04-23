<?php
class random_db_class extends main_model_class{
	public $where;
	function __construct(){
		parent::__construct();
	}
	public function set($data_array = null, $order_by = null, $pageno = null, $loop_item = null){
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
    function random_db_function($datatable, $data_array, $row, $list, $limit){
		$this->set($data_array);
        $sql = "SELECT * FROM $datatable WHERE ".$this->where." AND $row IN ($list) ORDER BY RAND() LIMIT $limit";
		return $this->db_array->select_database_function($sql, $data_array);
    }
}
?>

