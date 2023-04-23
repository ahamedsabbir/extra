<?php
if($post_id != null){
	$this->get_data_array[$delete_datatable] = $this->model_array["select_db_class"]->select_db_function($delete_datatable, $select_by_array);
	if(!empty($this->get_data_array[$delete_datatable])){
		$file_string = $this->get_data_array[$delete_datatable][0]["$field"];
		$file_array = explode(", ", $file_string);
		if(in_array($post_file, $file_array)){
			unlink($post_file);
			unset($file_array, $post_file);
		}
		$file_string = implode(", ", $file_array);
		$file_string = trim($file_string , ", ");
		$update_data_array = array(
			"$field" => $file_string
		);
		$update = $this->model_array['update_db_class']->update_db_function($delete_datatable, $update_data_array, array("id" => $post_id));
		if($update == true){
			$msg = vendor_getMsg_class::set("delete successful.");
			header(address_class::header_page($success_class, $success_function, $success_page, $msg));
		}else{
			$msg = vendor_getMsg_class::set("File Not Delete Some Reason.");
			header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
		}
	}else{
		$msg = vendor_getMsg_class::set("File Not Exist In Database.");
		header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
	}
}else{
	$msg = vendor_getMsg_class::set("File Not Delete page id Reason.");
	header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
}
?>