<?php
class model{
	public $thisObject;
	public $view_load_object;
	public function __construct($thisObject){
      	$this->thisObject = $thisObject;
		$this->model_load_object = new method_load_class();
    }
	public function pagenation($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["pagenation_db_class"]->pagenation_select_db_function($datatable, $select_by, "ID DESC", $this->thisObject->pageno, vendor_pagenation_class::$loop_item);
	}
	public function theme($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
		siteinfo_class::home_info_set($this->thisObject->get_data_array[$datatable]);
	}
	public function single($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
		siteinfo_class::post_info_set($this->thisObject->get_data_array[$datatable]);
		$category = $this->thisObject->get_data_array[$datatable][0]["category"];
		$this->thisObject->get_data_array[$datatable."_related"] = $this->thisObject->model_array["search_db_class"]->search_select_db_function($datatable, array('category' => $category), array("status" => 1), "ID ASC", 1);
	}
	public function post($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
		siteinfo_class::post_info_set($this->thisObject->get_data_array[$datatable]);
		$category = $this->thisObject->get_data_array[$this->thisObject->primary_datatable][0]["category"];
		$this->thisObject->get_data_array["related_$datatable"] = $this->thisObject->model_array["search_db_class"]->search_select_db_function($datatable, array('category' => $category), array("status" => 1), "ID ASC", 1);
	}
	public function simplePost($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
		siteinfo_class::post_info_set($this->thisObject->get_data_array[$datatable]);
	}
	public function profile($datatable, $select_by){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
		siteinfo_class::profile_info_set($this->thisObject->get_data_array[$datatable]);
	}
	public function get($datatable, $select_by = array()){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable, $select_by);
	}
	public function all($datatable){
		$this->thisObject->get_data_array[$datatable] = $this->thisObject->model_array["select_db_class"]->select_db_function($datatable);
	}
	public function counts($datatable, $select_by = array()){
		if($select_by != null){
			$this->thisObject->get_data_array[$datatable."_count"] = $this->thisObject->model_array["count_db_class"]->count_db_function($datatable, $select_by);
		}else{
			$this->thisObject->get_data_array[$datatable."_count"] = $this->thisObject->model_array["count_db_class"]->count_db_function($datatable);
		}
	}
	public function insert(){}
	public function update(){}
	public function search($datatable, $select_by){
		$this->get_data_array["related_sumtech_datatable"] = $this->model_array["search_db_class"]->search_select_db_function("shop_datatable", array('category' => $category), array("status" => 1), "ID ASC", 1);
	}
	public function watch($dataarray = array()){
		$dataarray["visitor_id"] = cookie_class::get("visitor_id");
		$dataarray["status"] = 1;
		$insert_watch = $this->model_array['insert_db_class']->insert_db_function("framework_watch_datatable", $dataarray);
		$watch_count = $this->model_array["count_db_class"]->count_db_function("framework_watch_datatable", array("datatable" => $dataarray["datatable"], "post_id" => $post_id, "status" => 1));
		$update_watch = $this->model_array['update_db_class']->update_db_function($dataarray["datatable"], array("watched" => $watch_count), array("id" => $post_id));
	}
	public function remove(){}
	public function __destruct(){}
}
?>