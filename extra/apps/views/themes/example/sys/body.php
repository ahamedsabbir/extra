<?php
include(theme_class::sys("alert"));
include(theme_class::inc("models"));
$xml = simplexml_load_file($content);
foreach($xml->content as $content){
	if($content["status"] == true){
		$xml_banner_name = vendor_code_class::base64url_decode($content->banner_name);
		$xml_banner_details = vendor_code_class::base64url_decode($content->banner_details);
		$xml_banner_button = vendor_code_class::base64url_decode($content->banner_button);
		$xml_banner_link = vendor_code_class::base64url_decode($content->banner_link);
		include(theme_class::sys("page"));
	}
}
include(theme_class::sys("plugins"));
?>