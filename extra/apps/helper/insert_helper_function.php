<?php
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
		if(isset($session) AND $session == true){
			foreach($insert_data_array as $insert_data_key => $insert_data_value){
				session_class::set($insert_data_array[$post_key], parent::data_control($post_key));
			}
		}
		if(isset($insert_data_array["submit"])){
			unset($insert_data_array["submit"]);
		}
		if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit() AND $this->method_array["file_upload_class"]->submit()){
			$insert = $this->model_array['insert_db_class']->insert_db_function($insert_datatable, $insert_data_array);
			if($insert == true){
				session_class::set("alert", "data insert");
				$msg = vendor_getMsg_class::set("Post ID Not Found......");
				//mail($insert_data_array["email"], "Unique Id", "Your Post Is submit. please wait for permission to desplay your post on timeline. Your post id is ");
				//self::notification_function("framework_admin_datatable", "admin", "login", "sign in", "name:- $name And id:- $id", "#", "fa-solid fa-user");
				if(isset($reload) AND $reload == true){
					if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
						header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $msg));
					}else{
						header(address_class::header_page($success_class, $success_function, $success_page, $msg));
					}			
				}else{
					header(address_class::header_page($success_class, $success_function, $success_page, $msg));
				}	
			}else{
				//throw new Exception("admin sign error");
				report_class::set_report("Insert", "error", "you are not member.");
				$msg = vendor_getMsg_class::set("Post ID Not Found......");
				if(isset($reload) AND $reload == true){
					if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
						header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $msg));
					}else{
						header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
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
			if(isset($reload) AND $reload == true){
				if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
					header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $msg));
				}else{
					header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
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
		if(isset($reload) AND $reload == true){
			if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
				header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $msg));
			}else{
				header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
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
	if(isset($reload) AND $reload == true){
		if(isset($this->get_data_array["class"]) AND isset($this->get_data_array["function"]) AND isset($this->get_data_array["page"])){
			header(address_class::header_page($this->get_data_array["class"], $this->get_data_array["function"], $this->get_data_array["page"], $msg));
		}else{
			header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
		}
	}else{
		header(address_class::header_page($failure_class, $failure_function, $failure_page, $msg));
	}
}
?>