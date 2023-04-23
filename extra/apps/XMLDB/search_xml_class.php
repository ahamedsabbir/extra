<?php
class search_xml_class{
	public function __construct(){}
	public function select_xml_function($primary_datatable, $keywords){
		$primary_xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($primary_xml->database as $database){
			if($database["name"] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $this->primary_datatable){
						$pageno = isset($pageno) ? $pageno : 1;
						$item = vendor_pagenation_class::$loop_item;
						$loop_start = ($pageno-1) * $item;
						$datarow = new LimitIterator($datatable->datarow, $loop_start, "$item");
						vendor_pagenation_class::$loop_item = count($database->datatable);
						foreach($datarow as $datarow){
							echo $id = $datarow["id"]."<br />";
							$name = vendor_code_class::base64url_decode($datarow->name);
							$title = vendor_code_class::base64url_decode($datarow->title);
							$update = vendor_code_class::base64url_decode($datarow->update);
							$this->get_data_array["primary_xml"] = array("id" => $id, "title"=> $title, "update" => $update);	
						}
					}
				}
			}
		}
	}
}
?>