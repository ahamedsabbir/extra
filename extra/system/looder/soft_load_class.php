<?php
class soft_load_class{
    public $url;
    public $controller_path; 
    public $controller_class;
    public $controller_function;
    public $controller_page;
    public $data_key;
    public $data_value;
    public $controller_object;
    public function __construct(){
      	$this->controller_path = "extra/apps/controllers/site/theme/".siteinfo_class::$theme."/";
		$this->controller_class = siteinfo_class::$controller_class;
		$this->controller_function = siteinfo_class::$controller_function;
		$this->controller_page = siteinfo_class::$controller_page;
        $this->url = isset($_GET['url']) ? $_GET['url'] : NULL;
        if($this->url != NULL){
            $this->url = rtrim($this->url, '/');
            $this->url = explode('/', filter_var($this->url, FILTER_SANITIZE_URL));
        }else{
            unset($this->url);
        }
        if(!isset($this->url[0])){
              include $this->controller_path.$this->controller_class.'.php';
              $this->controller_object = new $this->controller_class();
        }else{
          	$this->controller_path = vendor_system_class::find("extra/apps/controllers/soft/", $this->url[0])."/";
            $this->controller_class = $this->url[0];
            $file_name = $this->controller_path.$this->controller_class.".php";
            if(file_exists($file_name)){
              include $file_name;
              if(class_exists($this->controller_class)){
                $this->controller_object = new $this->controller_class();
              }else{
                header("Location: ".BASE_URL."frontend/index_page_function/404");
              }
            }else{
              header("Location: ".BASE_URL."frontend/index_page_function/404");
            }
          }
          if(isset($this->url[2])){
            $this->controller_function = $this->url[1];
            $this->controller_page = $this->url[2];
			if(isset($this->url[3])){
				$this->data_key = $this->url[3];
				if(method_exists($this->controller_object, $this->controller_function)){
					if(isset($this->url[4])){
						$this->data_value = $this->url[4];
						$this->controller_object->{$this->controller_function}($this->controller_page, $this->data_key, $this->data_value);
					}else{
						$this->controller_object->{$this->controller_function}($this->controller_page, $this->data_key);
					}	
				}else{
					header("Location: ".BASE_URL."frontend/index_page_function/404");
				}
			}else{
				if(method_exists($this->controller_object, $this->controller_function)){
					$this->controller_object->{$this->controller_function}($this->controller_page);
				 }else{
					header("Location: ".BASE_URL."frontend/index_page_function/404");
				}
			}
          }else{
              if(isset($this->url[1])){
                  $this->controller_function = $this->url[1];
                  if(method_exists($this->controller_object, $this->controller_function)){
                     $this->controller_object->{$this->controller_function}($this->controller_page);
                  }else{
                      header("Location: ".BASE_URL."frontend/index_page_function/404");
                  }
              }else{
                  if(method_exists($this->controller_object, $this->controller_function)){
                     $this->controller_object->{$this->controller_function}($this->controller_page);
                  }else{
                      header("Location: ".BASE_URL."frontend/index_page_function/404");
                  }
              }
          }
     }
}
?>