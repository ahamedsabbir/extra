<?php
/*
# like
# unlike
# watch
# comment
*/
$watch_link = address_class::request_method($theme_class."_watch_class", 'index_page_function', 'watch');
$most_watch_link = address_class::request_method($theme_class."_reach_class", 'most_watch_function', 'loop');
$watched_count = isset($post_datatable_value["watched"]) ? $post_datatable_value["watched"] : vendor_reach_class::watch_count_function($framework_watch_datatable, $post_id)+1;

$like_link = address_class::request_method($theme_class."_reach_class", 'like_submit_function', 'single', array("post_id"), array($id), "&post_id=$id");
$most_like_link = address_class::request_method($theme_class, 'most_liked_function', 'loop');
$liked_count = isset($post_datatable_value["liked"]) ? $post_datatable_value["liked"] : vendor_reach_class::like_count_function($framework_reach_datatable, $id);
if(isset($framework_reach_datatable) AND $framework_reach_datatable != null){
	foreach($framework_reach_datatable as $framework_reach_datatable_key => $framework_reach_datatable_value){
		if($framework_reach_datatable_value["post_id"] == $id AND $framework_reach_datatable_value["user_id"] == cookie_class::get('user_id') AND $framework_reach_datatable_value["status"] == 1){
			$like_link = address_class::request_method($theme_class, 'delete_reach_function', 'single', array("post_id"), array($id), "&post_id=$id");
			$liked = true;
			$like_icon = "<i class='fa-solid fa-thumbs-up'></i>";
		}else{
			$like_icon = "<i class='fa-regular fa-thumbs-up'></i>";
		}
	}
}
$unlike_link = address_class::request_method($theme_class."_reach_class", 'unlike_submit_function', 'single', array("post_id"), array($id), "&post_id=$id");
$most_unlike_link = address_class::request_method($theme_class, 'most_unlike_function', 'loop');
$unliked_count = isset($post_datatable_value["unliked"]) ? $post_datatable_value["unliked"] : vendor_reach_class::like_count_function($framework_reach_datatable, $id);
if(isset($framework_reach_datatable) AND $framework_reach_datatable != null){
	foreach($framework_reach_datatable as $framework_reach_datatable_key => $framework_reach_datatable_value){
		if($framework_reach_datatable_value["post_id"] == $post_id AND $framework_reach_datatable_value["user_id"] == cookie_class::get('user_id') AND $framework_reach_datatable_value["status"] == 0){
			$unlike_link = address_class::request_method($theme_class, 'delete_reach_function', 'single', array("post_id"), array($id), "&post_id=$id");
			$unliked = true;
			$unlike_icon = "<i class='fa-solid fa-thumbs-up'></i>";
		}else{
			$unlike_icon = "<i class='fa-regular fa-thumbs-up'></i>";
		}
	}
}
$comment_count = isset($post_datatable_value["commented"]) ? $post_datatable_value["commented"] : vendor_reach_class::like_count_function($framework_comment_datatable, $id);
$reply_count = isset($post_datatable_value["replied"]) ? $post_datatable_value["replied"] : vendor_reach_class::like_count_function($framework_reply_datatable, $id);
?>