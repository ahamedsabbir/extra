<?php
class session_class{
    public function __construct(){
		$this::init();
		$fullLink = $_SERVER["REQUEST_SCHEME"]."://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
		$this::set('fullLink', $fullLink);
	}
    public static function init(){
        session_start();
    }
	public static function id(){
		return session_id();
    }
    public static function set($key, $value = false){
      	if(gettype($key) == "array"){
          foreach($key as $skey => $vkey){
          	$_SESSION[$skey] = $vkey;
          }
        }else{
        	$_SESSION[$key] = $value;
        }
    }
    public static function get($key){
        if(isset($_SESSION[$key])){
            return $_SESSION[$key];
        }else{
            return false;
        }
    }
	public static function ontime($key){
        if(isset($_SESSION[$key])){
            $variable = $_SESSION[$key];
			$_SESSION[$key] = null;
        }else{
			$variable = null;
		}
		return $variable;
    }
    public static function session_check($class, $function, $page){
        if(self::get("admin_login") != true){
            self::destroy($class, $function, $page);
        }
    }
    public static function login_check($class, $function, $page){
		if(self::get("admin_login") == true){
			header(address_class::header_page($class, $function, $page));
        }
    }
    public static function destroy($class, $function, $page){
		session_destroy();
		header(address_class::header_page($class, $function, $page));
		exit();
    }
}
?>

