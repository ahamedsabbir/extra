<?php
class plugins_controller_class extends main_backend_controller_class{
  	public $xml;
  	public $plugins;
	public $plugins_type;
	public $plugins_folder;
	public $plugins_url;
	public $theme_folder;
  	public $theme_url;
	public $content;
  	public $upload_file;
	public $upload_image;
	public $upload_video;
	public function __construct(){
		if(isset($_REQUEST["theme_name"])){
			$this->theme_name = $this->get_data_array["theme_name"] = $_REQUEST["theme_name"];
		}else{
			$this->theme_name = $this->get_data_array["theme_name"] = siteinfo_class::$theme;
		}
      	if(isset($_REQUEST["post_datatable"])){
			$this->post_datatable = $this->get_data_array["post_datatable"] = $_REQUEST["post_datatable"];	
			$this->theme_datatable = $this->get_data_array["theme_datatable"] = $_REQUEST["post_datatable"];	
		}else{
			$this->post_datatable = $this->get_data_array["post_datatable"] = siteinfo_class::$post_datatable;
			$this->theme_datatable = $this->get_data_array["theme_datatable"] = siteinfo_class::$post_datatable;
		}
      	parent::__construct();
      	$this->plugins_folder = $this->get_data_array["plugins_folder"] = "extra/apps/views/backend/".$this->plugins_type."/".$this->plugins;
      	$this->theme_folder = $this->get_data_array["theme_folder"] = $this->theme_name;
      	$this->theme_url = $this->get_data_array["theme_url"] = "extra/apps/views/themes/".$this->theme_folder;
      	$this->content = $this->get_data_array['content'] = $this->theme_url."/assets/xml/content.xml";
		$this->upload_file = UPLOAD_FOLDER.$this->plugins."/file";
		$this->upload_image = UPLOAD_FOLDER.$this->plugins."/img";
      	$this->upload_video = UPLOAD_FOLDER.$this->plugins."/video";
		$this->get_data_array["backend_menu_xml"] = simplexml_load_file("extra/apps/views/backend/assets/xml/menu.xml");
		include($this->theme_url."/assets/datatable/backend.php");
      	$this->view_load_object_arrays->view_load_functions(backend_class::page("functions", $this->plugins_type, $this->plugins), $this->get_data_array);
      
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

