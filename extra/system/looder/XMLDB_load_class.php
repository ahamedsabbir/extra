<?php
class XMLDB_load_class{
	function __construct(){}
	function XMLDB_load_functions($XMLDB_class_file){
		include "extra/apps/XMLDB/".$XMLDB_class_file.".php";
		return new $XMLDB_class_file;
	}
}
?>

