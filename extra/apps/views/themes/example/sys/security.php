<?php
if($framework_block_datatable != null){
	foreach($framework_block_datatable as $framework_block_key => $framework_block_value){
		$ip = $_SERVER['REMOTE_ADDR'];
		if($framework_block_value["ip"] == $ip AND $framework_block_value["block"] == true){
			header(address_class::header_page('security', 'index_page_function', 'block'));
			exit();
		}
	}
}
if($framework_user_datatable != null){
	foreach($framework_user_datatable as $framework_user_key => $framework_user_value){
		if(cookie_class::get("user_id") != null){
			if($framework_user_value["id"] == cookie_class::get("user_id") AND $framework_user_value["block"] == 1){
				header(address_class::header_page('security', 'index_page_function', 'block'));
				exit();
			}
		}
	}
}
$theme = simplexml_load_file("extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml");
foreach($theme->theme as $theme){
  if($theme["id"] == 1 AND $theme["status"] == 1 AND $theme["name"] == $theme_name){
    if($theme->maintenance == 1){
    	header(address_class::header_page('security', 'index_page_function', 'break'));
		exit();
    }
  }
}
?>