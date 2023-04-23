<?php
class view{
	public $thisObject;
	public $view_load_object;
	public function __construct($thisObject){
      	$this->thisObject = $thisObject;
		$this->view_load_object = new view_load_class();
    }
	public function themePage($page){
		$this->view_load_object->view_load_functions(theme_class::page("index"), $this->thisObject->get_data_array, $this->thisObject->read_data_array);
	}
	public function indexPage($page){
		$this->view_load_object->view_load_functions(theme_class::page("index"), $this->thisObject->get_data_array, $this->thisObject->read_data_array, $page);
	}
	public function themeApp($page, $app){
		$this->view_load_object->view_load_functions(theme_class::page($page, $app), $this->thisObject->get_data_array, $this->thisObject->read_data_array);
	}
	public function softPage($page){
		$this->view_load_object->view_load_functions(soft_class::page($page), $this->thisObject->read_data_array, $page);
	}
	public function backendPage($page){
		$this->view_load_object->view_load_functions(backend_class::page($page), $this->thisObject->get_data_array, $this->thisObject->read_data_array);
	}
	public function pluginsPage($page){
		$this->view_load_object->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->thisObject->get_data_array, $this->thisObject->read_data_array);
	}
/*
# যে কোন ফাইল এখান থেকে খোলা করা যায়। 
# তবে পিএইচপি ফাইল হলে তার সাথে তথ্য পাঠান যায়।
# তবে ফাইলটি অবশ্যই পাথ সহ দিতে হবে। যেমনঃ- app/views/example/index.php
*/
	public function fileOpen($file){
		$this->view_load_object->view_load_functions($file, $this->thisObject->get_data_array, $this->thisObject->read_data_array);
	}
	public function classTypePage($Page){
		if($this->thisObject->type == "backend"){
			$this->backendPage($Page);
		}elseif($this->thisObject->type == "plugins"){
			$this->pluginsPage($Page);
		}elseif($this->thisObject->type == "theme"){
			if(isset($this->thisObject->app)){
				$this->themeApp($Page, $this->thisObject->app);
			}else{
				$this->themePage($Page);
			}
		}else{
			$this->view->fileOpen($Page);
		}
	}
	public function __destruct(){}
}
?>