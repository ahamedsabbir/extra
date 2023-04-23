<?php
class backend_ckeditor_class extends frontend_controller_class{
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
	}
	public function index_page_function($page = null, $key = false, $value = false){
		header(address_class::header_page('backend', 'index_page_function', '404'));
	}
	public function upload_function($page = null, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			parent::argument_control($array_key, $array_value);
		}
		if(isset($_FILES['upload']['name'])){
			$file = $_FILES['upload']['name'];
			$filetmp = $_FILES['upload']['tmp_name'];
			move_uploaded_file($filetmp, UPLOAD_FOLDER.$this->get_data_array["folder"].$file);
			$function_number = $_GET['CKEditorFuncNum'];
			$url = UPLOAD_FOLDER.$this->get_data_array["folder"].$file;
			$message = $url;
			echo "<script>window.parent.CKEDITOR.tools.callFunction('".$function_number."','".$url."','".$message."');</script>";     
		}	
	}
	public function __destruct(){}
}
?>
