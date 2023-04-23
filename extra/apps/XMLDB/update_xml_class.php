<?php
class update_xml_class{
	public function __construct(){}
	public function delete_xml_function($primary_datatable, $data, $id){
		$xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($xml->database as $database){
			if($database['name'] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $primary_datatable){
						foreach($datatable->datarow as $datarow){
							if($datarow["id"] == $id){
								foreach($data as $data_key => $data_value){
									$datarow->name = vendor_code_class::base64url_encode($data_value);
								}
							}
						}
					}
				}
			}
		}
	file_put_contents(vendor_xml_class::$xml_link, $xml->asXML());
		return true;
	}
}
?>