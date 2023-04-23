<?php
class content extends backend_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "content";
		parent::__construct();
      	$this->upload_image = UPLOAD_FOLDER.$this->theme_name."/img";
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "example_datatable";
      	$this->xml = $this->get_data_array["xml"] = "extra/apps/views/themes/".$this->theme_name."/assets/xml/content.xml";
      	$this->content = $this->get_data_array["content"] = "extra/apps/views/themes/".$this->theme_name."/assets/xml/content.xml";
	}
	public function page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array, $this->get_data_array, $page);
	}
  	public function add_content_function($page, $array_key = false, $array_value = false){
      	$post_content_name = $_POST["name"];
      	if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "insert"){
            file_put_contents("extra/apps/views/themes/".$this->theme_name."/app/content/".$post_content_name.".php", file_get_contents("extra/apps/views/themes/".$this->theme_name."/app/content/content.php"));
			$msg = vendor_getMsg_class::set("success");
			address_class::reload_page();
		}else{
        	report_class::set_report("signin", "error", "succtess update.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
        }
	}
  	public function element_insert_function($page, $array_key = false, $array_value = false){
      	$post_content_name = $_POST["name"];
		$xml = simplexml_load_file($this->xml);
		if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "insert"){
			foreach($xml->content as $content){
				if($content["status"] == true){
                  $content_name = $content->addChild($post_content_name);
                  $content_name->addAttribute("unique_id", rand(1000, 9999));
                  $content_name->addAttribute("status", 1);
				}
			}
			file_put_contents($this->xml, $xml->asXML());
			$msg = vendor_getMsg_class::set("success");
			header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
		}else{
        	report_class::set_report("signin", "error", "succtess update.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
        }
	}
	public function content_update_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
		if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "update"){
			foreach($xml->content as $content){
				if($content["status"] == true){
                  	unset($_POST["submit"]);
                  	if(!empty($_POST)){
                        foreach($_POST as $post_key => $post_value){
                          if(!empty($_POST[$post_key])){
                            $content->$post_key = vendor_code_class::base64url_encode(parent::data_control($post_key));
                          }
                        }
                    }
                  	if(!empty($_FILES)){
                        foreach($_FILES as $file_key => $file_value){
                            if(!empty($_FILES[$file_key]["name"])){
                                $content->$file_key = vendor_code_class::base64url_encode(parent::file_control($file_key, settings_class::$image_extension, settings_class::$image_size, $this->upload_image, vendor_code_class::base64url_decode($content->$file_key)));
                            }
                        }
                    }
					break;
				}
			}
			file_put_contents($this->xml, $xml->asXML());
			$msg = vendor_getMsg_class::set("success");
			header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
		}else{
        	report_class::set_report("signin", "error", "succtess update.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
        }
	}
  	public function content_delete_function($page, $array_key = false, $array_value = false){
		//unlink("extra/apps/views/themes/".$this->theme_name."/app/content/".$_POST["name"].".php");
		$msg = vendor_getMsg_class::set("success");
		header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
    }
  	public function add_project_function($page, $array_key = false, $array_value = false){
      	$project = $_POST["name"];
		$xml = simplexml_load_file($this->xml);
		if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "insert"){
			foreach($xml->content as $content){
				if($content["status"] == true AND $content["admin"] = 1 AND $content["id"] == 1){
                  $project = $content->addChild($project);
                  $project->addAttribute("unique_id", rand(1000, 9999));
                  $project->addAttribute("status", 1);
                  file_put_contents("extra/apps/views/themes/".$this->theme_name."/app/content/".$_POST["name"].".php", file_get_contents("extra/apps/views/themes/".$this->theme_name."/app/content/project.php"));
                }
			}
			file_put_contents($this->xml, $xml->asXML());
			$msg = vendor_getMsg_class::set("success");
			address_class::reload_page();
		}else{
        	report_class::set_report("signin", "error", "succtess update.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
        }
	}
	public function project_insert_function($page, $array_key = false, $array_value = false){
      	$project_name = $_GET["project_name"];
      	if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "insert"){
            $xml = simplexml_load_file($this->xml);
            foreach($xml->content as $content){
              if($content["status"] == true){
                foreach($content->$project_name as $project){
                  $item = $project->addChild("item");
                  $item->addAttribute("unique_id", rand(1000, 9999));
                  $item->addAttribute("status", 1);
                  $item->addChild("dates", vendor_code_class::base64url_encode(date("d-m-y")));
                  unset($_POST["submit"]);
                  if(!empty($_POST)){
                      foreach($_POST as $post_key => $post_value){
                          if(!empty($_POST[$post_key])){
                            if(gettype($_POST[$post_key]) == "array"){
                              	$item->addChild($post_key, vendor_code_class::base64url_encode(vendor_convert_class::array_to_string_function($_POST[$post_key], ", ")));
                            }else{
                            	$item->addChild($post_key, vendor_code_class::base64url_encode($_POST[$post_key]));                            
                            }
                          }
                      }
                  }
                  if(!empty($_FILES)){
                      foreach($_FILES as $file_key => $file_value){
                          if(!empty($_FILES[$file_key]["name"])){
                              $item->addChild($file_key, vendor_code_class::base64url_encode(parent::file_control($file_key, settings_class::$file_extension, settings_class::$file_size, $this->upload_image)));
                          }
                      }
                  }
                }
              }
            }
            file_put_contents($this->xml, $xml->asXML());
          	$msg = vendor_getMsg_class::set("success");
			header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
        }else{
        	report_class::set_report("signin", "error", "succtess update.");
			$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
        }
	}
	public function project_update_function($page, $array_key = false, $array_value = false){
      $project_name = $_GET["project_name"];
      if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "update"){
			$xml = simplexml_load_file($this->xml);
			foreach($xml->content as $content){
				if($content["status"] == true){
					foreach($content->$project_name as $project){
						if($project["status"] == true){
							foreach($project->item as $item){
								if($item["unique_id"] == $_GET["unique_id"] AND $item["status"] == true){
                                  	unset($_POST["submit"]);
                                    if(!empty($_POST)){
                                      foreach($_POST as $post_key => $post_value){
                                        if(!empty($_POST[$post_key])){
                                          if(gettype($_POST[$post_key]) == "array"){
                                              $item->$post_key = vendor_code_class::base64url_encode(vendor_convert_class::array_to_string_function($_POST[$post_key], ", "));
                                          }else{
                                              $item->$post_key = vendor_code_class::base64url_encode($_POST[$post_key]);                            
                                          }
                                        }
                                      }
                                    }
                                    if(!empty($_FILES)){
                                      foreach($_FILES as $file_key => $file_value){
                                        if(!empty($_FILES[$file_key]["name"])){
                                          $item->$file_key = vendor_code_class::base64url_encode(parent::file_control($file_key, settings_class::$image_extension, settings_class::$image_size, $this->upload_image, vendor_code_class::base64url_decode($item->image)));
                                        }
                                      }
                                    }
									break;
								}
							}
						}
					}
				}
			}
			file_put_contents($this->xml, $xml->asXML());
        	$msg = vendor_getMsg_class::set("success");
			header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
      }else{
        report_class::set_report("signin", "error", "succtess update.");
        $this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
      }
	}
	public function project_delete_function($page, $array_key = false, $array_value = false){
      	$project_name = $_GET["project_name"];
		$xml = simplexml_load_file($this->xml);
		$a = 0;
		$ax = 0;
		$b = 0;
		$bx = 0;
		$c = 0;
		$cx = 0;
		foreach($xml->content as $content){
			if($content["status"] == true){
				foreach($content->$project_name as $project){
					if($project["status"] == true){
							foreach($project->item as $item){
								if($item["unique_id"] == $_GET["unique_id"]){
									$cx = $c;
								}
								$c++;
							}
						$bx = $b;
					}
					$b++;
				}
				$ax = $a;
			}
			$a++;
		}
		unset($xml->content[$ax]->$project_name[$bx]->item[$cx]);
		file_put_contents($this->xml, $xml->asXML());	
		$msg = vendor_getMsg_class::set("success");
		header(address_class::header_page(__CLASS__, "index_page_function", $page, $msg."&theme_name=".$this->theme_name));
	}
	public function __destruct(){}
}
?>