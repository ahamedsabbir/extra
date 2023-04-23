<?php
class XMLDP extends XMLDP_controller_class{
  	public $xml_file;
	public $primary_database;
  	
	public function __construct(){
		parent::__construct();
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
      	//$this->get_data_array["xml_file"] = $this->xml_file = vendor_xml_class::$xml_file;
		$this->get_data_array["primary_database"] = $this->primary_database = vendor_xml_class::$database;
      	$this->get_data_array["primary_datatable"] = $this->primary_datatable = "framework_account_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(soft_class::page($page), $this->get_data_array);
	}
  	public function database_insert_function($page, $array_key = false, $array_value = false){
		$xml_data = simplexml_load_file($this->xml_file);
		if($_POST["submit"] == "save"){
			$chack_database = 0;
          	foreach($xml_data->database as $database){
				$database_name =	$database["name"];
              if($database_name == $_POST["database"]){
                  $chack_database = 1;
              }
            }	
			if($chack_database == 0){
				$database = $xml_data->addChild("database");
                $database->addAttribute("sn", $_POST["sn"]);
                $database->addAttribute("id", "db_".rand(9999, 0000));
                $database->addAttribute("status", 1);
                $database->addAttribute("date", date("dmy"));
                $database->addAttribute("name", $_POST["database"]);
			}
		}
		file_put_contents($this->xml_file, $xml_data->asXML());
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function database_update_function($page, $array_key = false, $array_value = false){
		$primary_xml = simplexml_load_file($this->primary_xml);
		if($_POST["submit"] == "update"){
			foreach($primary_xml->database as $database){
				if($database["name"] != $this->primary_database){
					$database["name"] = $this->primary_database;
				}
			}
		}
		file_put_contents($this->xml, $xml->asXML());
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function database_delete_function($page, $array_key = false, $array_value = false){
		$z = 0;
		$zx = 0;
		$primary_xml = simplexml_load_file($this->primary_xml);
		foreach($primary_xml->database as $database){
			 if($database["name"] == $this->primary_database){
				$zx = $z;
			 }
			 $z++;
		}
		unset($xml->database[$zx]);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datatable_insert_function($page, $array_key = false, $array_value = false){
      echo "hello";
      $xml_data = simplexml_load_file($this->xml_file);
		if($_POST["submit"] == "save"){
          	$datatable_chack = 0;
			foreach($xml_data->database as $database){
				if($database['name'] == $_POST["database"]){
					foreach($database->datatable as $datatable){
						if($datatable["name"] == $_POST["database"]){
                  			$datatable_chack = 1;
						}
					}
				}
			}
            if($datatable_chack == 0){
                foreach($xml_data->database as $database){
                    if($database['name'] == $_POST["database"]){
                      $datatable = $database->addChild("datatable");
                      $datatable->addAttribute("sn", $_POST["sn"]);
                      $datatable->addAttribute("id", "dt_".rand(9999, 0000));
                      $datatable->addAttribute("status", 1);
                      $datatable->addAttribute("date", date("dmy"));
                      $datatable->addAttribute("name", $_POST["datatable"]);  
                    }
                }
            }
		}
		file_put_contents($this->xml_file, $xml_data->asXML());
		//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datatable_update_function($page, $array_key = false, $array_value = false){
		$primary_xml = simplexml_load_file($this->primary_xml);
		if($_POST["submit"] == "update"){
			$id = $_REQUEST["id"];
			$name = vendor_code_class::base64url_encode($_REQUEST["id"]);
			$title = vendor_code_class::base64url_encode($_REQUEST["title"]);
			$update = vendor_code_class::base64url_encode(date(ymd));
			foreach($primary_xml->database as $database){
				if($database['name'] == $this->primary_database){
					foreach($database->datatable as $datatable){
						if($datatable["name"] == $this->primary_datatable){
							foreach($datatable->datarow as $datarow){
								if($datarow["id"] == $id){
									$datarow->name = $name;
									$datarow->title = $title;
									$datarow->update = $update;
								}
							}
						}
					}
				}
			}
		}
		file_put_contents($this->xml, $xml->asXML());
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datatable_delete_function($page, $array_key = false, $array_value = false){
		$z = 0;
		$zx = 0;
		$o= 0;
		$ox = 0;
		$primary_xml = simplexml_load_file($this->primary_xml);
		foreach($primary_xml->database as $database){
			 if($database["name"] == $this->primary_database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $this->primary_datatable){
						$ox = $o;
					}
					$o++;
				}
				$zx = $z;
			 }
			 $z++;
		}
		unset($xml->database[$zx]->datatable[$ox]);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_insert_function($page, $array_key = false, $array_value = false){
		if($_POST["submit"] == "save"){
          	$data_chack = false;
			$xml = simplexml_load_file(vendor_xml_class::$xml_file);
			foreach($xml->database as $database){
				if($database['name'] == vendor_xml_class::$database){
					foreach($database->datatable as $datatable){
						if($datatable["name"] == $this->primary_datatable){
							foreach($datatable->datarow as $datarow){
								if($datarow->name == vendor_code_class::base64url_encode($_POST["name"])){
									$data_chack = true;
								}
							}		
						}
					}
				}
			}
          	if($data_chack == false){
              	$insert_data_array = array(
                	"name" => vendor_xml_class::data_encode($_POST["name"]),
                  	"mobile" => vendor_xml_class::data_encode($_POST["mobile"]),
                  	"email" => vendor_xml_class::data_encode($_POST["email"]),
                  	"password" => vendor_xml_class::data_encode($_POST["password"]),
                  	"note" => vendor_xml_class::data_encode($_POST["note"]),
                  	"date" => vendor_xml_class::data_encode(date("dmy")),
                  	"status" => vendor_xml_class::data_encode(1)
                );
				$this->XMLDP_array['insert_xml_class']->insert_xml_function($this->primary_datatable, $insert_data_array);					
			}
		}
		//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_update_function($page, $array_key = false, $array_value = false){
		if($_POST["submit"] == "update"){
			$id = $_REQUEST["id"];
          	$update_data_array = array(
            	"name" => vendor_xml_class::data_encode($_POST["name"]),
                "mobile" => vendor_xml_class::data_encode($_POST["mobile"]),
                "email" => vendor_xml_class::data_encode($_POST["email"]),
                "password" => vendor_xml_class::data_encode($_POST["password"]),
                "note" => vendor_xml_class::data_encode($_POST["note"]),
                "date" => vendor_xml_class::data_encode(date("dmy")),
                "status" => vendor_xml_class::data_encode(1)
            );
			$update = $this->XMLDP_array['update_xml_class']->update_xml_function($this->primary_datatable, $update_data_array, $id);
		}
		//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_count_function($page, $array_key = false, $array_value = false){
		echo $this->XMLDP_array["count_xml_class"]->count_xml_function($this->primary_datatable, array("status" => 0));
		//$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_loop_function($page, $array_key = false, $array_value = false){
		$this->get_data_array[$this->primary_datatable] = $this->XMLDP_array["loop_xml_class"]->loop_xml_function($this->primary_datatable, array("status" => 0));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_pagenation_function($page, $array_key = false, $array_value = false){
		$this->get_data_array["url_link"] = BASE_URL.get_class()."/".__FUNCTION__."/".$page."/&primary_datatable=school";
		$this->get_data_array[$this->primary_datatable] = $this->XMLDP_array["pagenation_xml_class"]->pagenation_xml_function($this->primary_datatable, array("status" => 0), $this->pageno);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_single_function($page, $array_key = false, $array_value = false){
		$id = $_REQUEST['id'];
		$this->get_data_array[$this->primary_datatable] = $this->XMLDP_array["single_xml_class"]->single_xml_function($this->primary_datatable, array("id" => $post_id, "status" => 1));
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_search_function($page, $array_key = false, $array_value = false){
		if(isset($_POST["search"])){
			$keywords = $_POST["keywords"];
			$this->get_data_array[$this->primary_datatable] = $this->XMLDP_array["search_xml_class"]->search_xml_function($this->primary_datatable, $keywords, vendor_pagenation_class::$loop_item);
		}
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
  	public function datarow_delete_function($page, $array_key = false, $array_value = false){
		$row_id = $_GET["row_id"];
		$delete = $this->XMLDP_array['delete_xml_class']->delete_xml_function($this->primary_database, $this->primary_datatable, $row_id);
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
}
?>