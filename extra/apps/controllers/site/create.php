<?php
class create extends backend_controller_class{
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->backend = $this->get_data_array["backend"] = "create";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_category_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page), $this->get_data_array);
	}
	public function create_theme_function($page, $array_key = false, $array_value = false){
		$zip = new ZipArchive;
		$zip->open("extra/storage/theme_".rand(100, 999).date('mdy').'.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);
		$file_array = array(
			"extra",
			"extra/apps",
			"extra/apps/controllers",
			"extra/apps/controllers/site/admin",
			"extra/apps/controllers/site/backend",
			"extra/apps/controllers/site/dashboard",
			"extra/apps/controllers/site/frontend",
			"extra/apps/controllers/site/old",
			"extra/apps/controllers/site/page",
			"extra/apps/controllers/site/plugins",
			"extra/apps/controllers/site/post",
			"extra/apps/controllers/site/theme",
			"extra/apps/controllers/site/theme/example",
			"extra/apps/controllers/site/user",
			"extra/apps/controllers/site",
			"extra/apps/controllers/soft",
			"extra/apps/helper/post",
			"extra/apps/helper",
			"extra/apps/views",
			"extra/apps/views/backend",
			"extra/apps/views/soft",
			"extra/apps/views/template",
			"extra/apps/views/themes",
			"extra/apps/XMLDB",
			"extra/storage",
			"extra/storage/error"
		);
		$zip->addFile('.env');
		$zip->addFile('.gitignore');
		$zip->addFile('.htaccess');
		$zip->addFile('404.html');
		$zip->addFile('about.php');
		$zip->addFile('icon.png');
		$zip->addFile('index.html');
		$zip->addFile('index.php');
		$zip->addFile('LICENSE.txt');
		$zip->addFile('note.txt');
		$zip->addFile('site.php');
		$zip->addFile('sitemap.php');
		$zip->addFile('sitemap.xml');
		$zip->addFile('soft.php');
		$zip->addFile('test.php');
		foreach($file_array as $file_key => $file_value){
			if(file_exists($file_value)){
				if($handle = opendir($file_value)){
					while(false !== ($entry = readdir($handle))){
						if($entry != "." && $entry != ".." && !is_dir($file_value.'/'.$entry)){
							$zip->addFile($file_value.'/'.$entry);
						}
					}
					closedir($handle);
				}
			}
		}
		$zip->close();
		//address_class::back();
	}
	public function create_software_function($page, $array_key = false, $array_value = false){
		
		address_class::back();
	}
	public function __destruct(){}
}
?>