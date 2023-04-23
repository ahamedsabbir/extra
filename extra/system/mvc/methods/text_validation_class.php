<?php
class text_validation_class{
    public $current_post_name;
    public $valid_data = array();
    public $errors = array();
    public function __construct(){}
    public function text_validate($post_name_get_by_page){
        $get_data_value = $_REQUEST[$post_name_get_by_page];
        $get_data_value = trim($get_data_value);
        $get_data_value = stripslashes($get_data_value);
        $get_data_value = htmlspecialchars($get_data_value);
        $this->valid_data[$post_name_get_by_page] = $get_data_value;
        $this->current_post_name = $post_name_get_by_page;
        return $this;
    }
    public function check_empty(){
       if(empty($this->valid_data[$this->current_post_name]) or strlen($this->valid_data[$this->current_post_name]) == 0){
            $this->errors[$this->current_post_name] = true;
			report_class::set_report($this->current_post_name, "error", "please enter Empty.");
        }
        return $this;
    }
    public function length_validate($min = 0, $max = 400){
        if(strlen($this->valid_data[$this->current_post_name]) < $min OR strlen($this->valid_data[$this->current_post_name]) > $max){
            $this->errors[$this->current_post_name] = true;
			report_class::set_report($this->current_post_name, "error", "Text Length Minimum ".$min." And Text Length Maximum ".$max." Caracturs.");
        }
        return $this;
    }
	public function password_validate($min = 8, $max = 16){
        if(strlen($this->valid_data[$this->current_post_name]) < $min OR strlen($this->valid_data[$this->current_post_name]) > $max){
            $this->errors[$this->current_post_name] = true;
			report_class::set_report($this->current_post_name, "error", "Text Length Minimum ".$min." And Text Length Maximum ".$max." Caracturs.");
        }
        return $this;
    }
    public function email_validate(){
        if(!filter_var($this->valid_data[$this->current_post_name], FILTER_VALIDATE_EMAIL)){
            $this->errors[$this->current_post_name] = true;
			report_class::set_report($this->current_post_name, "error", "Email not valid");
        }
        return $this;
    }
    public function phone_validate(){
		$number_chack = "/^(\+88)?(01)([1]|[5]|[6]|[7]|[9])\d{8}$/"; //01775567493
        if(preg_match($number_chack, $this->valid_data[$this->current_post_name]) == false){
            $this->errors[$this->current_post_name] = true;
			report_class::set_report($this->current_post_name, "error", "Mobile Number not valid. Like 01775567493");
        }
        return $this;
    }
  	public function valid_data($array_key){
      	$result = $this->valid_data[$array_key];
        return $result;
    }
    public function submit(){
       if(empty($this->errors)){
           return true;
       }else{
           return false;
       }
    }
}

