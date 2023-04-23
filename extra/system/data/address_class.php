<?php
class address_class{
	public function __construct(){}
	public static function address_function($class, $function = false, $page = false, $array_key = false, $array_value = false, $request = false){
		$function = $function == true ? $function : "index_page_function";
		$page = $page == true ? $page : "index";
		if($array_key != null){
			$array_key = vendor_code_class::argu_encode($array_key);
			if($array_value != null){
				$array_value = vendor_code_class::argu_encode($array_value);
				$result = BASE_URL.$class.'/'.$function.'/'.$page.'/'.$array_key.'/'.$array_value.'/';
			}else{
				$result = BASE_URL.$class.'/'.$function.'/'.$page.'/'.$array_key.'/';
			}
		}else{
			$result = BASE_URL.$class.'/'.$function.'/'.$page.'/';
		}
		return $result.$request;
	}
    public static function request_method($class, $function = false, $page = false, $array_key = false, $array_value = false, $request = false){
		$function = $function == true ? $function : "index_page_function";
		$page = $page == true ? $page : "index";
		if($array_key != null){
			$array_key = vendor_code_class::argu_encode($array_key);
			if($array_value != null){
				$array_value = vendor_code_class::argu_encode($array_value);
				$result = BASE_URL.$class.'/'.$function.'/'.$page.'/'.$array_key.'/'.$array_value.'/';
			}else{
				$result = BASE_URL.$class.'/'.$function.'/'.$page.'/'.$array_key.'/';
			}
		}else{
			$result = BASE_URL.$class.'/'.$function.'/'.$page.'/';
		}
		return $result.$request;
	}
    public static function header_page($class, $function = false, $page = false, $text = false){
		$function = $function == true ? $function : "index_page_function";
		$page = $page == true ? $page : "index";
		return "Location:".BASE_URL.$class."/".$function."/".$page."/".$text;
	}
	public static function reload_page($string = false){
      	if(isset($_SERVER['REQUEST_METHOD'])){
        	$super_variable = $_SERVER["REQUEST_SCHEME"]."://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
        }else{
        	$super_variable = $this->header_page('security', 'index_page_function', '404');
        }
		if($string == true){
			header("Location:$super_variable"."$string", TRUE, 301);
		}else{
			header("Location:$super_variable", TRUE, 301);
		}	
	}
	public static function reload($string = false){
      	if(isset($_SERVER['REQUEST_METHOD'])){
        	$super_variable = $_SERVER["REQUEST_SCHEME"]."://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
        }else{
        	$super_variable = $this->header_page('security', 'index_page_function', '404');
        }
		if($string == true){
			header("Location:$super_variable"."$string", TRUE, 301);
		}else{
			header("Location:$super_variable", TRUE, 301);
		}	
	}
	public static function back($string = false){
		$data = vendor_code_class::base64url_decode($_REQUEST["page_url"]);
		if($string == true){
			header("Location:$data"."$string", TRUE, 301);
		}else{
			header("Location:$data", TRUE, 301);
		}
	}
	public static function load_web_page($site){
		header("Location:$site", TRUE, 301);	
	}
}
?>