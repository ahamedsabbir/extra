<?php
class single_xml_class{
	public function __construct(){}
	public function single_select_function($primary_datatable, $post_id){
		$primary_xml = simplexml_load_file(vendor_xml_class::$xml_link);
		foreach($backend_menu_xml->database as $database){
			if($database == vendor_xml_class::$database){
				foreach($database->datatable as $datatable){
					if($datatable == $primary_datatable){
						foreach($database->datarow as $datarow){
							if($datarow["id"] == $post_id){
								$id = $datarow["id"];
								$name = vendor_code_class::base64url_decode($datarow->name);
								$title = vendor_code_class::base64url_decode($datarow->title);
								$update = vendor_code_class::base64url_decode($datarow->update);
								$this->get_data_array["primary_xml"] = array("id" => $id, "update" => $update);	
							}
						}
					}
				}
			}
		}
	}

}
?>