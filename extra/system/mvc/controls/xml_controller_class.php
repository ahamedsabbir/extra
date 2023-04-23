<?php
class xml_controller_class extends controller{
	protected $XMLDB_load_object_arrays = array();
	protected $method_load_object_arrays = array();
	protected $view_load_object_arrays = array();
	public static $static_XMLDB_array = array();
	public static $static_model_array = array();
  	public $XMLDB_array = array();
	public $method_array = array();
	public static $static_method_array = array();
	public $get_data_array = array();
  	public $read_data_array = array();
  	public $insert_data_array = array();
  	public $update_data_array = array();
  	public $soft_name;
	public $post_datatable;
	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public $pageno;
	public function __construct(){
		parent::__construct();
      	session_class::set(array("soft_name" => $this->soft_name, "post_datatable" => $this->post_datatable));
      	new soft_class($this->soft_name);
		$this->XMLDB_load_object_arrays = new XMLDB_load_class();
		$this->method_load_object_arrays = new method_load_class();
		$this->view_load_object_arrays = new view_load_class();
		$XMLDB_file_list = glob("extra/apps/XMLDB/*.php");
		foreach($XMLDB_file_list as $XMLDB_name){
			$XMLDB_name = str_replace(".php", "", $XMLDB_name);
			$XMLDB_name = str_replace("extra/apps/XMLDB/", "", $XMLDB_name);
			self::$static_XMLDB_array[$XMLDB_name] = $this->XMLDB_array[$XMLDB_name] = $this->XMLDB_load_object_arrays->XMLDB_load_functions($XMLDB_name);
		}
		$method_file_list = glob("extra/system/mvc/methods/*.php");
		foreach($method_file_list as $method_name){
			$method_name = str_replace(".php", "", $method_name);
			$method_name = str_replace("extra/system/mvc/methods/", "", $method_name);
			self::$static_method_array[$method_name] = $this->method_array[$method_name] = $this->method_load_object_arrays->method_load_functions($method_name);
		}
		include("extra/apps/helper.php");
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