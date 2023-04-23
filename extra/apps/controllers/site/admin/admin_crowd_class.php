<?php
class admin_crowd_class extends plugins_controller_class{
	public function __construct(){
		session_class::login_check("admin_profile_class", "index_page_function", "profile");
      	$this->get_data_array["plugins"] = $this->plugins = "admin";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "crowd";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "framework_admin_datatable";
	}
	public function index_page_function($page = null, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public function signin_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"])){
			$email = parent::data_control("email");
			$password = md5(parent::data_control("password"));
			if($this->method_array["text_validation_class"]->submit()){
				$set_data_array = array("email" => $email, "password" => $password, "status" => true);
				$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, $set_data_array);
				if($this->get_data_array[$this->primary_datatable] != null){
					$id = $this->get_data_array[$this->primary_datatable][0]['id'];
                  	$unique_id = $this->get_data_array[$this->primary_datatable][0]['unique_id'];
					$name = $this->get_data_array[$this->primary_datatable][0]['name'];
					$email = $this->get_data_array[$this->primary_datatable][0]['email'];
					$deshboard = $this->get_data_array[$this->primary_datatable][0]['deshboard'];
					$photo = $this->get_data_array[$this->primary_datatable][0]['photo'];
					$level = $this->get_data_array[$this->primary_datatable][0]['level'];
					session_class::set(array('admin_login' => true, 'admin_id' => $id, 'admin_unique_id' => $unique_id, 'admin_name' => $name, 'admin_deshboard' => $deshboard, "admin_photo" => $photo, 'admin_level' => $level));
					self::notification_function("framework_admin_datatable", "admin", "login", "sign in", "name:- $name And id:- $id", "#", "fa-solid fa-user");
					header(address_class::header_page('admin_profile_class', 'index_page_function', 'profile'));
				}else{
                  	throw new Exception("admin sign error");
					report_class::set_report("signin", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
              	throw new Exception("admin sign error");
				report_class::set_report("signin", "error", "fuck.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-in", $this->plugins_type, $this->plugins));
		}
	}
	public function admin_signup_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "sign-up"){
			$email = parent::data_control("email");
			$mobile = parent::data_control("mobile");
			$admin_chack = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("email" => $email, "mobile" => $mobile));
			if($admin_chack == 0){
				$set_data_array = array(
					"name" => parent::data_control("name"), 
                  	'unique_id' => "admin_".md5(rand(1000000, 9999999)),
					"mobile" => $mobile,
					"deshboard" => "backend_samojugc_dashboard_class/index_page_function/index",
					"email" => $email,
					"password" => md5(parent::data_control("password")),
					'code' => md5(rand(1000000, 9999999)),
					"question" => parent::data_control("question"),
					"answer" => parent::data_control("answer"),
					"ip" => $this->method_array['visitor_info_class']->ip,
					'country' => $this->method_array['visitor_info_class']->country,
					'city' => $this->method_array['visitor_info_class']->city
				);
				if($this->method_array['text_validation_class']->submit()){
					$insert = $this->model_array['insert_db_class']->insert_db_function($this->primary_datatable, $set_data_array);
					if($insert == 1){
						mail($email, "Sign amar jobs site", "We are very happy to have you.");
						header("location:".BASE_URL."admin_crowd_class/index_page_function/$page");
					}else{
						report_class::set_report("signup", "error", "you are not member.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("signup", "error", "you are not member.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-up", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("signup", "error", "you are not member.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-up", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("signup", "error", "you are not member.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("sign-up", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function signout_function($page = null, $array = false){
		session_class::destroy("backend", "index_page_function", $page);
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
					header("location:".BASE_URL."admin_crowd_class/by_code_reset_function/$page/&email=$email");
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("email_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("reset", "error", "some thing wrong.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("email_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("reset", "error", "some thing wrong.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("email_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function sms_verification_function($page = null, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "send_code"){
			$mobile = parent::data_control("mobile");
			$code = rand(1000000, 9999999);
			$user_exist = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("mobile" => $mobile));
			$email = $user_exist[0]["email"];
			if($user_exist == true){
				$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("code" => $code), array("email"=>$email));
				if($update == true){
					//$this->method_array["sms_class"]->sinch($mobile, $code);
					header("location:".BASE_URL."admin_crowd_class/by_code_reset_function/$page/&email=$email");
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
	public function by_code_reset_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "reset_pass"){
			$code = parent::data_control("code");
			$email = parent::data_control("email");
			$password = parent::data_control("password");
			$user_exist = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, array("code" => $code, "email" => $email));
			if($user_exist == true){
				$code = rand(1000000, 9999999);
				$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("password" => md5($password), "code"=>$code), array("email"=>$email));
				if($update == true){
					header("location:".BASE_URL."admin_crowd_class/index_page_function/sign-in/");
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("by_code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::$report_array['code'] = "code not valid.";
				$this->view_load_object_arrays->view_load_functions(backend_class::page("by_code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			$email = parent::data_control("email");
			$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("email" => $email));
			$this->view_load_object_arrays->view_load_functions(backend_class::page("by_code_reset", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function info_verification_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["submit"]) AND $_POST["submit"] == "info-reset"){
			$email = parent::data_control("email");
			$new_pass = md5(parent::data_control("new_pass"));
			$re_pass = md5(parent::data_control("re_pass"));
			if($new_pass == $re_pass){
				$chack_data_array = array(
					"email" => $email,
					"question" => parent::data_control("question"), 
					"answer" => parent::data_control("answer")
				);
				print_r($chack_data_array);
				$admin_count = $this->model_array["count_db_class"]->count_db_function($this->primary_datatable, $chack_data_array);
				if($admin_count == true){
					if($this->method_array['text_validation_class']->submit()){
						$update = $this->model_array['update_db_class']->update_db_function($this->primary_datatable, array("password" => $new_pass), array("email" => $email));
						if($update == true){
							header("location:".BASE_URL."admin_crowd_class/index_page_function/sign-in/");
						}else{
							report_class::set_report("reset", "error", "some thing wrong.");
							$this->view_load_object_arrays->view_load_functions(backend_class::page("info_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
						}
					}else{
						report_class::set_report("reset", "error", "some thing wrong.");
						$this->view_load_object_arrays->view_load_functions(backend_class::page("info_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
					}
				}else{
					report_class::set_report("reset", "error", "some thing wrong.");
					$this->view_load_object_arrays->view_load_functions(backend_class::page("info_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
				}
			}else{
				report_class::set_report("reset", "error", "some thing wrong.");
				$this->view_load_object_arrays->view_load_functions(backend_class::page("forget_pass", $this->plugins_type, $this->plugins), $this->get_data_array);
			}
		}else{
			report_class::set_report("reset", "error", "some thing wrong.");
			$this->view_load_object_arrays->view_load_functions(backend_class::page("info_verification", $this->plugins_type, $this->plugins), $this->get_data_array);
		}
	}
	public function __destruct(){}
}
?>