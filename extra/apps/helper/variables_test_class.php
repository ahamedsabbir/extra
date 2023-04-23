<?php
namespace extra\apps\helper;
class variables_test_class{
	public function __construct(){
		$this->loop_function($_SESSION);
		//$this->loop_function($_COOKIE);
		//$this->loop_function($_ENV);
		//$this->loop_function($_SERVER);
		//$this->loop_function($_POST);
		//$this->loop_function($_GET);
		//$this->loop_function($_FILES);
		//$this->loop_function($GLOBALS);
		//$this->jsonTest();
	}
	public function loop_function($array){
		echo "<pre>";
		print_r($array);
		echo "</pre>";
	}
	public function envTest(){
		//echo getenv('USERNAMES');
		//echo $_ENV["USERNAMES"];
	}
	public function jsonTest(){
		$jsonData = file_get_contents('extra/resources/json/info.json');
		$jsonData = json_decode($jsonData); 
		$this->loop_function($jsonData);
		/*foreach($jsonData as $json_key => $json_value){
			echo $json_value->summary;
			foreach($json_value->social as $social_key => $social_value){
				echo $social_value;
			}
		}*/
	}
	public function __destruct(){}
}
?>