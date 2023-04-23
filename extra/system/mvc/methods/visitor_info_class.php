<?php
class visitor_info_class{
	public $country;
	public $city;
	public $query;
	public $timezone;
	public $ip; 
	public $browser;
	public $env_user;
	public function __construct(){
		$connected = @fsockopen('www.yahoo.com', 80);
		if($connected){
			$visitor_info =  true ? @unserialize(file_get_contents('http://ip-api.com/php/')) : null;
			if(!empty($visitor_info)){
			$this->country = isset($visitor_info["country"]) ? $visitor_info["country"] : "ofline";
			$this->city = isset($visitor_info["city"]) ? $visitor_info["city"] : "ofline";
			$this->timezone = isset($visitor_info["timezone"]) ? $visitor_info["timezone"] : "ofline";
			//$this->ip = isset($visitor_info["query"]) ? $visitor_info["query"] : "ofline";
			$this->ip = $_SERVER['REMOTE_ADDR'];
			$this->browser = "new";
			$this->env_user = isset($_ENV['username']) ? $_ENV['username'] : "visitor";
			}else{
				$this->country = "ofline";
				$this->city = "ofline";
				$this->timezone = "ofline";
				//$this->ip = "ofline";
				$this->ip = $_SERVER['REMOTE_ADDR'];
				$this->browser = "ofline";
				$this->env_user = "ofline";
			}
		}else{
			$this->country = "ofline";
			$this->city = "ofline";
			$this->timezone = "ofline";
			//$this->ip = "ofline";
			$this->ip = $_SERVER['REMOTE_ADDR'];
			$this->browser = "ofline";
			$this->env_user = "ofline";
		}	
	}
}
?>
