<?php
class theme_example_reach_class extends frontend_example_controller_class{
	public $type = "theme";
	public function __construct(){
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_reach_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array[$this->post_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->post_datatable, array("status" => 1), "TOTAL_LIKE DESC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function like_submit_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		parent::argument_control($array_key, $array_value);
		$post_id = parent::data_control("post_id");
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array("id" => $post_id));
		$this->get_data_array["like_exist"] = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id"=>$post_id, "user_id"=>cookie_class::get('user_id')));
		if($this->get_data_array["like_exist"] == 1){
			$this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("status" => 1), array("post_id" => $post_id, "user_id" => cookie_class::get('user_id')));
		}else{
			$insert_reach_array = array(
				"datatable" => $this->post_datatable,
				"post_id" => $post_id, 
				"user_id" => cookie_class::get('user_id'),
				"status" => 1
			);
			$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_reach_array);
		}
		$set_reach_array = array( 
			"liked" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $post_id, "status" => 1)),
			"unliked" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $post_id, "status" => 0))
		);
		$update = $this->model_array['update_db_class']->update_db_function($this->post_datatable, $set_reach_array, array("id" => $post_id));
		header("location:".BASE_URL."theme_example/single_page_function/single/&post_id=".$post_id);
	}
	public function unlike_submit_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");	
		parent::argument_control($array_key, $array_value);
		$post_id = parent::data_control("post_id");
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array("id" => $post_id));
		$this->get_data_array["like_exist"] = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $post_id, "user_id" => cookie_class::get('user_id')));
		if($this->get_data_array["like_exist"] == 1){
			$this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("status" => 0), array("post_id" => $post_id, "user_id" => cookie_class::get('user_id')));
		}else{
			$insert_reach_array = array(
				"datatable" => $this->post_datatable, 
				"post_id" => $post_id, 
				"user_id" => cookie_class::get('user_id'),
				"status" => 0
			);$this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_reach_array);
		}
		$set_reach_array = array( 
			"total_like" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $_post_id, "status" => 1)),
			"total_unlike" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $_post_id, "status" => 0))
		);$this->model_array['update_db_class']->update_db_function($this->post_datatable, $set_reach_array, array("id" => $post_id));
		header("location:".BASE_URL."theme_redweb_single_class/single_page_function/single/&post_id=".$post_id);
	}
	public function delete_reach_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		parent::argument_control($array_key, $array_value);
		$post_id = parent::data_control("post_id");
		$user_id = cookie_class::get('user_id');
		$delete = $this->model_array["delete_db_class"]->delete_db_function("framework_reach_datatable", array("post_id" => $post_id, "user_id" => $user_id));
		if($delete == true){
			$set_reach_array = array( 
			"total_like" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $_post_id, "status" => 1)),
			"total_unlike" => $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("post_id" => $_post_id, "status" => 0))
			);
			$this->model_array['update_db_class']->update_db_function($this->post_datatable, $set_reach_array, array("id" => $post_id));
		}
		header("location:".BASE_URL."theme_redweb_single_class/single_page_function/single/&post_id=".$post_id);
	}
	public function __destruct(){}
}
?>
