<?php
class theme_example extends frontend_example_controller_class{
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
		$this->model->get("example_datatable", array("id" => 1, "status" => 1));
		siteinfo_class::home_info_set($this->get_data_array["example_datatable"]);
		$this->model->pagenation("example_post_datatable", array("status" => 1));
		$this->view->indexPage($page);
	}
	public function single_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : $this->get_data_array["post_id"];
		$this->model->single("example_post_datatable", array("id" => $post_id, "status" => 1));
		$this->model->pagenation("framework_comment_datatable", array("post_id" => $post_id, "status" => 1));
		include("extra/apps/helper/watch_helper_function.php");
		$this->view->indexPage($page);
	}
	public function __destruct(){}
}
?>