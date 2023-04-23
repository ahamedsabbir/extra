<?php
class mysql_controller_class extends controller{
	protected $model_load_object_arrays = array();
	protected $method_load_object_arrays = array();
	protected $view_load_object_arrays = array();
	public $model_array = array();
	public static $static_model_array = array();
	public $method_array = array();
	public static $static_method_array = array();
	public $theme_name;
	public $theme_datatable;
	public $post_datatable;
	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public $pageno;
	public $argument_array = array();
	public $get_data_array = array();
  	public $read_data_array = array();
  	public $insert_data_array = array();
  	public $update_data_array = array();
	public function __construct(){
		parent::__construct();
      	if(session_class::get("theme_name") != $this->theme_name AND session_class::get("post_datatable") != $this->post_datatable){
        	session_class::set(array("theme_name" => $this->theme_name, "post_datatable" => $this->post_datatable));
        }
      	new theme_class($this->theme_name);
		$this->model_load_object_arrays = new model_load_class();
		$this->method_load_object_arrays = new method_load_class();
		$this->view_load_object_arrays = new view_load_class();
		$models_file_list = glob("extra/system/mvc/models/*.php");
		foreach($models_file_list as $model_name){
			$model_name = str_replace(".php", "", $model_name);
			$model_name = str_replace("extra/system/mvc/models/", "", $model_name);
			self::$static_model_array[$model_name] = $this->model_array[$model_name] = $this->model_load_object_arrays->model_load_functions($model_name);
		}
		$method_file_list = glob("extra/system/mvc/methods/*.php");
		foreach($method_file_list as $method_name){
			$method_name = str_replace(".php", "", $method_name);
			$method_name = str_replace("extra/system/mvc/methods/", "", $method_name);
			self::$static_method_array[$method_name] = $this->method_array[$method_name] = $this->method_load_object_arrays->method_load_functions($method_name);
		}
      	$this->pageno = isset($_REQUEST['pageno']) ? $_REQUEST['pageno'] : 1;
		include("extra/apps/helper.php");
    }
  	public static function project_function(){
		$result = self::$static_model_array['select_db_class']->select_db_function("framework_project_datatable", array("status" => 1));
		return $result;
	}
  	public static function notification_function($datatable, $type, $subject, $title, $description, $link, $font_icon){
		$insert_data_array = array(
			"datatable" => $datatable,
          	"type" => $type,
          	"user" => 0,
          	"admin" => 0,
			"subject" => $subject,
			"title" => $title,
			"description" => $description,
			"link" => $link,
          	"icon" => "empty",
			"font_icon" => $font_icon
		);
		self::$static_model_array['insert_db_class']->insert_db_function("framework_notification_datatable", $insert_data_array);
	}
	public function __get($property){
		$ip = $this->method_array['visitor_info_class']->ip;
		$browser = $this->method_array['visitor_info_class']->browser;
		$country = $this->method_array['visitor_info_class']->country;
		$city = $this->method_array['visitor_info_class']->city;
		self::notification_function("framework_admin_datatable", "property", "title", "some one enter wrong property.", "IP = $ip; Browser = $browser; Country = $country; City = $city;", "#", "fa-solid fa-circle-exclamation");
		header(address_class::header_page('frontend', 'index_page_function', '404'));
    }
	public function __set($property, $value){
		$ip = $this->method_array['visitor_info_class']->ip;
		$browser = $this->method_array['visitor_info_class']->browser;
		$country = $this->method_array['visitor_info_class']->country;
		$city = $this->method_array['visitor_info_class']->city;
		self::notification_function("framework_admin_datatable", "property and value", "title", "some one enter wrong property and value.", "IP = $ip; Browser = $browser; Country = $country; City = $city;", "#", "fa-solid fa-circle-exclamation");
		header(address_class::header_page('frontend', 'index_page_function', '404'));
    }
	public function __call($method, $praneter){
		$ip = $this->method_array['visitor_info_class']->ip;
		$browser = $this->method_array['visitor_info_class']->browser;
		$country = $this->method_array['visitor_info_class']->country;
		$city = $this->method_array['visitor_info_class']->city;
		self::notification_function("framework_admin_datatable", "method And praneter", "title", "some one enter wrong method And praneter.", "IP = $ip; Browser = $browser; Country = $country; City = $city;", "#", "fa-solid fa-circle-exclamation");
		header(address_class::header_page('frontend', 'index_page_function', '404'));
    }
	public function __destruct(){}
}
?>

