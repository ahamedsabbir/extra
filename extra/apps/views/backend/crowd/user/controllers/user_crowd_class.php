<?php
class user_crowd_class extends frontend_controller_class{
	public $plugins;
	public $plugins_type;
	public $primary_datatable;
	public function __construct(){
		parent::__construct();
		cookie_class::login_check("user_crowd_class", "index_page_function", "sign-out");
		$this->plugins = $this->get_data_array["plugins"] = "user";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		$this->get_data_array["primary_datatable"] = $this->primary_datatable = $this->plugins."_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function signin_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"])){
			$email = parent::data_control("email");
			$password = md5(parent::data_control("password"));
			if($this->method_array["text_validation_class"]->submit()){
				$set_data_array = array("email" => $email, "password" => $password);
				$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, $set_data_array);
				if($this->get_data_array[$this->primary_datatable] != null){
					cookie_class::set('login', true);
					cookie_class::set('id', $this->get_data_array[$this->primary_datatable][0]['id']);
					cookie_class::set('name', $this->get_data_array[$this->primary_datatable][0]['name']);
					cookie_class::set('level', $this->get_data_array[$this->primary_datatable][0]['level']);
					cookie_class::set('photo', $this->get_data_array[$this->primary_datatable][0]['photo']);
					cookie_class::set('survey', $this->get_data_array[$this->primary_datatable][0]['survey']);
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}else{
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signin", "error", "fuck.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins));
		}
	}
	public function user_signup_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "sign-up"){
			$email = parent::data_control("email");
			$mobile = parent::data_control("mobile");
			$user_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("email" => $email, "mobile" => $mobile));
			if($user_exist == false){
				$insert_data_array = array(
					"name" => parent::data_control("name"), 
					"mobile" => $mobile,
					"email" => $email,
					"password" => md5(parent::data_control("password")),
					'code' => md5(rand(1000000, 9999999)),
					"question" => parent::data_control("question"),
					"answer" => parent::data_control("answer"),
					'country' => $this->method_array['visitor_info_class']->country,
					'city' => $this->method_array['visitor_info_class']->city,
					"ip" => $this->method_array['visitor_info_class']->ip,
					'browser' => $this->method_array['visitor_info_class']->browser
				);
				if($this->method_array['text_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $insert_data_array);
					if($insert == true){
						header("location:".BASE_URL."user_crowd_class/index_page_function/sign-in/");
					}else{
						report_class::set_report("signup", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signup", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signup", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("signup", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function email_verification_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "code_send"){
			$email = parent::data_control("email");
			$code = rand(1000000, 9999999);
			$user_exist = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("email" => $email));
			if($user_exist == true){
				$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("code" => $code), array("email" => $email));
				if($update == true){
					//$this->method_array["email_class"]->sending($email, "Account reset", $code);
					header("location:".BASE_URL."user_crowd_class/code_reset_function/$page/&email=$email");
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("reset", "error", "some thing wrong.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("reset", "error", "some thing wrong.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function sms_verification_function($page = null){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "send_code"){
			$mobile = parent::data_control("mobile");
			$code = rand(1000000, 9999999);
			$user_exist = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("mobile" => $mobile));
			$email = $user_exist[0]["email"];
			if($user_exist == true){
				$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("code" => $code), array("email" => $email));
				if($update == true){
					//$this->method_array["sms_class"]->sinch($mobile, $code);
					header("location:".BASE_URL."user_crowd_class/code_reset_function/$page/&email=$email");
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("reset", "error", "some thing wrong.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("reset", "error", "some thing wrong.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function code_reset_function($page){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "password_reset"){
			$code = parent::data_control("code");
			$user_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("code" => $code));
			if($user_exist  == true){
				$this->get_data_array["user"] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("code" => $code));
				$email = $this->get_data_array["user"][0]['email'];
				$password = parent::data_control("password");
				$code = rand(1000000, 9999999);
				$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("password" => md5($password), "code" => $code), array("email" => $email));
				if($update == true){
					header("location:".BASE_URL."user_crowd_class/index_page_function/sign-in/");
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::$report_array['code'] = "code not valid.";
				$this->view_load_object_arrays->view_load_functions(backend_class::page("code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$email = parent::data_control("email");
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("email" => $email));
			$this->view_load_object_arrays->view_load_functions(backend_class::page("code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function info_verification_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "info-reset"){
			$email = parent::data_control("email");
			$old_pass = md5(parent::data_control("old_pass"));
			$new_pass = md5(parent::data_control("new_pass"));
			$chack_data_array = array(
				"email" => $email,
				"question" => parent::data_control("question"), 
				"answer" => parent::data_control("answer"),
				"password" => $old_pass
			);
			$user_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, $chack_data_array);
			if($user_exist == true){
				if($this->method_array['text_validation_class']->submit()){
					$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("password" => $new_pass), array("email" => $email));
					if($update == true){
						header("location:".BASE_URL."user_crowd_class/index_page_function/sign-in/");
					}else{
						report_class::set_report("reset", "error", "some thing wrong.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("reset", "error", "some thing wrong.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("reset", "error", "some thing wrong.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function signout_function($page, $array_key = false, $array_value = false){
		cookie_class::destroy("user_crowd_class", "index_page_function", "sign-out");
	}
	public function __destruct(){}
}
?>