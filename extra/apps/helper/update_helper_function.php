<?php
if($post_id != null){
	if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "update"){
		$this->get_data_array[$update_datatable] = $this->model_array["select_db_class"]->select_db_function($update_datatable, $select_by_array);
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
			if(isset($update_data_array["submit"])){
				unset($update_data_array["submit"]);
			}
			if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit() AND $this->method_array["file_upload_class"]->submit()){
				$update = $this->model_array['update_db_class']->update_db_function($update_datatable, $update_data_array, $update_by_array);
				if($update == true){
					session_class::set("alert", "data update");
					$msg = vendor_getMsg_class::set("Insert Successful......");
					$sendData = $msg."&post_id=$post_id";
					//mail($insert_data_array["email"], "Unique Id", "Your Post Is submit. please wait for permission to desplay your post on timeline. Your post id is ");
					//self::notification_function("framework_admin_datatable", "admin", "login", "sign in", "name:- $name And id:- $id", "#", "fa-solid fa-user");
					if(isset($reload) AND $reload == true){
						if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
							header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
						}else{
							header(address_class::header_page($success_class, $success_function, $success_page, $sendData));
						}
					}else{
						header(address_class::header_page($success_class, $success_function, $success_page, $sendData));
					}
				}else{
					//throw new Exception("admin sign error");
					report_class::set_report("Insert", "error", "you are not member.");
					$msg = vendor_getMsg_class::set("Post ID Not Found......");
					$sendData = $msg."&post_id=$post_id";
					if(isset($reload) AND $reload == true){
						if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
							header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
						}else{
							header(address_class::header_page($failure_class, $failure_function, $failure_page, $sendData));
						}
					}else{
						if($update_type == "admin"){
							$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
						}else{
							if($app != null){
								$this->view_load_object_arrays->view_load_functions(theme_class::page($page, $app), $this->get_data_array, $this->read_data_array, $page);
							}else{
								$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
							}
						}
					}
				}
			}else{
				//throw new Exception("admin sign error");
				report_class::set_report("Insert", "error", "you are not member.");
				$msg = vendor_getMsg_class::set("Post ID Not Found......");
				$sendData = $msg."&post_id=$post_id";
				if(isset($reload) AND $reload == true){
					if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
						header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
					}else{
						header(address_class::header_page($failure_class, $failure_function, $failure_page, $sendData));
					}
				}else{
					if($update_type == "admin"){
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}else{
						if($app != null){
							$this->view_load_object_arrays->view_load_functions(theme_class::page($page, $app), $this->get_data_array, $this->read_data_array, $page);
						}else{
							$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
						}
					}
				}
			}
		}else{
			//throw new Exception("admin sign error");
			report_class::set_report("Insert", "error", "you are not member.");
			$msg = vendor_getMsg_class::set("Post ID Not Found......");
			$sendData = $msg."&post_id=$post_id";
			if(isset($reload) AND $reload == true){
				if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
					header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
				}else{
					header(address_class::header_page($failure_class, $failure_function, $failure_page, $sendData));
				}
			}else{
				if($update_type == "admin"){
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}else{
					if($app != null){
						$this->view_load_object_arrays->view_load_functions(theme_class::page($page, $app), $this->get_data_array, $this->read_data_array, $page);
					}else{
						$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array, $this->read_data_array, $page);
					}
				}
			}
		}
	}else{
		$msg = vendor_getMsg_class::set("Post ID Not Found......");
		$sendData = $msg."&post_id=$post_id";
		if(isset($reload) AND $reload == true){
			if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
				header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
			}else{
				header(address_class::header_page($failure_class, $failure_function, $failure_page, $sendData));
			}
		}else{
			header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
		}
	}
}else{
	$msg = vendor_getMsg_class::set("Post ID Not Found......");
	$sendData = $msg."&post_id=$post_id";
	if(isset($reload) AND $reload == true){
		if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
			header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $sendData));
		}else{
			header(address_class::header_page($failure_class, $failure_function, $failure_page, $sendData));
		}
	}else{
		header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
	}
}
?>