<?php
function select_option_loop($datatable){
	if(isset($datatable) AND $datatable != null){
      	echo "<ul>";
		foreach($datatable as $datatable_key => $datatable_value){
          	$name = $datatable_value["name"];
          	$id = $datatable_value["id"];
			echo "<option value='$id'>$name</option>";
		}
      	echo "</ul>";
	}
}