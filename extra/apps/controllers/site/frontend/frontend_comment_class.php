<?php
class theme_redweb_comment_class extends frontend_redweb_controller_class{
	public function __construct(){
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_comment_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : false;
		$comment_id = isset($_REQUEST['comment_id']) ? $_REQUEST['comment_id'] : false;
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array("id" => $post_id, "status" => 1));
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("post_id" => $post_id, "id" => $comment_id));
		$this->get_data_array["framework_reply_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_reply_datatable", array("post_id" => $post_id, "comment_id" => $_GET['comment_id']), "ID DESC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function insert_comment_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
          	$post_id = parent::data_control("post_id");
			$insert_data_array = array(
				"datatable" => $this->post_datatable, 
				"post_id" => $post_id, 
				"user_id" => cookie_class::get('user_id'),
				"comment" => parent::data_control("comment"),
				"status" => 1
			);
			if($this->method_array['text_validation_class']->submit()){
				$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
				if($insert == true){
                  	header(address_class::header_page("theme_redweb_single_class", "single_page_function", "single", "&post_id=$post_id"));
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
		}
	}
	public function edit_comment_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("comment" => parent::data_control("comment")), array("id" => $comment_id, "user_id" => cookie_class::get('user_id')));
			if($update == true){
              	header(address_class::header_page("theme_redweb_comment_class", "index_page_function", "reply", "&post_id=$post_id&comment_id=$comment_id"));
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
		}
	}
	public function delete_comment_function($page, $array_key = false, $array_value = false){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		$this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id" => $comment_id, "user_id" => cookie_class::get("user_id")));
		$this->model_array["delete_db_class"]->delete_db_function("framework_reply_datatable", array("comment_id" => $comment_id, "user_id" => cookie_class::get("user_id")));
		header(address_class::header_page("redweb_single_class", "single_page_function", $page, "&post_id=$post_id"));
	}
	public function __destruct(){}
}
?>