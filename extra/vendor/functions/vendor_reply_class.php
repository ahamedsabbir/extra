<?php
class vendor_reply_class{	public static function reply_count($post_datatable, $cat_id){
		if($post_datatable){
			$count = 0;
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($post_datatable_value['comment_id'] == $cat_id){
					$count++;
				}
			}
			return $count;
		}
	}
}