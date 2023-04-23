<?php
class theme_example_backend_class extends frontend_example_controller_class{
	public $type = "theme";
	public $app = "backend";
	public function __construct(){
		lock_class::lock_function(false);
		parent::__construct();
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = "example_post_datatable";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function index_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function loop_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["example_post_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("example_post_datatable", array("status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function recent_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["example_post_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("example_post_datatable", array("level" => 0, "status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function search_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["keyword"] = $keyword = isset($_POST['search']) ? $_POST['search'] : false;	
		$this->get_data_array["example_post_datatable"] = $this->model_array["search_db_class"]->search_select_db_function("example_post_datatable", array("title" => $keyword, "keywords" => $keyword), array("status" => 1), "ID ASC", $this->pageno);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function single_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : $this->get_data_array["post_id"];
		$this->model->simplePost("example_post_datatable", array("id" => $post_id, "status" => 1));
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function insert_post_function($page = "insert", $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$insert_datatable = isset($_GET['primary_datatable']) ? $_GET['primary_datatable'] : $this->primary_datatable;
		$data_chack_array = array("title" => parent::data_control("title"));
		$insert_data_array = array(
			"admin" => session_class::get("admin_id"),
			"user" => "empty",
			"status" => 1
		);
		$insert_data_array["liked"] = 0;
		$insert_data_array["unliked"] = 0;
		$insert_data_array["watched"] = 0;
		$insert_data_array["commented"] = 0;
		$insert_data_array["replied"] = 0;
		include("extra/apps/helper/post/insertRow_helper_function.php");
	}
	public function update_post_function($page = "insert", $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$update_datatable = isset($_GET['primary_datatable']) ? $_GET['primary_datatable'] : "example_post_datatable";
		$check_by_array = array("id" => $post_id, "admin" => session_class::get('admin_id'));
		$update_by_array = array("id" => $post_id);
		$update_data_array = array();
		include("extra/apps/helper/post/updateRow_helper_function.php");
	}
	public function delete_post_function($page = "insert", $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$delete_datatable = isset($_GET['primary_datatable']) ? $_GET['primary_datatable'] : "example_post_datatable";
		$select_by_array = array("id" => $post_id, "admin" => session_class::get('admin_id'));
		$another_datatable_array = array("framework_reach_datatable", "framework_watch_datatable", "framework_comment_datatable", "framework_reply_datatable");
		$delete_by_array = array("id" => $post_id);
		include("extra/apps/helper/post/deleteRow_helper_function.php");
	}
  	public function hide_page_function($page, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["example_post_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("example_post_datatable", array("status" => 0), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/backend/".$page), $this->get_data_array, $this->read_data_array, $page);
	}
	public function hide_post_function($page = "insert", $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$update = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("status" => 0), array("id" => $post_id));
		header(address_class::header_page(__CLASS__, "loop_page_function", $page));
	}
	public function unhide_post_function($page = "insert", $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		$this->get_data_array["post_id"] = $post_id = parent::data_control("post_id");
		$update = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("status" => 1), array("id" => $post_id));
		header(address_class::header_page(__CLASS__, "loop_page_function", $page));
	}
	public function __destruct(){}
}
?>