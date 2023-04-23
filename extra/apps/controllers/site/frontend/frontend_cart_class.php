<?php
class frontend_cart_class extends frontend_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_cart_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, array("datatable" => $this->post_datatable, "user_id" => cookie_class::get("user_id")), "ID DESC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function cart_add_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$insert_data_array = array("datatable" => $this->post_datatable, "user_id" => cookie_class::get("user_id"), "post_id" => $post_id);
		$post_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, $insert_data_array);
		if($post_exist == 0){
			$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
			if($insert == true){
				header("location:".BASE_URL."theme_redweb_favorite_class/index_page_function/favorite/&post_id=".$post_id);
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
		}
	}
	public function cart_delete_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("user_id" => cookie_class::get("user_id"), "post_id" => $post_id));
		header("location:".BASE_URL."theme_redweb_favorite_class/index_page_function/favorite/");
	}
	public function __destruct(){}
}
?>
