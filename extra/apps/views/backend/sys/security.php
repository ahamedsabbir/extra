<?php
$framework_block_datatable = controller::$staticData->getAll("framework_block_datatable", array("status" => 1));
if($framework_block_datatable != null){
	foreach($framework_block_datatable as $framework_block_key => $framework_block_value){
		$ip = $_SERVER['REMOTE_ADDR'];
		if($framework_block_value["ip"] == $ip AND $framework_block_value["block"] == true){
			header(address_class::header_page('security', 'index_page_function', 'block'));
			exit();
		}
	}
}
if($framework_admin_datatable != null){
	foreach($framework_admin_datatable as $framework_admin_key => $framework_admin_value){
		if(session_class::get("admin_id") != null){
			if($framework_admin_value["id"] == session_class::get("admin_id") AND $framework_admin_value["block"] == 1){
				header(address_class::header_page('security', 'index_page_function', 'block'));
				exit();
			}
		}
	}
}
if(session_class::get("admin_login") != true){
    header(address_class::header_page('admin_crowd_class', 'index_page_function', 'sign-out'));
	exit();
}
?>