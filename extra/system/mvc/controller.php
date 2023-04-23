<?php
class controller{
	public $model;
	public $view;
	public $data;
	public static $staticModel;
	public static $staticData;
	public static $staticView;
	public function __construct(){
		$this->model = self::$staticModel = new model($this);
		$this->data = self::$staticData = new data($this);
		$this->view = self::$staticView = new view($this);
    }
  	public function argument_control($array_key, $array_value){
		if($array_key == true AND $array_value == true){
			$array_key = vendor_code_class::argu_decode($array_key);
			$array_value = vendor_code_class::argu_decode($array_value);
			$this->argument_array = $combine_array = array_combine($array_key, $array_value);
			foreach($combine_array as $arr_key => $arr_value){
				$this->get_data_array[$arr_key] = $arr_value;
			}
		}
	}
	public function data_control($data){
		switch ($data){
			case "email":
				$this->method_array["text_validation_class"]->text_validate($data)->check_empty()->email_validate();
				$result = strtolower($this->method_array["text_validation_class"]->valid_data[$data]);
				return $result;
			break;
			case "mobile":
				$this->method_array["text_validation_class"]->text_validate($data)->check_empty()->phone_validate();
				$result = $this->method_array["text_validation_class"]->valid_data[$data];
				return $result;
			break;
			case "title":
				$this->method_array["text_validation_class"]->text_validate($data)->check_empty()->length_validate(1, 200);
				$result = $this->method_array["text_validation_class"]->valid_data[$data];
				return $result;
			break;
			case "name":
				$this->method_array["text_validation_class"]->text_validate($data)->check_empty();
				$result = $this->method_array["text_validation_class"]->valid_data[$data];
				return $result;
			break;
			case "password":
				$this->method_array["text_validation_class"]->text_validate($data)->check_empty()->password_validate();
				$result = $this->method_array["text_validation_class"]->valid_data[$data];
				return $result;
			break;
			default:
				$this->method_array["text_validation_class"]->text_validate($data);
				$result = $this->method_array["text_validation_class"]->valid_data[$data];
				return $result;
		}	
	}
	public function file_control($file_name, $parmited_file_extention, $size, $folder_link = false, $sdatatable = false){
		if($_FILES[$file_name]["name"] != null){
			$this->method_array["file_validation_class"]->file_validate($file_name)->check_error()->max_file_size($size)->file_extention($parmited_file_extention);   
			if($folder_link == true){
				$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $folder_link);
			}else{
				switch($file_name){
					case "img":
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_image);
					break;
					case "image":
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_image);
					break;
					case "photo":
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_image);
					break;
					case "thumbnail":
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_image);
					break;
					case "video":
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_video);
					break;
					default:
						$file_link = vendor_file_class::upload($this->method_array["file_validation_class"]->valid_data[$file_name], $this->upload_file);
				}
			}
			if($sdatatable == true AND file_exists($sdatatable) AND $file_name != $sdatatable){
				unlink($sdatatable);
			}
			move_uploaded_file($this->method_array["file_validation_class"]->valid_data[$file_name.'_temp_name'], $file_link);
			return $file_link;
		}else{
			if($sdatatable == true){
				return $sdatatable;
			}else{
				return "empty file";
			}
		}
	}
	public function __destruct(){}
}
?>