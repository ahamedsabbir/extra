<?php
class vendor_category_class{
	public static function category_function($framework_category_datatable, $post_id){
		if($framework_category_datatable != null){
			foreach($framework_category_datatable as $framework_category_datatable_key=>$framework_category_datatable_value){
				if($framework_category_datatable_value["id"] == $post_id){
					return $framework_category_datatable_value["name"];
				}
			}
		}
	}	public static function category_count_function($post_datatable, $cat_id){
		if($post_datatable){
			$count = 0;
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($post_datatable_value['category_id'] == $cat_id){
					$count++;
				}
			}
			return $count;
		}
	}
	public static function group_count_function($post_datatable, $cat_id){
		if($post_datatable){
			$count = 0;
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($post_datatable_value['group_id'] == $cat_id){
					$count++;
				}
			}
			return $count;
		}
	}
	public static function list_count_function($post_datatable, $cat_id){
		if($post_datatable){
			$count = 0;
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($post_datatable_value['list_id'] == $cat_id){
					$count++;
				}
			}
			return $count;
		}
	}
}