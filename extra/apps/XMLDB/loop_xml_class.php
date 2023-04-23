<?php
class loop_xml_class{
	public function __construct(){}
	public function loop_xml_function($table, $data){
		$i=1;
		$xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($xml->database as $database){
			if($database["name"] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $table){
						foreach($datatable->datarow as $datarow){
							if($datarow->status == vendor_code_class::base64url_encode($data["status"])){
									$name = vendor_xml_class::data_decode($datarow->name);
									$get_all[$i++] = array("id" => $datarow["id"], "name" => $name);
							}	
						}
					}
				}
			}
		}
return $get_all;
	}
}
?>