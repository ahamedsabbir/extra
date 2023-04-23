<?php
class theme_example_watch_class extends frontend_example_controller_class{
	public $type = "theme";
	public function __construct(){
		lock_class::lock_function(false);
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "example_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){	
		parent::argument_control($array_key, $array_value);
		$this->model->pagenation("framework_watch_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
		$this->model->get("example_post_datatable", array("status" => 1));
		$this->view->indexPage($page);
	}
	/*public function cart_delete_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$delete_datatable = "framework_cart_datatable";
		$delete_by_array = array("datatable" => $this->post_datatable, "cookie_id" => cookie_class::id(), "post_id" => $post_id);
		$check = $this->model_array["count_db_class"]->count_db_function($delete_datatable, $delete_by_array);
		if($check != 0){
			$delete = $this->model_array["delete_db_class"]->delete_db_function($delete_datatable, $delete_by_array);
			if($delete){
				session_class::set("cart", "add new pot in cart");
			}else{
				session_class::set("cart", "not add some problem");
			}
		}
		$this->view->indexPage($page);
	}*/
	public function __destruct(){}
}
?>