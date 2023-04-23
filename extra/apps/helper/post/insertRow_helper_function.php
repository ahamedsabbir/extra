<?php
$ignor_data_array = array('token', 'submit');
$loadClass = isset($this->get_data_array["class"]) ? $this->get_data_array["class"] : __CLASS__;
$loadFunction = isset($this->get_data_array["function"]) ? $this->get_data_array["function"] : "index_page_function";
$loadPage = isset($this->get_data_array["page"]) ? $this->get_data_array["page"] : $page;
if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "insert"){
	$post_exist = $this->model_array["count_db_class"]->count_db_function($insert_datatable, $data_chack_array);
	if($post_exist == false){
		if(!empty($_POST)){
			foreach($_POST as $post_key => $post_value){
				if(gettype($_POST[$post_key]) == "array"){
					$insert_data_array[$post_key] = vendor_convert_class::array_to_string_function($_POST[$post_key], ", ");
				}else{
					$insert_data_array[$post_key] = parent::data_control($post_key);
				}
			}
		}
		if(!empty($_FILES)){
			foreach($_FILES as $files_key => $files_value){
				if(gettype($_FILES[$files_key]["name"]) == "array"){
					$insert_data_array[$files_key] = $this->method_array["file_upload_class"]->file_upload_function($files_key, $this->upload_file);
				}else{
					$insert_data_array[$files_key] =  parent::file_control($files_key, settings_class::$file_extension, settings_class::$file_size, false);
				}
			}
		}
		foreach($insert_data_array as $insert_data_key => $insert_data_value){
			session_class::set($insert_data_array[$post_key], parent::data_control($post_key));
		}
		if(isset($ignor_data_array)){
			foreach($ignor_data_array as $ignor_data_key){
				if(isset($insert_data_array[$ignor_data_key])){
					unset($insert_data_array[$ignor_data_key]);
				}
			}
		}
		if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit() AND $this->method_array["file_upload_class"]->submit()){
			$insert = $this->model_array['insert_db_class']->insert_db_function($insert_datatable, $insert_data_array);
			if($insert == true){
				session_class::set("success", "data insert");
				$msg = vendor_getMsg_class::set("Post ID Not Found......");
				//mail($insert_data_array["email"], "Unique Id", "Your Post Is submit. please wait for permission to desplay your post on timeline. Your post id is ");
				//self::notification_function("framework_admin_datatable", "admin", "login", "sign in", "name:- $name And id:- $id", "#", "fa-solid fa-user");
				foreach($insert_data_array as $insert_data_key => $insert_data_value){
					session_class::set($insert_data_array[$post_key], "");
				}
				header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
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
}else{
	$msg = vendor_getMsg_class::set("Post ID Not Found......");
	header(address_class::header_page($loadClass, $loadFunction, $loadPage, $msg));
}
?>