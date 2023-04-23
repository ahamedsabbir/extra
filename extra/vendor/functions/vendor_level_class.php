<?php
class vendor_level_class{
	public static function category_function($framework_category_datatable, $post_id){
		if($framework_category_datatable != null){
			foreach($framework_category_datatable as $framework_category_datatable_key=>$framework_category_datatable_value){
				if($framework_category_datatable_value["id"] == $post_id){
					return $framework_category_datatable_value["name"];
				}
			}
		}
	}
	public static function pricing_function($framework_level_datatable, $level_id){
		if($framework_level_datatable != null){
			foreach($framework_level_datatable as $framework_level_datatable_key=>$framework_level_datatable_value){
				if($framework_level_datatable_value["sn"] == $level_id AND $framework_level_datatable_value["datatable"] == "framework_pricing_datatable"){
					return $framework_level_datatable_value["level"];
				}
			}
		}
	}
}