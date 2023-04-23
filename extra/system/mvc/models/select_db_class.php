<?php
class select_db_class extends main_model_class{
	public $where;
	public $order_by;
	public $loop_start;
	public $loop_item;
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
			$this->where = " WHERE ".$select_by;
		}else{
			$this->where = "";
		}
		if($order_by != null){
			$this->order_by = " ORDER BY ".$order_by;
		}else{
			$this->order_by = "";
		}
		if($pageno != null){
			$pageno = isset($pageno) ? $pageno : 1;
			$loop_start = ($pageno-1) * vendor_pagenation_class::$loop_item;
			$loop_start;
			$this->loop_start = " LIMIT ".$loop_start;
		}else{
			$this->loop_start = "";
		}
		if($loop_item != null){
			$this->loop_item = ", ".$loop_item;
		}else{
			$this->loop_item = "";
		}
	}
	public function select_db_function($datatable, $data_array = null, $order_by = null, $pageno = null, $loop_item = null){
		$this->set($data_array, $order_by, $pageno, $loop_item);
		$sql = "SELECT * FROM ".$datatable.$this->where.$this->order_by.$this->loop_start.$this->loop_item;
		return $this->db_array->select_database_function($sql, $data_array);
    }
}
?>

