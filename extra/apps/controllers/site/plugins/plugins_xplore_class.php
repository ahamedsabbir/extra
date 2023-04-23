<?php
class plugins_xplore_class extends plugins_controller_class{ 
	public $root_folder;
	public $root_url;
	public $folder_url;
	public $folder_src;
	public $icon_src;
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "xplore";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = $this->plugins."_datatable";
		$this->upload_image = $this->plugins_folder."/assets/img";		
		$this->icon_src = $this->plugins_folder."/assets/icon/";
		$this->root_folder = ROOT_FOLDER;
		$this->root_url = preg_replace("~\\\\~", "", $_SERVER["DOCUMENT_ROOT"]."/".$this->root_folder);
/*
* Must be Edite when you enter onlile or change platform.
*/
		$this->get_data_array["total_space"] = disk_total_space($this->root_url);
		$this->get_data_array["free_space"] = disk_free_space($this->root_url);
	}
	public function home_page_function($page = null, $argument = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function index_page_function($page = null, $argument = false){
		$this->get_data_array["folder_url"] = $get_url = isset($_GET["get_url"]) ? $_GET["get_url"] : $this->root_url;
		$this->get_data_array["folder_src"] = $this->folder_src = str_replace($this->root_url, "", $get_url) != "" ? str_replace($this->root_url."/", "", $get_url)."/" : "";
/*
* folder
*/
		$folder_list = glob($get_url.DIRECTORY_SEPARATOR."*", GLOB_ONLYDIR);
		foreach($folder_list as $folder_url){
			$this->folder_url = $folder_url = preg_replace("~\\\\~", "/", $folder_url);
			$link_array = explode("/", $folder_url);
			$folder_name = end($link_array);
			$folder_icon = $this->icon_src."folder.png";
			$this->get_data_array["xplore"][$folder_name] = array("name"=>$folder_name, "type"=>"folder", "full_url"=>$this->folder_url, "icon"=>$folder_icon);
		}
/*
* file
*/
		$file_list = glob($get_url.DIRECTORY_SEPARATOR."*.{*}", GLOB_BRACE);
		foreach($file_list as $file_url){
			$file_date = filemtime($file_url);
			$size = vendor_file_class::convert_memory(filesize($file_url));
			$fullstop_array = explode(".", $file_url);
			$extention = end($fullstop_array);
			$file_icon = $this->icon_src.$extention.".png";
			$file_name = str_replace($get_url, "", $file_url);
			$file_name = ltrim($file_name, "////");
			$file_name = preg_replace("~\\\\~", "", $file_name);
			$src = $this->folder_src.$file_name;
			$this->get_data_array["xplore"][$file_name] = array("name"=>$file_name, "type"=>$extention, "full_url"=>$file_url, "size"=>$size, "icon"=>$file_icon, "src"=>$src, "extention"=>$extention, "date"=>$file_date);
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
/*
* File
*/
	public function file_function($page = null){	
		if(isset($_POST["file_name"])){
			if(is_file($_GET["get_url"]."/".$_POST["file_name"])){
				report_class::set_report("create file", "error", "some thing rong");
			}else{
				fopen($_GET["get_url"]."/".$_POST["file_name"], 'w');
			}
		}else{
			report_class::set_report("create file", "error", "some thing rong");
		}
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);		
	}
	public function upload_function($page = null){
		$name = $_FILES["file"]["name"];
		$temp = $_FILES["file"]["tmp_name"];
		$url = $_GET["get_url"];
		move_uploaded_file($temp, $url."/".$name);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function download_site_file($page = null){
		$file_link = $_POST["file_link"];
		$file_name = basename($file_link);
		$get_url = $_GET["get_url"];
		file_put_contents($get_url."/".$file_name, file_get_contents($file_link));
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$get_url);
	}
	public function copy_function($page = null){
		$old_src = $_GET["get_url"]."/".$_GET["folder"];
		$new_src = $this->root_url."/".$_POST["dir_name"]."/".$_GET["folder"];
		copy($old_src, $new_src);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function move_function($page = null){
		$old_src = $_GET["get_url"]."/".$_GET["folder"];
		$new_src = $this->root_url."/".$_POST["dir_name"]."/".$_GET["folder"];
		rename($old_src, $new_src);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function send_mail($page = null){
		$email = parent::data_control("email");
		$subject = "send file";
		$text = "";
		$file = $_GET["get_url"]."/".$_GET["folder"];
		//$this->method_array["email_class"]->sending($email, $subject, $text, $file);
		//$this->method_array["email_class"]->gmail($email, $subject, $text, $file);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function renames_function($page = null){
		$old_src = $_GET["get_url"]."/".$_GET["folder"];
		$new_src = $_GET["get_url"]."/".$_POST["folder"];
		rename($old_src, $new_src);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function del_file_function($page = null){
		//is_file();
		unlink($_GET["get_url"]."/".$_GET["file"]);
		//$this->send_file_by_email_function["sms_class"]->sinch(MOBILE_NUMBER, "Delete the ".$_GET["get_url"]."/".$_GET["file"]);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function file_move_recyclebin_function($page = null){
		//is_file();
		$old_src = $_GET["get_url"]."/".$_GET["file"];
		$new_src = $this->root_url."/extra/resources/recyclebin/".$_GET["file"];
		$copy_result = copy($old_src, $new_src);
		if($copy_result == true){
			unlink($old_src);
			header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
		}else{
			report_class::set_report("signin", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
/*
* Folder
*/
	public function dir_function($page = null){
		if(isset($_POST["folder_name"])){
			if(is_dir($_GET["get_url"]."/".$_POST["folder_name"])){
				report_class::set_report("create file", "error", "some thing rong");
			}else{
				mkdir($_GET["get_url"]."/".$_POST["folder_name"], 0700);
			}
		}else{
			report_class::set_report("create file", "error", "some thing rong");
		}
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function folder_copy_function($page = null){
		function copy_folder($src, $dst){ 
			$dir = opendir($src); 
			@mkdir($dst); 
			while($file = readdir($dir)){ 
				if (( $file != '.' ) && ( $file != '..' )) { 
					if(is_dir($src . '/' . $file)){
						copy_folder($src . '/' . $file, $dst . '/' . $file); 
					}else{ 
						copy($src . '/' . $file, $dst . '/' . $file); 
					} 
				} 
			} 
			closedir($dir);
		} 
		$src = $_GET["get_url"]."/".$_GET["folder"];
		$dst = $this->root_url."/".$_POST["dir_name"]."/".$_GET["folder"]; 
		copy_folder($src, $dst); 
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function folder_move_function($page = null){
		function move_folder($src, $dst) { 
			$dir = opendir($src); 
			@mkdir($dst); 
			while( $file = readdir($dir) ) { 
		  
				if (( $file != '.' ) && ( $file != '..' )) { 
					if( is_dir($src . '/' . $file) ) {
						copy_folder($src . '/' . $file, $dst . '/' . $file); 
					}else{ 
						rename($src . '/' . $file, $dst . '/' . $file); 
					}
				} 
			} 
			rmdir($src);
		} 
		$src = $_GET["get_url"]."/".$_GET["folder"];
		$dst = $this->root_url."/".$_POST["dir_name"]."/".$_GET["folder"]; 
		move_folder($src, $dst);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function rename_folder_function($page = null){
		echo $old_src = $_GET["get_url"]."/".$_GET["folder"];
		echo $new_src = $_GET["get_url"]."/".$_POST["folder"];
		rename($old_src, $new_src);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function del_dir_function($page = null){
		function deleteDirectory($dirPath) {
			if (is_dir($dirPath)) {
				$objects = scandir($dirPath);
				foreach ($objects as $object) {
					if ($object != "." && $object !="..") {
						if (filetype($dirPath . DIRECTORY_SEPARATOR . $object) == "dir") {
							deleteDirectory($dirPath . DIRECTORY_SEPARATOR . $object);
						} else {
							unlink($dirPath . DIRECTORY_SEPARATOR . $object);
						}
					}
				}
			reset($objects);
			rmdir($dirPath);
			}
		}
		deleteDirectory($_GET["get_url"]."/".$_GET["folder"]);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function dir_move_recyclebin_function($page = null){
		$src = $_GET["get_url"]."/".$_GET["folder"];
		$dst = $this->root_url."/extra/resources/recyclebin/".$_GET["folder"];
		function copy_folder($src, $dst){ 
			$dir = opendir($src); 
			@mkdir($dst); 
			while($file = readdir($dir)){ 
				if (( $file != '.' ) && ( $file != '..' )) { 
					if(is_dir($src . '/' . $file)){
						copy_folder($src . '/' . $file, $dst . '/' . $file); 
					}else{ 
						copy($src . '/' . $file, $dst . '/' . $file); 
					} 
				} 
			} 
			closedir($dir);
		} 
		function deleteDirectory($dirPath){
			if (is_dir($dirPath)) {
				$objects = scandir($dirPath);
				foreach ($objects as $object) {
					if ($object != "." && $object !="..") {
						if (filetype($dirPath . DIRECTORY_SEPARATOR . $object) == "dir") {
							deleteDirectory($dirPath . DIRECTORY_SEPARATOR . $object);
						} else {
							unlink($dirPath . DIRECTORY_SEPARATOR . $object);
						}
					}
				}
			reset($objects);
			rmdir($dirPath);
			}
		}
		copy_folder($src, $dst);
		deleteDirectory($src);
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
/*
* zip
*/
	public function zip_function($page = null){
		$root_urlPath = $_GET["get_url"]."/".$_GET["folder"];
		$zip = new ZipArchive();
		$zip->open($_GET["get_url"]."/".$_GET["folder"].'.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);
		$files = new RecursiveIteratorIterator(
			new RecursiveDirectoryIterator($root_urlPath),
			RecursiveIteratorIterator::LEAVES_ONLY
		);

		foreach ($files as $name => $file)
		{
			if (!$file->isDir())
			{
				$filePath = $file->getRealPath();
				$relativePath = substr($filePath, strlen($root_urlPath) + 1);
				$zip->addFile($filePath, $relativePath);
			}
		}
		$zip->close();
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function unzip_function($page = null){
		$file = $_GET["get_url"]."/".$_GET["file"];
		$path = $_GET["get_url"];
		$zip = new ZipArchive;
		$res = $zip->open($file);
		  $zip->extractTo($path);
		  $zip->close();
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);
	}
	public function install(){
		$file = $_GET["get_url"]."/".$_GET["file"];
		$file_name_array = explode(".", $_GET["file"]);
		$path = $this->root_url."/extra/apps/views/backend/plugins/";
		$zip = new ZipArchive;
		$res = $zip->open($file);
		  $zip->extractTo($path);
		  $zip->close(); 
		$select_class_path = $this->root_url."/extra/apps/views/backend/plugins/".$file_name_array[1]."/plugins_".$file_name_array[1]."_class.php";
		$move_class_path = $this->root_url."/extra/apps/controllers/plugins_".$file_name_array[1]."_class.php";
		$copy_result = copy($select_class_path, $move_class_path); 
		header("location:".BASE_URL."plugins_xplore_class/index_page_function/".$page."/&get_url=".$_GET["get_url"]);  
	}
	public function __destruct(){}
}
?>
