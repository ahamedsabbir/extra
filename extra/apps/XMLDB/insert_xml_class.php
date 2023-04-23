<?php
class insert_xml_class{
	public function __construct(){}
	public function insert_xml_function($table, $data){
		$xml = simplexml_load_file(vendor_xml_class::$xml_file);
		foreach($xml->database as $database){
			if($database['name'] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $table){
                        $sn = count($datatable->datarow);
                        $datarow = $datatable->addChild("datarow");
                        $datarow->addAttribute("sn", $sn+1);
                        $datarow->addAttribute("id", "dr_".rand(1000000000, 9999999999));
                        foreach($data as $data_key => $data_value){
                          	$datarow->addChild($data_key, $data_value);
                        }		
					}
				}
			}
		}
		file_put_contents(vendor_xml_class::$xml_file, $xml->asXML());
	}
}
?>