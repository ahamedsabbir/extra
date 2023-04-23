<?php
class page extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->plugins =  $this->get_data_array["plugins"] = "page";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_page_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$page_id = parent::data_control("page_id");
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $page_id, "admin_id" => session_class::get('admin_id')));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($this->plugins."/".$page), $this->get_data_array);
	}
	public function page_update_function($page, $array_key = false, $array_value = false){
		$page_id = parent::data_control("page_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $page_id, "admin_id" => session_class::get('admin_id')));
			if($this->get_data_array[$this->primary_datatable] != null){
				$update_data_array = array(
					'datatable' => parent::data_control("datatable"),
					'name' => parent::data_control("name"),
					'title' => parent::data_control("title"),
					'bootstrap' => parent::data_control("bootstrap"),
					'content' => parent::data_control("content")
				);
				if($this->method_array['text_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, $update_data_array, array("id" => $page_id, "admin_id" => session_class::get('admin_id')));
					if($update == true){
						header("location:".BASE_URL."dashboard_blog_update_class/index_page_function/$page/&page_id=$page_id");
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			header("location:".BASE_URL."dashboard_blog_update_class/index_page_function/$page/&page_id=$page_id");
		}
	}
	public function __destruct(){}
}
?>