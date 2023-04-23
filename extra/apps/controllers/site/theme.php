<?php
class theme extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "theme";
		parent::__construct();
      	$this->upload_image = UPLOAD_FOLDER.$this->theme_name."/img";
		$this->xml = $this->get_data_array["xml"] = "extra/apps/views/themes/".$this->theme_name."/assets/xml/theme.xml";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(theme_class::page("app/theme/$page"), $this->get_data_array);
	}
	public function theme_update_function($page, $array_key = false, $array_value = false){
		$this->get_data_array['xml_content_file'] = simplexml_load_file($this->xml);
		foreach($this->get_data_array['xml_content_file']->theme as $theme){
			if($theme["id"] == 1 AND $theme["status"] == 1 AND $theme["name"] == $this->theme_name){
                unset($_POST["submit"]);
                if(!empty($_POST)){
                  foreach($_POST as $post_key => $post_value){
                    if(!empty($_POST[$post_key])){
                      $theme->$post_key = $_POST[$post_key];
                    }
                  }
                }
                if(!empty($_FILES)){
                  foreach($_FILES as $file_key => $file_value){
                    if(!empty($_FILES[$file_key]["name"])){
                      $theme->$file_key = parent::file_control($file_key, settings_class::$image_extension, settings_class::$image_size, $this->upload_image, $theme->$file_key);
                    }
                  }
                }
				break;
			}
		}
		file_put_contents($this->xml, $this->get_data_array['xml_content_file']->asXML());
		header('location:'.address_class::request_method('theme', 'index_page_function', $page, false, false,"&theme_name=".$this->theme_name));
	}
	public function __destruct(){}
}
?>