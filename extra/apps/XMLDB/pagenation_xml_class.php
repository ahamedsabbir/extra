<?php
class pagenation_xml_class{
	public function __construct(){}
	public function pagenation_xml_function($table, $data, $pageno = 1){
	$i=1;
	$loop_start = ($pageno-1) * vendor_pagenation_class::$loop_item;
	$loop_item = vendor_pagenation_class::$loop_item;
	vendor_pagenation_class::$rows_count = $this->count_xml_function($table, $data);
	$xml = simplexml_load_file(vendor_xml_class::$xml_link);
	foreach($xml->database as $database){
		if($database["name"] == vendor_xml_class::$database){
			foreach($database->datatable as $datatable){
				if($datatable["name"] == $table){
					foreach($datatable->datarow as $datarow){
						$name = vendor_xml_class::data_decode($datarow->name);
						if($datarow	->status == vendor_code_class::base64url_encode($data["status"]))
							$get_all[$i++] = array("id" => $datarow["id"], "name" => $name);
					}
				}
			}
		}
	}
	$get_all = array_slice($get_all, $loop_start, $loop_item);
	return $get_all;
}
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