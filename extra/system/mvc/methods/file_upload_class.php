<?php
class file_upload_class{
  	public $extention;
  	public $fileArray = array();
  	public $name;
  	public $size;
  	public $temp;
  	public $result;
  	public $errors;
    public function __construct(){
    	$this->extention = settings_class::$file_extension;
      	$this->size = settings_class::$file_size;
    }
    public function file_upload_function($fileKey, $uploadLink, $oldData = false){    	
      $count = count($_FILES[$fileKey]["name"]) - 1;
      for($i = 0; $i <= $count; $i++){
        $name = $_FILES[$fileKey]["name"][$i];
        $temp = $_FILES[$fileKey]["tmp_name"][$i];
        $error = $_FILES[$fileKey]["error"][$i];
        $size = ceil($_FILES[$fileKey]["size"][$i]/1048576);
        $type = $_FILES[$fileKey]["type"][$i];
        $name_array = explode(".",$name);
        $file_extantion = strtolower(end($name_array));
        $file_unique_name = date("dmy").substr($name, 0, 3).substr(md5(md5(time().$name)), 0, 10).".".$file_extantion;
        if($error == 0){
          if($size <= $this->size){
            if(in_array($file_extantion, $this->extention) === true){
              $file_link = $uploadLink."/".$file_unique_name;
              $this->result .= $file_link.", ";
              $this->fileArray[$file_link] = $temp;
            }else{
              $this->errors[$name] = true;
              report_class::set_report($name, "error", "you enter wrong extantion.");
            }
          }else{
            $this->errors[$name] = true;
            report_class::set_report($name, "error", "file limit max ".$this->size);
          }
        }else{
          $this->errors[$name] = true;
          report_class::set_report($name, "error", "file not upload");
        }
      }
      if($oldData == true AND $oldData != null){
        $this->result .= $oldData;
      }else{
        $this->result = trim($this->result, ", ");
      }
      return $this->result;
    }
  	public function submit(){
       if(empty($this->errors)){
           if(!empty($this->fileArray)){
             foreach($this->fileArray as $file_url => $file_temp){
               move_uploaded_file($file_temp, $file_url);
             }
           }
           return true;
       }else{
           return false;
       }
    }
}
?>

