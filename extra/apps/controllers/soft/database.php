<?php
class database extends soft_database_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "database";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	/*public function page_function($page, $array_key = false, $array_value = false){
      	$database = simplexml_load_file("extra/resources/xml/database.xml");
		foreach($database->database as $database){
			$mysqli = new mysqli($database->db_host, $database->db_user, $database->db_password, $database->db_name);
			if($mysqli -> connect_errno OR $database->setup == 0){
				$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array, $this->read_data_array, $page);
            }else{
            	header(address_class::header_page("backend", "index_page_function", "index"));
            }
        }
	}
  	public function setup_database_function($page, $array_key = false, $array_value = false){
      	if(isset($_POST["submit"]) AND $_POST["product_id"] == config_class::PRODUCT_ID){
          $xml = simplexml_load_file("extra/resources/xml/database.xml");
          $db_name = $_POST['db_name'];
          $db_host = $_POST['db_host'];
          $db_user = $_POST['db_user'];
          $db_password = $_POST['db_password'];
          foreach($xml->database as $database){
              if($database["id"]==1 AND $database["type"] == "online"){
                  $database->db_host = $db_host;
                  $database->db_name = $db_name;
                  $database->db_user = $db_user;
                  $database->db_password = $db_password;
                  $database->setup = 1;
                  break;
              }
          }
          echo file_put_contents("extra/resources/xml/database.xml",$xml->asXML());
          header(address_class::header_page("backend", "index_page_function", "index"));
}
	}*/
	public function file_backup($page = null){
		$root_urlPath = realpath("extra/resources");
		$zip = new ZipArchive();
		$zip->open("extra/storage/backup/filebackup_".date('mdy').'.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);
		$files = new RecursiveIteratorIterator(
			new RecursiveDirectoryIterator($root_urlPath),
			RecursiveIteratorIterator::LEAVES_ONLY
		);
		foreach ($files as $name => $file)
		{
			if (!$file->isDir())
			{
				$filePath = $file->getRealPath();
				$relativePath = substr($filePath, strlen($root_urlPath) + 1);
				$zip->addFile($filePath, $relativePath);
			}
		}
		$zip->close();
		header("location:".BASE_URL."database/index_page_function/".$page);
	}
	public function __destruct(){}
}
?>