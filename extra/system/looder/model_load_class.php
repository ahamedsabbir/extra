<?php
class model_load_class{
	function __construct(){}
	function model_load_functions($model_class_file){
		include "extra/system/mvc/models/".$model_class_file.".php";
		return new $model_class_file;
	}
}
?>
