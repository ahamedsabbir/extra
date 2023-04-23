<?php
function convert_date($date){
  $date1 = strtr($date, '/', '-');
  return date('Y-m-d', strtotime($date1));
}
function total_post($datatable, $id){
	$i = 0;
  	if(isset($datatable) AND $datatable != null){
    	foreach($datatable as $datatable_key => $datatable_value){
        	if($datatable_value["admin_id"] == $id){
            	$i++;
            }
        }
    }
  	return $i;
}
function current_post($datatable, $id){
	$i = 0;
  	if(isset($datatable) AND $datatable != null){
    	foreach($datatable as $datatable_key => $datatable_value){
        	if($datatable_value["admin_id"] == $id AND convert_date($datatable_value["date"]) == date("Y-m-d")){
            	$i++;
            }
        }
    }
  	return $i;
}