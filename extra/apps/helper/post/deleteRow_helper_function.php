<?php
$file_select_array = array("img", "file", "image", "photo", "thumnell", "thumbnail");
$loadClass = isset($this->get_data_array["class"]) ? $this->get_data_array["class"] : __CLASS__;
$loadFunction = isset($this->get_data_array["function"]) ? $this->get_data_array["function"] : "index_page_function";
$loadPage = isset($this->get_data_array["page"]) ? $this->get_data_array["page"] : $page;
if($post_id != null){
	$this->get_data_array[$delete_datatable] = $this->model_array["select_db_class"]->select_db_function($delete_datatable, $select_by_array);	
	if(!empty($this->get_data_array[$delete_datatable])){
		foreach($file_select_array as $file_select_key => $file_select_value){
			$make_file_string = $this->get_data_array[$delete_datatable][0][$file_select_value];
			$make_file_array = explode(", ", $make_file_string);
			foreach($make_file_array as $file_key => $file_value){
				if(file_exists($file_value)){
					unlink($file_value);
				}
			}
		}
		$delete = $this->model_array["delete_db_class"]->delete_db_function($delete_datatable, $delete_by_array);
		if($delete == true){
			if(!empty($another_datatable_array)){
				foreach($another_datatable_array as $another_datatable_key => $another_datatable_value){
					$this->model_array["delete_db_class"]->delete_db_function($another_datatable_value, array("post_id" => $post_id, "datatable" => $delete_datatable));
				}
			}
			$msg = vendor_getMsg_class::set("Post ID Not Found......");
			header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
		}else{
			$msg = vendor_getMsg_class::set("Post ID Not Found......");
			header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
		}
	}else{
		$msg = vendor_getMsg_class::set("Post ID Not Found......");
		header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
	}
}else{
	$msg = vendor_getMsg_class::set("Post ID Not Found......");
	header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
}
?>