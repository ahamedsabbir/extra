<?php
$jsonData = file_get_contents('extra/resources/json/info.json');
$jsonData = json_decode($jsonData); 
//print_r($jsonData);
/*foreach($jsonData as $json_key => $json_value){
	echo $json_value->summary;
	foreach($json_value->social as $social_key => $social_value){
		echo $social_value;
	}
}*/
?>
