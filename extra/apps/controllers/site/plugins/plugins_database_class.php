<?php
class plugins_database_class extends plugins_controller_class{
	public function __construct(){	
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "database";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "database";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->get_data_array['database'] = simplexml_load_file("extra/resources/xml/database.xml");
		$this->get_data_array['datatable'] = simplexml_load_file("extra/resources/xml/datatable.xml");
		foreach($this->get_data_array['datatable'] as $datatable_key => $datatable_value){
			if($datatable_value["status"] == 1){
				$datatable_name = $datatable_value["name"];
				$this->get_data_array["{$datatable_name}"] = $this->model_array["select_db_class"]->select_db_function("{$datatable_name}");
			}
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function datatable_sql_function($page = null, $array_key = false, $array_value = false){
		if(isset($_REQUEST["sql"])){
			$this->model_array['query_db_class']->query_db_function($_REQUEST["sql"]);
		}
		//header("location:".BASE_URL."plugins_database_class/index_page_function/database/");
		address_class::back();
	}
	public function datatable_update_function($page){
		if(isset($_REQUEST["submit"])){
			$xml = simplexml_load_file("extra/resources/xml/datatable.xml");
			foreach($xml->datatable as $datatable){
				if($datatable["name"] == $_REQUEST["submit"]){
					$datatable["status"]= 1;
					$datatable["name"] = $_REQUEST["submit"];
					$datatable->sql = $_REQUEST["sql"];
					break;
				}
			}
			file_put_contents("extra/resources/xml/datatable.xml",$xml->asXML());
		}	
	}
	public function datatable_query_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		if(isset($_GET["sql"])){
			echo $_GET["sql"];
			$this->model_array['query_db_class']->query_db_function($_GET["sql"]);
		}
	}
	public function database_update_function($page = null, $array_key = false, $array_value = false){
	   	$xml = simplexml_load_file("extra/resources/xml/database.xml");
       	$db_name = $_POST['db_name'];
       	$db_host = $_POST['db_host'];
       	$db_user = $_POST['db_user'];
       	$db_password = $_POST['db_password'];
		foreach($xml->database as $database){
			if($database["id"]=="backend"){
				$database->db_host = $db_host;
				$database->db_name = $db_name;
				$database->db_user = $db_user;
				$database->db_password = $db_password;
				break;
			}
		}
		file_put_contents("extra/resources/xml/database.xml",$xml->asXML());
		//header("location:".BASE_URL."database_controller_class");
	}
	public function datatable_submit_function($page = null, $array_key = false, $array_value = false){
		$xml = simplexml_load_file("extra/resources/xml/datatable.xml");
		$datatable=$xml->addChild("datatable");
		$datatable->addAttribute('status', 0);
		$datatable->addAttribute('name', $_POST["name"]);
		$datatable->addChild("sql", $_POST["sql"]);
		file_put_contents("extra/resources/xml/datatable.xml",$xml->asXML());
	}
	public function datatable_insert_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		$xml = simplexml_load_file("extra/resources/xml/datatable.xml");
		foreach($xml->datatable as $datatable){
			if($datatable["name"] == $_REQUEST["datatable"]){
				$datatable["status"]= 1;
				break;
			}
		}
		file_put_contents("extra/resources/xml/datatable.xml",$xml->asXML());
		if(isset($_GET["sql"])){
			echo $_GET["sql"];
			$this->model_array['query_db_class']->query_db_function($_GET["sql"]);
		}
	}
	public function datatable_delete_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		$xml = simplexml_load_file("extra/resources/xml/datatable.xml");
		foreach($xml->datatable as $datatable){
			if($datatable["name"] == $_REQUEST["datatable"]){
				$datatable["status"]= 0;
				break;
			}
		}
		file_put_contents("extra/resources/xml/datatable.xml",$xml->asXML());
		if(isset($_GET["sql"])){
			echo $_GET["sql"];
			$this->model_array['query_db_class']->query_db_function($_GET["sql"]);
		}
	}
	public function database_getalltables_function($page = null, $array_key = false, $array_value = false){
		$sql = "SHOW TABLES";
		$tables = $this->model_array['query_db_class']->query_db_function($sql);
		print_r($tables);
		//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function database_backup_function($page = null, $array_key = false, $array_value = false){
		$table_name = "framework_admin_datatable";
		$backup_file  = "/tmp/framework_admin_datatable.sql";
		$sql = "SELECT * INTO OUTFILE '/tmp/framework_admin_datatable.sql' FROM framework_admin_datatable";
		$this->model_array['query_db_class']->query_db_function($sql);
		address_class::reload_page();
	}
	public function backup_function($page = null, $array_key = false, $array_value = false){
		$table_name = "framework_admin_datatable";
		$backup_file  = "/tmp/framework_admin_datatable.sql";
		//$sql = "SELECT * INTO OUTFILE '$backup_file' FROM $table_name";
		$sql = "SHOW TABLES";
		$tables = $this->model_array['query_db_class']->query_db_function($sql);
		print_r($tables);
		//address_class::reload_page();
	}
	public function __destruct(){}
}
?>