<?php
class upload extends soft_upload_controller_class{
	public function __construct(){
		lock_class::lock_function(false);
		parent::__construct();
		$folder = isset($_REQUEST["folder"]) ? $_REQUEST["folder"] : "files";
		$this->upload_file = "extra/storage/uploads/$folder";
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "upload_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array, $this->read_data_array, $page);
	}
  	public function upload_login_function($page, $array_key = false, $array_value = false){
      if(USER_NAME == $_POST["username"] AND USER_PASSWORD == $_POST["userpassword"]){
		  cookie_class::set('upload_login', true);
		  $this->view_load_object_arrays->view_load_functions(soft_class::page("upload"), $this->get_data_array, $this->read_data_array, $page);
      }else{
		  $this->view_load_object_arrays->view_load_functions(soft_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	  }	
    }
  	public function local_file_upload($page, $array_key = false, $array_value = false){
		if(cookie_class::get('upload_login') == true){
			  /*$source = $_SERVER['DOCUMENT_ROOT'].$_POST["source"];
			  if(file_exists($source)){
				unlink($source);
			  }*/
			  $image = parent::file_control('file', settings_class::$file_extension, settings_class::$file_size, $this->upload_file);
			  echo BASE_SITE.$image;
		}else{
			$this->view_load_object_arrays->view_load_functions(soft_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
		}
    }
  	public function online_file_upload($page, $array_key = false, $array_value = false){
		if(cookie_class::get('upload_login') == true){
			  /*$source = $_SERVER['DOCUMENT_ROOT'].$_POST["source"];
			  if(file_exists($source)){
				unlink($source);
			  }*/
			  $server_link = $_POST["file"];
			  if($_POST["name"] != null){
				$file_name = "online_".$_POST["name"];
			  }else{
				$file_array = basename($server_link);
				$file_array = explode(".", $file_array);
				$extension = end($file_array);
				$date = date("dmy");
				$rand = rand(10000000, 99999999);
				$file_name = "online_".$date.$rand.".".$extension;
			  }
			  $upload_source = $this->upload_file."/".$file_name;
			  $context = stream_context_create(['https' => ['ignore_errors' => true]]);
			  $upload = file_put_contents($upload_source, file_get_contents($server_link, false, $context));
			  if($upload == true){
				  echo BASE_SITE.$upload_source;
			  }else{
				  echo "upload fail";
			  }
		}else{
			$this->view_load_object_arrays->view_load_functions(soft_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
		}
    }
  	public function file_delete_upload($page, $array_key = false, $array_value = false){
		if(cookie_class::get('upload_login') == true){
			$folder = isset($_REQUEST["folder"]) ? $_REQUEST["folder"] : "students";
			$encode_url = $_REQUEST["encode_url"];
			$decode_url = vendor_code_class::base64url_decode($encode_url);
			unlink($decode_url);
			$msg = vendor_getMsg_class::set("File Not Exist In Database.");
			$linkModify = $msg."&folder=".$folder;
			header("Location:soft.php?url=upload/index_page_function/$page$linkModify", TRUE, 301);
			//header(address_class::header_page(__CLASS__, "index_page_function", $page, $linkModify));
		}else{
			$this->view_load_object_arrays->view_load_functions(soft_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
		}
    }
	public function __destruct(){}
}
?>