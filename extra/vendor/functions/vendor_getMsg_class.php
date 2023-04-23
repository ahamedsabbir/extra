<?php
class vendor_getMsg_class{
	public static function set($data){
		$data = vendor_code_class::base64url_encode($data);
		return "&msg=".$data;
	}
	public static function get(){
		if(isset($_GET["msg"])){
			$data = vendor_code_class::base64url_decode($_GET["msg"]);
$models = <<<TEXT
<script>
	alert('$data');
</script>
TEXT;
			return $models;
		}
	}
}