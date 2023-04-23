<?php
class theme_example_content_class extends frontend_example_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		session_class::session_check("session_crowd_class", "index_page_function", "sign-out");
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "example_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
	}
	public function user_content_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
		if(isset($_REQUEST["submit"]) AND $_REQUEST["submit"] == "update"){
			foreach($xml->content as $content){
				if($content["status"] == true){
					$content->banner_name = vendor_code_class::base64url_encode(parent::data_control("banner_name"));
					$content->banner_details = vendor_code_class::base64url_encode(parent::data_control("banner_details"));
					$content->banner_button = vendor_code_class::base64url_encode(parent::data_control("banner_button"));
					$content->banner_link = vendor_code_class::base64url_encode(parent::data_control("banner_link"));
					break;
				}
			}
			file_put_contents($this->xml, $xml->asXML());
		}
		report_class::set_report("signin", "error", "succtess update.");
		$this->view_load_object_arrays->view_load_functions(theme_class::page("content/$page"), $this->get_data_array);
	}
	public function project_insert_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
			foreach($xml->content as $content){
				if($content["status"] == true){
					foreach($content->project as $project){
						$item = $project->addChild("item");
						$item->addAttribute("unique_id", rand(1000, 9999));
                      	$item->addChild("dates", vendor_code_class::base64url_encode(date("d-m-y")));
                      	unset($_POST["submit"]);
                        foreach($_POST as $post_key => $post_value){
                            $item->addChild($post_key, vendor_code_class::base64url_encode($_POST[$post_key]));
                        }
                      	foreach($_FILES as $file_key => $file_value){
                            $item->addChild($file_key, vendor_code_class::base64url_encode(parent::file_control($file_key, settings_class::$file_extension, settings_class::$file_size, $this->upload_image)));
                        }
					}
				}
			}
		file_put_contents($this->xml, $xml->asXML());
		report_class::set_report("signin", "error", "succtess update.");
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
	}
	public function project_update_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
			foreach($xml->content as $content){
				if($content["status"] == true){
					foreach($content->project as $project){
						if($project["status"] == true){
							foreach($project->item as $item){
								if($item["unique_id"] == $_GET["unique_id"]){
									$item->type = vendor_code_class::base64url_encode($_POST["type"]);
									$item->heading = vendor_code_class::base64url_encode($_POST["heading"]);
									$item->dates = vendor_code_class::base64url_encode(date("d-m-y"));
									$item->details = vendor_code_class::base64url_encode($_POST["details"]);
									$item->button = vendor_code_class::base64url_encode($_POST["button"]);
									$item->links = vendor_code_class::base64url_encode($_POST["links"]);
									$item->image = vendor_code_class::base64url_encode(parent::file_control("image", settings_class::$image_extension, settings_class::$image_size, $this->upload_image, vendor_code_class::base64url_decode($item->image)));
									break;
								}
							}
						}
					}
				}
			}
		file_put_contents($this->xml, $xml->asXML());
		report_class::set_report("signin", "error", "succtess update.");
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
	}
	public function project_delete_function($page, $array_key = false, $array_value = false){
		$xml = simplexml_load_file($this->xml);
		$a = 0;
		$ax = 0;
		$b = 0;
		$bx = 0;
		$c = 0;
		$cx = 0;
		foreach($xml->content as $content){
			if($content["status"] == true){
				foreach($content->project as $project){
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
		unset($xml->content[$ax]->project[$bx]->item[$cx]);
		file_put_contents($this->xml, $xml->asXML());	
		report_class::set_report("signin", "success", "succtess update.");
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/content/$page"), $this->get_data_array);
	}
	public function __destruct(){}
}
?>