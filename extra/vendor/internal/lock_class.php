<?php
class lock_class{
	public function __construct(){}
	public static function lock_function($bolian){
		if($bolian == true){
			header(address_class::header_page('security', 'index_page_function', 'lock'));
			exit();
		}
	}
}
?>