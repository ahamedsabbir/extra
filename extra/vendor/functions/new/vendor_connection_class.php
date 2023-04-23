<?php
class vendor_connection_class{
	public static function internet_connection_chack(){
		$connected = @fsockopen("www.google.com", 80); 
        //website, port  (try 80 or 443)
		if ($connected){
			$is_conn = true; //action when connected
			fclose($connected);
		}else{
			$is_conn = false; //action in connection failure
		}
		return $is_conn;
	}
}
?>