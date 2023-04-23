<?php
$ignor_data_array = array('token', 'submit');
$loadClass = isset($this->get_data_array["class"]) ? $this->get_data_array["class"] : __CLASS__;
$loadFunction = isset($this->get_data_array["function"]) ? $this->get_data_array["function"] : "index_page_function";
$loadPage = isset($this->get_data_array["page"]) ? $this->get_data_array["page"] : $page;
#begin post ID validtion
if($post_id != null){
	#begin submit validtion
	if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "update"){
		$this->get_data_array[$update_datatable] = $this->model_array["select_db_class"]->select_db_function($update_datatable, $check_by_array);
		#begin data validtion
		if($this->get_data_array[$update_datatable] != null){
			if(!empty($_POST)){
				foreach($_POST as $post_key => $post_value){
					if(gettype($_POST[$post_key]) == "array"){
						$update_data_array[$post_key] = vendor_convert_class::array_to_string_function($_POST[$post_key], ", ");
					}else{
						$update_data_array[$post_key] = parent::data_control($post_key);
					}
				}
			}
			if(!empty($_FILES)){
				foreach($_FILES as $files_key => $files_value){
					if(gettype($_FILES[$files_key]["name"]) == "array"){
						$update_data_array[$files_key] = $this->method_array["file_upload_class"]->file_upload_function($files_key, $this->upload_file, $this->get_data_array[$update_datatable][0][$files_key]);
					}else{
						$update_data_array[$files_key] =  parent::file_control($files_key, settings_class::$file_extension, settings_class::$file_size, false, $this->get_data_array[$update_datatable][0][$files_key]);
					}
				}
			}
			if(isset($ignor_data_array)){
				foreach($ignor_data_array as $ignor_data_key){
					if(isset($update_data_array[$ignor_data_key])){
						unset($update_data_array[$ignor_data_key]);
					}
				}
			}
			if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit() AND $this->method_array["file_upload_class"]->submit()){
				$update = $this->model_array['update_db_class']->update_db_function($update_datatable, $update_data_array, $update_by_array);
				if($update == true){
					session_class::set("success", "data update");
					$msg = vendor_getMsg_class::set("Insert Successful......");
					$sendData = $msg."&post_id=$post_id";
					//mail($update_data_array["email"], "Unique Id", "Your Post Is submit. please wait for permission to desplay your post on timeline. Your post id is ");
					//self::notification_function("framework_admin_datatable", "admin", "login", "sign in", "name:- $name And id:- $id", "#", "fa-solid fa-user");
					header(address_class::header_page($loadClass, $loadFunction, $loadPage, $sendData));
				}else{
					//throw new Exception("admin sign error");
					report_class::set_report("Insert", "error", "you are not member.");
					$this->view->classTypePage($loadPage);
				}
			}else{
				//throw new Exception("admin sign error");
				report_class::set_report("Insert", "error", "you are not member.");
				$this->view->classTypePage($loadPage);
			}
		}else{
			//throw new Exception("admin sign error");
			report_class::set_report("Insert", "error", "you are not member.");
			$this->view->classTypePage($loadPage);
		}
		#begin data validtion
	}else{
		$msg = vendor_getMsg_class::set("Post ID Not Found......");
		$sendData = $msg."&post_id=$post_id";
		header(address_class::header_page($loadClass, $loadFunction, $loadPage, $sendData));
	}
	#begin submit validtion
}else{
	$msg = vendor_getMsg_class::set("Post ID Not Found......");
	header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
}
#End post ID validtion
?>