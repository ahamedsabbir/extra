<?php
$GLOBALS['theme_name'] = $theme_name;
$GLOBALS['theme_class'] = "theme_".$theme_name;
$GLOBALS['framework_user_datatable'] = $framework_user_datatable;
$GLOBALS['framework_admin_datatable'] = $framework_admin_datatable;
$GLOBALS['framework_category_datatable'] = $framework_category_datatable;
$GLOBALS['framework_reach_datatable'] = $framework_reach_datatable;
$GLOBALS['framework_comment_datatable'] = $framework_comment_datatable;
$GLOBALS['framework_reply_datatable'] = $framework_reply_datatable;
$GLOBALS['framework_favorite_datatable'] = $framework_favorite_datatable;
$GLOBALS['framework_cart_datatable'] = $framework_cart_datatable;
$GLOBALS['framework_watch_datatable'] = $framework_watch_datatable;
$page_link = "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
$code_page_link = vendor_code_class::base64url_encode($page_link);
$send_page_link = "page_url=$code_page_link";
if(!empty($theme_datatable)){
	foreach($theme_datatable as $theme_datatable_key => $theme_datatable_value){
		$address = $theme_datatable_value["address"];
		$email = $theme_datatable_value["email"];
		$facebook = $theme_datatable_value["facebook"];
		$twitter = $theme_datatable_value["twitter"];
		$instagram = $theme_datatable_value["instagram"];
		$linkedin = $theme_datatable_value["linkedin"];
		$youtube = $theme_datatable_value["youtube"];
	}
}
?>