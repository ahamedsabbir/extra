<?php
class backend_ckeditor_class extends backend_controller_class{
	public function __construct(){
		$this->backend = $this->get_data_array["backend"] = "ckeditor";
		parent::__construct();
	}
	public function index_page_function($page = null, $key = false, $value = false){
		header(address_class::header_page('backend', 'index_page_function', '404'));
	}
	public function upload_function($page = false, $array_key = false, $array_value = false){
		parent::argument_control($array_key, $array_value);
		if(isset($_FILES['upload']['name'])){
			$file = $_FILES['upload']['name'];
			$filetmp = $_FILES['upload']['tmp_name'];
			//move_uploaded_file($filetmp, UPLOAD_FOLDER.$this->get_data_array["ckfolder"]."/".$file);
          	move_uploaded_file($filetmp, UPLOAD_FOLDER."ckEditor/".$file);
			$function_number = $_GET['CKEditorFuncNum'];
			//$url = UPLOAD_FOLDER.$this->get_data_array["ckfolder"]."/".$file;
			$url = UPLOAD_FOLDER."ckEditor/".$file;
			$message = $url;
			echo "<script>window.parent.CKEDITOR.tools.callFunction('".$function_number."','".$url."','".$message."');</script>";     
		}	
	}
	public function __destruct(){}
}
?>
