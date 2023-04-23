<?php
$cart_icon = "";
$cart_link = address_class::request_method($theme_class."_cart_class", 'index_page_function', 'cart');
$cart_action_link = address_class::request_method($theme_class."_cart_class", 'cart_insert_function', 'cart', array("post_id"), array($id), "&post_id=$id");
if(isset($framework_cart_datatable)){
	foreach($framework_cart_datatable as $framework_cart_datatable_key => $framework_cart_datatable_value){
		if($framework_cart_datatable_value["post_id"] == $post_id AND $framework_cart_datatable_value["cookie_id"] == cookie_class::id()){
			$cart_action_link = address_class::request_method($theme_class."_cart_class", 'cart_delete_function', 'cart', array("post_id"), array($id), "&post_id=$id");
			$cart = true;
		}
	}
}
if(isset($cart) and $cart == true){
	$cart_icon = "<i class='fa-solid fa-minus'></i>";
}else{
	$cart_icon = "<i class='fa-solid fa-plus'></i>";
}
?>