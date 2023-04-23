<?php
class cookie_class{
    public function __construct(){}
	public static function id(){
		if(empty(self::get("id"))){
			$length = 30;
			$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$charactersLength = strlen($characters);
			$randomString = '';
			for ($i = 0; $i < $length; $i++) {
				$randomString .= $characters[random_int(0, $charactersLength - 1)];
			}
			self::set('id', $randomString);
		}
		return self::get("id");
    }
    public static function set($key,$value){
        setcookie($key, $value, time()+86400, "/");
    }
    public static function get($key){
        if(isset($_COOKIE[$key])){
            return $_COOKIE[$key];
        }else{
            return false;
        }
    }
    public static function cookie_check($class, $function, $page){
        if(self::get("user_login") != true){
            self::destroy($class, $function, $page);
        }
    }
    public static function login_check($class, $function, $page){
		if(self::get("user_login") == true){
			header(address_class::header_page($class, $function, $page));
        }
    }
	public static function remove($key){
        setcookie($key, null, time()-3600, "/");
    }
    public static function destroy($class, $function, $page){
        setcookie("id", false, time()-3600, "/");
        setcookie("user_login", false, time()-3600, "/");
        setcookie("user_id", null, time()-3600, "/");
        setcookie("user_status", null, time()-3600, "/");
        setcookie("user_photo", null, time()-3600, "/");
        setcookie("user_name", null, time()-3600, "/");
		header(address_class::header_page($class, $function, $page));
		exit();
    }
}
?>

