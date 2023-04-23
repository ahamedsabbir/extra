<?php
class plugins_nav_class extends plugins_controller_class{
	public $xml_folder;
	public static $static_xml_folder;
	public function __construct(){
		session_class::session_check("admin_crowd_class", "index_page_function", "sign-out");
		$this->get_data_array["plugins"] = $this->plugins = "nav";
		$this->get_data_array["plugins_type"] = $this->plugins_type = "plugins";
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "nav_datatable";
		$this->xml_folder = self::$static_xml_folder = $this->get_data_array["xml_folder"] = $_REQUEST["xml_folder"];
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		$this->view_load_object_arrays->view_load_functions(backend_class::page($page, $this->plugins_type, $this->plugins), $this->get_data_array);
	}
	public static function create_element($id, $stap, $page, $array_key, $array_value, $zero = false, $one = false, $two = false, $three = false){
		if($zero == true){	
			$zero = '&zero='.$zero;
			if($one == true){
				$one = '&one='.$one;
				if($two == true){
					$two = '&two='.$two;
					if($three == true){
						$three = '&three='.$three;
					}else{
						$three = '';
					}
				}else{
					$two = '';
				}
			}else{
				$one = '';
			}
		}else{
			$zero = '';
		}
		$link = BASE_URL.'plugins_nav_class/insert_function/'.$page.'/'.$array_key.'/'.$array_value.'/&xml_folder='.self::$static_xml_folder.$zero.$one.$two.$three;
		$models = <<<TEXT
<div class="modal fade" id="$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">.
		<h5 class="modal-title" id="staticBackdropLabel">$stap</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="{$link}" method="POST">
		  <div class="mb-3">
			<input style="background-color:red;" type="number" class="form-control" name="sn" min="1" placeholder="1" value="1">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="name"  placeholder="Home" value="home">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="title"  placeholder="it's homr title." value="it's homr title.">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="href"  placeholder="frontend/index_page_function/index/" value="frontend/index_page_function/index/">
		  </div>
		  <div class="mb-3">
			<select name="target" class="form-control">
			  <option name="target" value="_blank" selected>blank</option>
			  <option name="target" value="_self">self</option>
			  <option name="target" value="_parent">parent</option>
			  <option name="target" value="_top">top</option>
			</select>
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="font_icon"  placeholder="fa-solid fa-icons" value="fa-solid fa-icons">
		  </div>
		  <button type="submit" class="btn btn-primary" name="create" value="$stap">Create</button>
		</form>
	  </div>
	</div>
  </div>
</div> 
TEXT;
		return $models;	
	}
	public static function update_element($id, $stap, $page, $array_key, $array_value, $element, $zero = false, $one = false, $two = false, $three = false, $four = false){
		if($zero == true){	
			$zero = '&zero='.$zero;
			if($one == true){
				$one = '&one='.$one;
				if($two == true){
					$two = '&two='.$two;
					if($three == true){
						$three = '&three='.$three;
						if($four == true){
							$four = '&four='.$four;
						}else{
							$four = '';
						}
					}else{
						$three = '';
					}
				}else{
					$two = '';
				}
			}else{
				$one = '';
			}
		}else{
			$zero = '';
		}
		$element_sn = $element['sn'];
		$element_name = vendor_code_class::base64url_decode($element['name']);
		$element_title = vendor_code_class::base64url_decode($element->title);
		$element_target = vendor_code_class::base64url_decode($element->target);
		$element_href = vendor_code_class::base64url_decode($element->href);
		$element_font_icon = vendor_code_class::base64url_decode($element->font_icon);
		$link = BASE_URL.'plugins_nav_class/update_function/'.$page.'/'.$array_key.'/'.$array_value.'/&xml_folder='.self::$static_xml_folder.$zero.$one.$two.$three.$four;
		$models = <<<TEXT
<div class="modal fade" id="$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Edite $element_name</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<input type="number" class="form-control" name="sn" placeholder="$element_sn" value="$element_sn">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="name" placeholder="$element_name" value="$element_name">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="href" placeholder="$element_href" value="$element_href">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="title" placeholder="$element_title" value="$element_title">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="target" placeholder="$element_target" value="$element_target">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" name="font_icon" placeholder="$element_font_icon" value="$element_font_icon">
		  </div>
		  <button type="submit" class="btn btn-primary" name="update" value="$stap">Updete</button>
		</form>
	  </div>
	</div>
  </div>
</div> 
TEXT;
		return $models;	
	}
	public function insert_function($page, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			$this->argument_control($array_key, $array_value);
		}
		$this->xml = $this->get_data_array["menu_xml"];
		$xml = simplexml_load_file($this->xml);
		if($_POST["create"] == "zero"){
			if($xml->zero['name'] != $_POST['name']){
				$zero = $xml->addChild("zero");
				$zero->addAttribute("sn", $_POST["sn"]);
				$zero->addAttribute("id", "zero".rand(1000, 9999));
				$zero->addAttribute("name", vendor_code_class::base64url_encode($_POST["name"]));
				$zero->addChild("title", vendor_code_class::base64url_encode($_POST["title"]));
				$zero->addChild("href", vendor_code_class::base64url_encode($_POST["href"]));
				$zero->addChild("target", vendor_code_class::base64url_encode($_POST["target"]));
				$zero->addChild("font_icon", vendor_code_class::base64url_encode($_POST["font_icon"]));
			}
		}
		if($_POST["create"] == "one"){
			$zero_id = $_GET["zero"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					$one = $zero->addChild("one");
					$one->addAttribute("sn", $_POST["sn"]);
					$one->addAttribute("id", "one".rand(1000, 9999));
					$one->addAttribute("name", vendor_code_class::base64url_encode($_POST["name"]));
					$one->addChild("title", vendor_code_class::base64url_encode($_POST["title"]));
					$one->addChild("href", vendor_code_class::base64url_encode($_POST["href"]));
					$one->addChild("target", vendor_code_class::base64url_encode($_POST["target"]));
					$one->addChild("font_icon", vendor_code_class::base64url_encode($_POST["font_icon"]));
				}
			}
		}
		if($_POST["create"] == "two"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							$two = $one->addChild("two");
							$two->addAttribute("sn", $_POST["sn"]);
							$two->addAttribute("id", "two".rand(1000, 9999));
							$two->addAttribute("name", vendor_code_class::base64url_encode($_POST["name"]));
							$two->addChild("title", vendor_code_class::base64url_encode($_POST["title"]));
							$two->addChild("href", vendor_code_class::base64url_encode($_POST["href"]));
							$two->addChild("target", vendor_code_class::base64url_encode($_POST["target"]));
							$two->addChild("font_icon", vendor_code_class::base64url_encode($_POST["font_icon"]));
						}
					}
				}
			}
		}
		if($_POST["create"] == "three"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									$three = $two->addChild("three");
									$three->addAttribute("sn", $_POST["sn"]);
									$three->addAttribute("id", "three".rand(1000, 9999));
									$three->addAttribute("name", vendor_code_class::base64url_encode($_POST["name"]));
									$three->addChild("title", vendor_code_class::base64url_encode($_POST["title"]));
									$three->addChild("href", vendor_code_class::base64url_encode($_POST["href"]));
									$three->addChild("target", vendor_code_class::base64url_encode($_POST["target"]));
									$three->addChild("font_icon", vendor_code_class::base64url_encode($_POST["font_icon"]));
								}
							}
						}							
					}
				}
			}
		}
		if($_POST["create"] == "four"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$three_id = $_GET["three"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									foreach($two->three as $three){
										if($three["id"] == $three_id){
											$four = $three->addChild("four");
											$four->addAttribute("sn", $_POST["sn"]);
											$four->addAttribute("id", "four".rand(1000, 9999));
											$four->addAttribute("name", vendor_code_class::base64url_encode($_POST["name"]));
											$four->addChild("title", vendor_code_class::base64url_encode($_POST["title"]));
											$four->addChild("href", vendor_code_class::base64url_encode($_POST["href"]));
											$four->addChild("target", vendor_code_class::base64url_encode($_POST["target"]));
											$four->addChild("font_icon", vendor_code_class::base64url_encode($_POST["font_icon"]));
										}
									}
								}
							}
						}
					}
				}
			}
		}
		file_put_contents($this->xml, $xml->asXML());
		header(address_class::header_page("plugins_nav_class", "index_page_function", $page, "&xml_folder=".self::$static_xml_folder));
	}
	public function update_function($page, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			$this->argument_control($array_key, $array_value);
		}
		$this->xml = $this->get_data_array["menu_xml"];
		$xml = simplexml_load_file($this->xml);
		if($_POST["update"] == "zero"){
			$zero_id = $_GET["zero"];
			foreach($xml->zero as $zero){
				if($zero["id"] == $zero_id){
					$zero['sn'] = $_POST["sn"];
					$zero['name'] = vendor_code_class::base64url_encode($_POST["name"]);
					$zero->title = vendor_code_class::base64url_encode($_POST["title"]);
					$zero->href = vendor_code_class::base64url_encode($_POST["href"]);
					$zero->target = vendor_code_class::base64url_encode($_POST["target"]);
					$zero->font_icon = vendor_code_class::base64url_encode($_POST["font_icon"]);
					break;
				}
			}
		}
		if($_POST["update"] == "one"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							$one['sn'] = $_POST["sn"];
							$one['name'] = vendor_code_class::base64url_encode($_POST["name"]);
							$one->title = vendor_code_class::base64url_encode($_POST["title"]);
							$one->href = vendor_code_class::base64url_encode($_POST["href"]);
							$one->target = vendor_code_class::base64url_encode($_POST["target"]);
							$one->font_icon = vendor_code_class::base64url_encode($_POST["font_icon"]);
							break;
						}
					}
				}
			}
		}
		if($_POST["update"] == "two"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									$two['sn'] = $_POST["sn"];
									$two['name'] = vendor_code_class::base64url_encode($_POST["name"]);
									$two->title = vendor_code_class::base64url_encode($_POST["title"]);
									$two->href = vendor_code_class::base64url_encode($_POST["href"]);
									$two->target = vendor_code_class::base64url_encode($_POST["target"]);
									$two->font_icon = vendor_code_class::base64url_encode($_POST["font_icon"]);
									break;
								}
							}
						}
					}
				}
			}
		}
		if($_POST["update"] == "three"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$three_id = $_GET["three"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									foreach($two->three as $three){
										if($three["id"] == $three_id){
											$three['sn'] = $_POST["sn"];
											$three['name'] = vendor_code_class::base64url_encode($_POST["name"]);
											$three->title = vendor_code_class::base64url_encode($_POST["title"]);
											$three->href = vendor_code_class::base64url_encode($_POST["href"]);
											$three->target = vendor_code_class::base64url_encode($_POST["target"]);
											$three->font_icon = vendor_code_class::base64url_encode($_POST["font_icon"]);
											break;
										}
									}
								}
							}
						}
					}
				}
			}
		}
		if($_POST["update"] == "four"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$three_id = $_GET["three"];
			$four_id = $_GET["four"];
			foreach($xml->zero as $zero){
				if($zero['id'] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									foreach($two->three as $three){
										if($three["id"] == $three_id){
											foreach($three->four as $four){
												if($four["id"] == $four_id){
													$four['sn'] = $_POST["sn"];
													$four['name'] = vendor_code_class::base64url_encode($_POST["name"]);
													$four->title = vendor_code_class::base64url_encode($_POST["title"]);
													$four->href = vendor_code_class::base64url_encode($_POST["href"]);
													$four->target = vendor_code_class::base64url_encode($_POST["target"]);
													$four->font_icon = vendor_code_class::base64url_encode($_POST["font_icon"]);
													break;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		file_put_contents($this->xml, $xml->asXML());
		header(address_class::header_page("plugins_nav_class", "index_page_function", $page, "&xml_folder=".self::$static_xml_folder));
	}
	public function delete_function($page, $array_key = false, $array_value = false){
		if($array_key == true AND $array_value == true){
			$this->argument_control($array_key, $array_value);
		}
		$this->xml = $this->get_data_array["menu_xml"];
		$xml = simplexml_load_file($this->xml);
		if($_GET["delete"] == "zero"){
			$zero_id = $_GET["zero"];
			$z = 0;
			$zx = 0;
			foreach($xml->zero as $zero){
				 if($zero["id"] == $zero_id){
					$zx = $z;
					break;
				}
				$z++;
			}
			unset($xml->zero[$zx]);
		}
		if($_GET["delete"] == "one"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$z = 0;
			$zx = 0;
			$o= 0;
			$ox = 0;
			foreach($xml->zero as $zero){
				 if($zero["id"] == $zero_id){ 
					foreach($zero->one as $one){
						 if($one["id"] == $one_id){
							$ox = $o;
							break;
						}
						$o++;
					}
					$zx = $z;
				}
				$z++;
			}
			unset($xml->zero[$zx]->one[$ox]);
		}
		if($_GET["delete"] == "two"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$z = 0;
			$zx = 0;
			$o= 0;
			$ox = 0;
			$t = 0;
			$tx = 0;
			foreach($xml->zero as $zero){
				 if($zero["id"] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									$tx = $t;
									break;
								}
								$t++;
							}
							$ox = $o;
						}
						$o++;
					}
					$zx = $z;
				 }
				 $z++;
			}
			unset($xml->zero[$zx]->one[$ox]->two[$tx]);
		}

		if($_GET["delete"] == "three"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$three_id = $_GET["three"];
			$z = 0;
			$zx = 0;
			$o= 0;
			$ox = 0;
			$t = 0;
			$tx = 0;
			$r = 0;
			$rx = 0;
			foreach($xml->zero as $zero){
				 if($zero["id"] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									foreach($two->three as $three){
										if($three["id"] == $three_id){
											$rx = $r;
											break;
										}
										$r++;
									}
									$tx = $t;
								}
								$t++;
							}
							$ox = $o;
						}
						$o++;
					}
					$zx = $z;
				}
				$z++;
			}
			unset($xml->zero[$zx]->one[$ox]->two[$tx]->three[$rx]);
		}
		if($_GET["delete"] == "four"){
			$zero_id = $_GET["zero"];
			$one_id = $_GET["one"];
			$two_id = $_GET["two"];
			$three_id = $_GET["three"];
			$four_id = $_GET["four"];
			$z = 0;
			$zx = 0;
			$o= 0;
			$ox = 0;
			$t = 0;
			$tx = 0;
			$r = 0;
			$rx = 0;
			$f = 0;
			$fx = 0;
			foreach($xml->zero as $zero){
				 if($zero["id"] == $zero_id){
					foreach($zero->one as $one){
						if($one["id"] == $one_id){
							foreach($one->two as $two){
								if($two["id"] == $two_id){
									foreach($two->three as $three){
										if($three["id"] == $three_id){
											foreach($three->four as $four){
												if($four["id"] == $four_id){
													$fx = $f;
													break;
												}
												$f++;
											}
											$rx = $r;
										}
										$r++;
									}
									$tx = $t;
								}
								$t++;
							 }
							 $ox = $o;
						}
						$o++;
					}
					$zx = $z;
				 }
				 $z++;
			}
			unset($xml->zero[$zx]->one[$ox]->two[$tx]->three[$rx]->four[$fx]);
		}
		file_put_contents($this->xml, $xml->asXML());
		header(address_class::header_page("plugins_nav_class", "index_page_function", $page, "&xml_folder=".self::$static_xml_folder));
	}
	public function __destruct(){}
}
?>