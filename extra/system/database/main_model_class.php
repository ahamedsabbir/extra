<?php
class main_model_class{
	public $db_host;
	public $db_name;
	public $db_user;
	public $db_password;
	protected $db_array = array();
	public function __construct(){
		$xml = simplexml_load_file("extra/resources/xml/database.xml");
		foreach($xml->database as $database){
			if($database["id"] == 1 AND $database["type"] == "online"){
				$db_host = $database->db_host;
				$db_name  = $database->db_name;
				$db_user  = $database->db_user;
				$db_password  = $database->db_password;
				$this->db_host = "$db_host";
				$this->db_name  = "$db_name;charset=utf8";
				$this->db_user  = "$db_user";
				$this->db_password  = "$db_password";
				$dsn = 'mysql:dbname='.$this->db_name.';host='.$this->db_host;
				$user_name = $this->db_user;
				$password = $this->db_password;
				try{
					$pdo = $this->db_array = new database_class($dsn, $user_name, $password);
					$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
					$pdo->getAttribute(constant("PDO::ATTR_CONNECTION_STATUS"));
					//echo "connection done";
				}catch(PDOException $e){
					//die("ERROR: Could not connect. " . $e->getMessage());
					header("Location:".SOFT."errors/index_page_function/index/", TRUE, 301);
				}
				break;
			}
		}
	}
	/*public function __get($property){
		report_class::$report_array['$property'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }
	public function __set($property, $value){
		report_class::$report_array['$property and $value'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }
	public function __call($method, $praneter){
		report_class::$report_array['$method and $praneter'] = " not exist.";
		header("location:".BASE_URL."publish_404_class/");
    }*/
	public function __destruct(){
		unset($this->db_array);
	}
}
















































































?>