<?php
$favorite_icon = "";
$favorite_link = address_class::request_method($theme_class."_favorite_class", 'index_page_function', 'favorite');
$favorite_action_link = address_class::request_method($theme_class."_favorite_class", 'favorite_insert_function', 'favorite', array("post_id"), array($id), "&post_id=$id");
if(isset($framework_favorite_datatable)){
	foreach($framework_favorite_datatable as $framework_favorite_datatable_key => $framework_favorite_datatable_value){
		if($framework_favorite_datatable_value["post_id"] == $post_id AND $framework_favorite_datatable_value["cookie_id"] == cookie_class::id()){
			$favorite_action_link = address_class::request_method($theme_class."_favorite_class", 'favorite_delete_function', 'favorite', array("post_id"), array($id), "&post_id=$id");
			$favorite = true;
		}
	}
}
if(isset($favorite) and $favorite == true){
	$favorite_icon = "<i class='fa-solid fa-minus'></i>";
}else{
	$favorite_icon = "<i class='fa-solid fa-plus'></i>";
}
?>