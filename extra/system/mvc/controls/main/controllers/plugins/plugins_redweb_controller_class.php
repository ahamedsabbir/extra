<?php
class plugins_redweb_controller_class extends main_backend_controller_class{
  	public $xml;
  	public $plugins;
	public $plugins_type;
	public $plugins_folder;
	public $plugins_url;
  	public $upload_file;
	public $upload_image;
	public $upload_video;
	public function __construct(){
        $this->theme_name = $this->get_data_array["theme_name"] = "redweb";
        $this->post_datatable = $this->get_data_array["post_datatable"] = "redweb_datatable";	
      	parent::__construct();
      	$this->plugins_folder = $this->get_data_array["plugins_folder"] = "extra/apps/views/backend/".$this->plugins_type."/".$this->plugins;
      	
		$this->upload_file = UPLOAD_FOLDER.$this->plugins."/file";
		$this->upload_image = UPLOAD_FOLDER.$this->plugins."/img";
      	$this->upload_video = UPLOAD_FOLDER.$this->plugins."/video";
		
		$this->get_data_array["backend_menu_xml"] = simplexml_load_file("extra/apps/views/backend/assets/xml/menu.xml");
		
		$this->get_data_array["framework_admin_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_admin_datatable", array("status" => 1));
		$this->get_data_array["framework_user_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_user_datatable", array("status" => 1));
		$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable", array("status" => 1));
		
		$this->get_data_array["all_post"] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable);
		$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array('status' => 1));
		
		$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->post_datatable));
		$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->post_datatable));
      	$this->get_data_array["framework_brand_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_brand_datatable", array("datatable" => $this->post_datatable));
		
		
		$this->get_data_array["framework_watch_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_watch_datatable");
		$this->get_data_array["framework_reach_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_reach_datatable");
		$this->get_data_array["unread_count"] = $this->model_array["count_db_class"]->count_db_function("framework_contact_datatable", array('status' => 0));
		$this->get_data_array["framework_notification_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_notification_datatable", array("type" => "admin"));
      	$this->get_data_array["framework_advertise_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_advertise_datatable");
		
		
		
      
      	$this->view_load_object_arrays->view_load_functions(backend_class::page("functions", $this->plugins_type, $this->plugins), $this->get_data_array);
      
	}
  	public function local_file_upload($page, $array_key = false, $array_value = false){
      /*$source = $_SERVER['DOCUMENT_ROOT'].$_POST["source"];
      if(file_exists($source)){
      	unlink($source);
      }*/
      $image = parent::file_control('file', settings_class::$file_extension, settings_class::$file_size, $this->upload_file);
      echo $image;
    }
  	public function online_file_upload($page, $array_key = false, $array_value = false){
      /*$source = $_SERVER['DOCUMENT_ROOT'].$_POST["source"];
      if(file_exists($source)){
      	unlink($source);
      }*/
      $server_link = $_POST["file"];
      $extensions = $_POST["extensions"];
      $file_name = rand(1000000000, 9999999999);
      $upload_source = $this->upload_file."/".$file_name.".$extensions";
      $context = stream_context_create(['http' => ['ignore_errors' => true]]);
      file_put_contents($upload_source, file_get_contents($server_link, false, $context));
      echo $upload_source;
    }
  	public function action($page, $array_key = false, $array_value = false){
		if(isset($_POST["category_id"])){
			$category_id = $_POST["category_id"];
			 if($this->get_data_array["framework_group_datatable"] !=  null){
				foreach($this->get_data_array["framework_group_datatable"] as $redweb_group_key => $redweb_group_value){
					if($redweb_group_value["category_id"] == $category_id){
						$group_id = $redweb_group_value['id'];
						$group_name = $redweb_group_value['name'];
						echo "<option value='$group_id'>$group_name</option>"; 
					}
				}
			}
		}elseif(isset($_POST["group_id"])){ 
			$group_id = $_POST["group_id"];
			if($this->get_data_array["framework_list_datatable"] !=  null){
				foreach($this->get_data_array["framework_list_datatable"] as $redweb_list_key => $redweb_list_value){
					if($redweb_list_value["group_id"] == $group_id){
						$list_id = $redweb_list_value['id'];
						$list_name = $redweb_list_value['name'];
						echo "<option value='$list_id'>$list_name</option>"; 
					}
				}
			}
		}
	}
  	public function about_function($page){
		$this->get_data_array['about'] = simplexml_load_file(backend_class::source("assets/xml/about.xml", $this->plugins_type, $this->plugins));
		if(isset($_REQUEST["about"]) AND $_REQUEST["about"] == "update"){
			$name = vendor_code_class::base64url_encode($_POST["name"]);
			$type = vendor_code_class::base64url_encode($_POST["type"]);
			$title = vendor_code_class::base64url_encode($_POST["title"]);
			$versions = vendor_code_class::base64url_encode($_POST["versions"]);
			$author = vendor_code_class::base64url_encode($_POST["author"]);
			$email = vendor_code_class::base64url_encode($_POST["email"]);
			$mobile = vendor_code_class::base64url_encode($_POST["mobile"]);
			$description = vendor_code_class::base64url_encode($_POST["description"]);
			$home = vendor_code_class::base64url_encode($_POST["home"]);
			$plugin = vendor_code_class::base64url_encode($_POST["plugin"]);
			$menu = vendor_code_class::base64url_encode($_POST["menu"]);
			$settings = vendor_code_class::base64url_encode($_POST["settings"]);
			$update = vendor_code_class::base64url_encode(date("D/m/Y"));
			foreach($this->get_data_array['about']->about as $about){
				if($about["status"] == true){
					$about->name = $name;
					$about->type = $type;
					$about->title = $title;
					$about->versions = $versions;
					$about->author = $author;
					$about->email = $email;
					$about->mobile = $mobile;
					$about->description = $description;
					$about->home = $home;
					$about->plugin = $plugin;
					$about->menu = $menu;
					$about->settings = $settings;
					$about->update = $update;
				}
			}
			file_put_contents(backend_class::source("assets/xml/about.xml", $this->plugins_type, $this->plugins), $this->get_data_array['about']->asXML());
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function settings($page){
		$this->get_data_array['settings'] = simplexml_load_file(backend_class::source("assets/xml/settings.xml", $this->plugins_type, $this->plugins));
		if(isset($_REQUEST["settings"]) AND $_REQUEST["settings"] == "update"){
			foreach($this->get_data_array['settings']->settings as $settings){
				if($settings["status"] == true){
					$settings->name = parent::data_control("name");
					$settings->author = parent::data_control("author");
					$settings->version = parent::data_control("version");
					$settings->banner = parent::file_control("banner", array("jpg", "jpeg", "gip", "png"), 5, $this->upload_image, $settings->banner);
				}
			}
			file_put_contents(backend_class::source("assets/xml/settings.xml", $this->plugins_type, $this->plugins), $this->get_data_array['settings']->asXML());
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function install(){
		$xml = simplexml_load_file("extra/resources/xml/pluginss.xml");
		if($xml->plugins['name'] != $this->plugins){
			$plugins = $xml->addChild("plugins");
			$plugins->addAttribute("name", $this->plugins);
			$plugins->addChild("note", "menu plugins install.");
			file_put_contents("extra/resources/xml/pluginss.xml", $xml->asXML());
		}
	}
	public function unstall(){}
	public function __destruct(){}
}
?>

