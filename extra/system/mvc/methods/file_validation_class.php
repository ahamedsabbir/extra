<?php
class file_validation_class{
    public $current_file_name;
    public $valid_data = array();
    public $errors = array();
    public function __construct(){}
    public function file_validate($post_file_name_get_by_page){
        $name = $_FILES[$post_file_name_get_by_page]["name"];
		
        $name = trim($name);
        $name = stripslashes($name);
        $name = htmlspecialchars($name);
        $make_file_array = explode(".",$name);
        $file_extantion = strtolower(end($make_file_array));
		$size = $_FILES[$post_file_name_get_by_page]["size"];
        $file_unique_name = date("dmy").substr(md5(md5(time().$size)), 0, 15).".".$file_extantion;
        $this->valid_data[$post_file_name_get_by_page] = $file_unique_name;
        $temp = $_FILES[$post_file_name_get_by_page]["tmp_name"];
        $type = $_FILES[$post_file_name_get_by_page]["type"];
        $error = $_FILES[$post_file_name_get_by_page]["error"];
        $this->current_file_name = $post_file_name_get_by_page;
        $this->valid_data[$post_file_name_get_by_page.'_size'] = $size;
        $this->valid_data[$post_file_name_get_by_page.'_temp_name'] = $temp;
        $this->valid_data[$post_file_name_get_by_page.'_type'] = $type;
        $this->valid_data[$post_file_name_get_by_page.'_error'] = $error;
        $this->valid_data[$post_file_name_get_by_page.'_extention'] = $file_extantion;
		
        return $this;

    }
    public function check_error(){
        if($this->valid_data[$this->current_file_name."_error"] > 0){
            $this->errors[$this->current_file_name] = true;
			//report_class::set_report($this->current_file_name, "error", "data error");
        }
        return $this;
    }
	public function min_file_size($size){
		$file_size = ceil($this->valid_data[$this->current_file_name."_size"]/1048576);//1024*1024
        if($file_size < $size){
			$this->errors[$this->current_file_name] = true;
			//report_class::set_report($this->current_file_name, "error", "data error");
        }
        return $this;
    }
    public function max_file_size($size){
		$file_size = ceil($this->valid_data[$this->current_file_name."_size"]/1048576);
        if($file_size > $size){
			$this->errors[$this->current_file_name] = true;
			//report_class::set_report($this->current_file_name, "error", "file is so Big.");
        }
        return $this;
    }
    public function file_extention($parmited_file_extention = array()){
        if(in_array($this->valid_data[$this->current_file_name.'_extention'], $parmited_file_extention) === false){
			$this->errors[$this->current_file_name] = true;
			//report_class::set_report($this->current_file_name, "error", "extention");
        }
        return $this;
    }
    public function submit(){
       if(empty($this->errors)){
           return true;
       }else{
           return false;
       }
    }
}
?>

