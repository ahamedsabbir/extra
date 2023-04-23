<?php
class relevant_db_class extends main_model_class{
	function __construct(){
		parent::__construct();
	}
	public function keyword_db_function($datatable_name, $keywords, $data_array = null, $loop_item = null){
		if($data_array != null){
			$select_by = null;
			foreach($data_array as $key => $value){
				$select_by .= $key." = ".$value." AND ";
			}
		}else{
			$select_by = "status =  1 AND ";
		}
		if($loop_item == null){
			$loop_item = vendor_pagenation_class::$loop_item;
		}
		$sql = "SELECT * FROM `$datatable_name` WHERE $select_by `title` LIKE '%$keywords%' OR `keywords` LIKE '%$keywords%' ORDER BY RAND() LIMIT ".$loop_item;
        return $this->db_array->select_database_function($sql);
    }
}
?>
