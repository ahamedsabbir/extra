<?php
class theme_example_reply_class extends frontend_redweb_controller_class{
	public $type = "theme";
	public function __construct(){
		cookie_class::cookie_check("user_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_reply_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		$reply_id = parent::data_control("reply_id");
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array("id" => $post_id, "status" => 1));
		siteinfo_class::post_info_set($this->get_data_array["example_post_datatable"]);
		include("extra/apps/helper/watch_helper_function.php");
		$this->get_data_array["framework_comment_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_comment_datatable", array("id" => $comment_id, "post_id" => $post_id));	
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $reply_id, "user_id" => cookie_class::get('user_id')));	
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function insert_reply_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "insert"){
			$insert_data_array = array(
				"user_id" => cookie_class::get('user_id'),
				"datatable" => "example_datatable",
				"post_id" => $post_id, 
				"comment_id" => $comment_id,
				"reply" => parent::data_control("reply")
			);
			if($this->method_array['text_validation_class']->submit()){
				$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
				if($insert == true){
					$reply_count = $this->model_array["count_db_class"]->count_db_function("framework_reply_datatable", array("datatable" => "example_datatable", "post_id" => $post_id, "status" => 1));
					$update = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("replied" => $reply_count), array("id" => $post_id));
                  	header(address_class::header_page("theme_example_comment_class", "index_page_function", "comment", "&post_id=$post_id&comment_id=$comment_id"));
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
	public function edit_reply_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		$reply_id = parent::data_control("reply_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("reply" => parent::data_control("reply")), array("id" => $reply_id, "user_id" => cookie_class::get('user_id')));
			if($update == true){
				$reply_count = $this->model_array["count_db_class"]->count_db_function("framework_reply_datatable", array("datatable" => "example_datatable", "post_id" => $post_id, "status" => 1));
				$update = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("replied" => $reply_count), array("id" => $post_id));
              	header(address_class::header_page("theme_redweb_reply_class", "index_page_function", $page, "&post_id=$post_id&comment_id=$comment_id&reply_id=$reply_id"));
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
			}
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
		}
	}
	public function delete_reply_function($page, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		$comment_id = parent::data_control("comment_id");
		$reply_id = parent::data_control("reply_id");
		$delete = $this->model_array["delete_db_class"]->delete_db_function($this->primary_datatable, array("id" => $reply_id, "user_id" => cookie_class::get("user_id")));
		$reply_count = $this->model_array["count_db_class"]->count_db_function("framework_reply_datatable", array("datatable" => "example_datatable", "post_id" => $post_id, "status" => 1));
		$update = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("replied" => $reply_count), array("id" => $post_id));
      	header(address_class::header_page("theme_redweb_comment_class", "index_page_function", $page, "&post_id=$post_id&comment_id=$comment_id"));
	}
	public function __destruct(){}
}
?>
