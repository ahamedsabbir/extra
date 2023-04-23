<?php
class delete_xml_class{
	public function __construct(){}
	public function delete_xml_function($primary_datatable, $row_id){
		$z = 0;
		$zx = 0;
		$o= 0;
		$ox = 0;
		$t = 0;
		$tx = 0;
		$primary_xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($primary_xml->database as $database){
			 if($database["name"] == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable["name"] == $this->primary_datatable){
						foreach($datatable->datarow as $datarow){
							if($datarow["id"] == $row_id){
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
		unset($xml->database[$zx]->datatable[$ox]->datarow[$tx]);
		return true;
	}
}
?>