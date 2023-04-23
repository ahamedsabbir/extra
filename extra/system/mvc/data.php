<?php
class data{
	public $thisObject;
	public $view_load_object;
	public function __construct($thisObject){
      	$this->thisObject = $thisObject;
		$this->model_load_object = new method_load_class();
    }
	public function get($datatable){
		return $this->thisObject->model_array["select_db_class"]->select_db_function($datatable);
	}
	public function getAll($datatable, $select_by = array()){
		return $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
	}
	public function counts($datatable, $select_by = array()){
		if($select_by != null){
			$result = $this->thisObject->model_array["count_db_class"]->count_db_function($datatable, $select_by);
		}else{
			$result = $this->thisObject->model_array["count_db_class"]->count_db_function($datatable);
		}
		return $result;
	}
	public function __destruct(){}
}
?>