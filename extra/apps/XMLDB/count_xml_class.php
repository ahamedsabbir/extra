<?php
class count_xml_class{
	public function __construct(){}
	public function count_xml_function($table, $data){
		$i = 0;
		$xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($xml->database as $database){
			if($database["name"] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $table){
							foreach($datatable->datarow as $datarow){
									if($datarow	->status == vendor_code_class::base64url_encode($data["status"])){
										$i++;
							} 
							}
						}
					}
				}
			}
			return $i;
		}
	}
?>