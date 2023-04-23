<?php
class plugins_memory_class extends plugins_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");	
		$this->get_data_array["plugins"] = $this->plugins = "memory";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "memory_datatable";
	}
  	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  
  	public function note_page_function($page = null, $array_key = false, $array_value = false){
      	$noteUrl = "extra/storage/note.txt";
      	$noteFile = fopen($noteUrl, 'r');
      	$this->get_data_array["fdata"] = fread($noteFile, filesize($noteUrl));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
      	fclose($noteFile);
	}
  	public function note_save_function($page = null, $array_key = false, $array_value = false){
      	$postData = $_POST["data"];
      	$noteFile = fopen('extra/storage/note.txt', 'a');
      	fwrite($noteFile, $postData);
      	fclose($noteFile);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  
  
	public function contacts_page_function($page = null, $array_key = false, $array_value = false){    
      	$this->get_data_array["framework_contacts_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_contacts_datatable", array("status" => 1), "ID ASC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function contacts_insert_function($page = null, $array_key = false, $array_value = false){
      if(isset($_POST["submit"]) AND $_POST["submit"] == "save" AND isset($_POST["name"]) AND isset($_POST["mobile"])){
        	$name = parent::data_control("name");
			$contacts_exist = $this->model_array["count_db_class"]->count_db_function("framework_contacts_datatable", array("name" => $name));
			if($contacts_exist == 0){
              	$mobile = trim(implode(", ", $_POST["mobile"]), ", ");
				$insert_data_array = array(
                	"name" => $name,
                  	"image" => parent::file_control("image", settings_class::$image_extension, settings_class::$image_size, $this->upload_image),
                  	"mobile" => $mobile,
                  	"email" => $this->method_array["text_validation_class"]->text_validate("email")->email_validate()->valid_data("email"),
                  	"address" => $this->method_array["text_validation_class"]->text_validate("address")->valid_data("address"),
                  	"note" => $this->method_array["text_validation_class"]->text_validate("note")->valid_data("note"),
                  	"status" => 1
                );
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function("framework_contacts_datatable", $insert_data_array);
					if($insert == true){
                      	$msg = vendor_getMsg_class::set("sucessfully insert");
						header(address_class::header_page("plugins_memory_class", "contacts_page_function", $page, $msg));	
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}	
		}else{
        	$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "contacts_page_function", "contacts", $msg));
		}
	}
  	public function contacts_search_function($page = null, $array_key = false, $array_value = false){
    	$keywords = isset($_POST['search']) ? $_POST['search'] : false;	
		$this->get_data_array["framework_contacts_datatable"] = $this->model_array["search_db_class"]->search_select_db_function("framework_contacts_datatable", array("name" => $keywords, "mobile" => $keywords), array("status" => 1), "NAME ASC", $this->pageno);
      	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
    }
  	public function contacts_update_function($page = null, $array_key = false, $array_value = false){
		$post_id = parent::data_control("post_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array["framework_contacts_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_contacts_datatable", array("id" => $post_id));
			if($this->get_data_array["framework_contacts_datatable"] != null){
              	$mobile = trim(implode(", ", $_POST["mobile"]), ", ");
				$update_data_array = array(
					"name" => parent::data_control("name"),
                  	"image" => parent::file_control('image', settings_class::$image_extension, settings_class::$image_size, $this->upload_image, $this->get_data_array["framework_contacts_datatable"][0]['image']),
                  	"mobile" => $mobile,
                  	"email" => $this->method_array["text_validation_class"]->text_validate("email")->email_validate()->valid_data("email"),
                  	"address" => $this->method_array["text_validation_class"]->text_validate("address")->valid_data("address"),
                  	"note" => $this->method_array["text_validation_class"]->text_validate("note")->valid_data("note")
				);
				if($this->method_array['text_validation_class']->submit() AND $this->method_array['file_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function("framework_contacts_datatable", $update_data_array, array("id" => $post_id));
					if($update == true){
						$msg = vendor_getMsg_class::set("sucessfully insert");
						header(address_class::header_page("plugins_memory_class", "contacts_page_function", $page, "&msg=$msg"));
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "contacts_page_function", "contacts", $msg));
		}
	}
    public function contacts_delete_function($page = null, $array_key = false, $array_value = false){
    	$post_id = parent::data_control("post_id");	
		$this->get_data_array["framework_contacts_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_contacts_datatable", array("id" => $post_id));	
		unlink($this->get_data_array[$this->primary_datatable][0]["image"]);
		$this->get_data_array["delete"] = $this->model_array["delete_db_class"]->delete_db_function("framework_contacts_datatable", array("id" => $post_id));
		$msg = vendor_getMsg_class::set("sucessfully delete");
		header(address_class::header_page("plugins_memory_class", "contacts_page_function", $page, $msg));
    }
  
  
  
  
  	public function website_page_function($page = null, $array_key = false, $array_value = false){    
      	$this->get_data_array["framework_website_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_website_datatable", array("status" => 1), "NAME ASC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function website_insert_function($page = null, $array_key = false, $array_value = false){
      if(isset($_POST["submit"]) AND $_POST["submit"] == "save"){
        	$name = parent::data_control("name");
			$website_exist = $this->model_array["count_db_class"]->count_db_function("framework_website_datatable", array("name" => $name));
			if($website_exist == 0){
              	$mobile = trim(implode(", ", $_POST["mobile"]), ", ");
				$insert_data_array = array(
                	"name" => $name,
                  	"title" => $this->method_array["text_validation_class"]->text_validate("title")->valid_data("title"),
                  	"note" => $this->method_array["text_validation_class"]->text_validate("note")->valid_data("note"),
                  	"status" => 1
                );
				if($this->method_array['text_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function("framework_website_datatable", $insert_data_array);
					if($insert == true){
                      	$msg = vendor_getMsg_class::set("sucessfully insert");
						header(address_class::header_page("plugins_memory_class", "website_page_function", $page, $msg));	
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}	
		}else{
        	$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "website_page_function", "website", $msg));
		}
	}
  	public function website_search_function($page = null, $array_key = false, $array_value = false){
    	$keywords = isset($_POST['search']) ? $_POST['search'] : false;	
		$this->get_data_array["framework_website_datatable"] = $this->model_array["search_db_class"]->search_select_db_function("framework_website_datatable", array("name" => $keywords, "title" => $keywords), array("status" => 1), "NAME ASC", $this->pageno);
      	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
    }
  	public function website_update_function($page = null, $array_key = false, $array_value = false){
    	$post_id = parent::data_control("post_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array["framework_website_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_website_datatable", array("id" => $post_id));
			if($this->get_data_array["framework_website_datatable"] != null){
				$update_data_array = array(
					"name" => $this->method_array["text_validation_class"]->text_validate("name")->valid_data("name"),
                  	"title" => $this->method_array["text_validation_class"]->text_validate("title")->valid_data("title"),
                  	"note" => $this->method_array["text_validation_class"]->text_validate("note")->valid_data("note")
				);
				if($this->method_array['text_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function("framework_website_datatable", $update_data_array, array("id" => $post_id));
					if($update == true){
						$msg = vendor_getMsg_class::set("sucessfully insert");
						header(address_class::header_page("plugins_memory_class", "website_page_function", $page, $msg));
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "website_page_function", "contacts", $msg));
		}
    }
    public function website_delete_function($page = null, $array_key = false, $array_value = false){
    	$post_id = parent::data_control("post_id");
		$delete = $this->model_array["delete_db_class"]->delete_db_function("framework_website_datatable", array("id" => $post_id));
		$msg = vendor_getMsg_class::set("sucessfully delete");
		header(address_class::header_page("plugins_memory_class", "website_page_function", $page, "&msg=$msg"));
    }
  
  
  	public function account_page_function($page = null, $array_key = false, $array_value = false){    
      	$this->get_data_array["framework_account_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_account_datatable", array("status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function account_insert_function($page = null, $array_key = false, $array_value = false){
      if(isset($_POST["submit"]) AND $_POST["submit"] == "save"){
          $insert_data_array = array(
            "name" => parent::data_control("name"),
            "email" =>  parent::data_control("email"),
            "mobile" =>  parent::data_control("mobile"),
            "password" =>  parent::data_control("password"),
            "note" =>  parent::data_control("note"),
            "status" => 1
          );
          if($this->method_array['text_validation_class']->submit()){
            $insert = $this->model_array['insert_db_class']->insert_db_function("framework_account_datatable", $insert_data_array);
            if($insert == true){
              $msg = vendor_getMsg_class::set("sucessfully insert");
              header(address_class::header_page("plugins_memory_class", "account_page_function", $page, $msg));	
            }else{
              report_class::set_report("signin", "error", "you are not member.");
              $this->get_data_array["framework_account_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_account_datatable", array("status" => 1), "NAME ASC", $this->pageno, vendor_pagenation_class::$loop_item);
              $this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
            }
          }else{
            report_class::set_report("signin", "error", "you are not member.");
            $this->get_data_array["framework_account_datatable"] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function("framework_account_datatable", array("status" => 1), "NAME ASC", $this->pageno, vendor_pagenation_class::$loop_item);
           	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
          }	
		}else{
        	$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "account_page_function", "account", $msg));
		}
	}
  	public function account_search_function($page = null, $array_key = false, $array_value = false){
    	$keywords = isset($_POST['search']) ? $_POST['search'] : false;	
		$this->get_data_array["framework_account_datatable"] = $this->model_array["search_db_class"]->search_select_db_function("framework_account_datatable", array("name" => $keywords, "email" => $keywords), array("status" => 1), "NAME ASC", $this->pageno);
      	$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
    }
  	public function account_update_function($page = null, $array_key = false, $array_value = false){
    	$post_id = parent::data_control("post_id");
		if(isset($_POST["submit"]) AND $_POST["submit"] == "update"){
			$this->get_data_array["framework_account_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_account_datatable", array("id" => $post_id));
			if($this->get_data_array["framework_account_datatable"] != null){
              	$mobile = trim(implode(", ", $_POST["mobile"]), ", ");
				$update_data_array = array(
					"name" => parent::data_control("name"),
                    "email" =>  parent::data_control("email"),
                    "mobile" =>  parent::data_control("mobile"),
                    "password" =>  parent::data_control("password"),
                    "note" =>  parent::data_control("note")
				);
				if($this->method_array['text_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function("framework_account_datatable", $update_data_array, array("id" => $post_id));
					if($update == true){
						$msg = vendor_getMsg_class::set("sucessfully insert");
						header(address_class::header_page("plugins_memory_class", "account_page_function", $page, $msg));
					}else{
						report_class::set_report("signin", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$msg = vendor_getMsg_class::set("some problem");
			header(address_class::header_page("plugins_memory_class", "account_page_function", "contacts", $msg));
		}
    }
    public function account_delete_function($page = null, $array_key = false, $array_value = false){
    	$post_id = parent::data_control("post_id");	
		$this->get_data_array["delete"] = $this->model_array["delete_db_class"]->delete_db_function("framework_account_datatable", array("id" => $post_id));
		$msg = vendor_getMsg_class::set("sucessfully delete");
		header(address_class::header_page("plugins_memory_class", "account_page_function", $page, $msg));
    }
	public function __destruct(){}
}
?>
