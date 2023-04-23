<?php
$GLOBALS['post_id'] = $post_id = $id = $post_datatable_value["id"];
$admin = $post_datatable_value["admin"];
if(isset($framework_admin_datatable) AND $framework_admin_datatable != null){
	foreach($framework_admin_datatable as $framework_admin_key => $framework_admin_value){
		if($framework_admin_value["id"] == $admin){
			$admin_name = $framework_admin_value["name"];
		}
	}
}else{
	$admin_name = "none";
}
$user = $post_datatable_value["user"];
if(isset($framework_user_datatable) AND $framework_user_datatable != null){
	foreach($framework_user_datatable as $framework_user_key => $framework_user_value){
		if($framework_user_value["id"] == $user){
			$user_name = $framework_user_value["user"];
		}
	}
}else{
	$user_name = "none";
}
$category = $post_datatable_value["category"];
if(isset($framework_category_datatable) AND $framework_category_datatable != null){
	foreach($framework_category_datatable as $framework_category_key => $framework_category_value){
		if($framework_category_value["id"] == $category){
			$category_name = $framework_category_value["name"];
		}
	}
}else{
	$category_name = "none";
}
$title = $post_datatable_value["title"];
$keywords = $post_datatable_value["keywords"];
$keywords_array = explode(", ", $keywords);
$keywords_string = "";
foreach($keywords_array as $keywords_key => $keywords_value){
	$keywords_string .= "<a href='".BASE_URL."$theme_class/search_page_function/loop/&search=$keywords_value'>#$keywords_value</a> || ";
}
$keywords_string = rtrim($keywords_string, " || ");
$thumbnail = $post_datatable_value["thumbnail"];
include(theme_class::helper("reach_helper_code"));
include(theme_class::helper("favorite_helper_code"));
include(theme_class::helper("cart_helper_code"));
$created = vendor_date_class::banglaDate(vendor_date_class::natural($post_datatable_value["created"]));
$description = vendor_string_class::remove_tag($post_datatable_value["description"]);
$description_short = vendor_string_class::text_shorten(vendor_string_class::remove_tag($post_datatable_value["description"]));

$category_link = address_class::request_method($theme_class, 'category_page_function', 'loop', array("category_id"), array($category), "&category_id=$category");
$admin_link = address_class::request_method($theme_class, 'admin_page_function', 'loop', array("admin_id"), array($admin), "&admin_id=$admin");
$user_link = address_class::request_method($theme_class, 'user_page_function', 'loop', array("user_id"), array($user), "&user_id=$user");
$single_link = address_class::request_method($theme_class, 'single_page_function', 'single', array("post_id"), array($id), "&post_id=$id");
$delete_link = address_class::request_method($theme_class, 'delete_page_function', 'single', array("post_id"), array($id), "&post_id=$id");
$update_link = address_class::request_method($theme_class, 'update_page_function', 'single', array("post_id"), array($id), "&post_id=$id");
$search_link = BASE_URL."$theme_class/search_page_function/loop/&search=";

?>