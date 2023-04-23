<?php
function apiData($site, $token, $dataTable, $select = false){
	if(gettype($select) == "array"){
		$post_text = "";
		foreach($select as $select_key => $select_value){
			$post_text .= "&$select_key=$select_value";
		}
		$url = "$site/index.php?url=api/getFunc/&token=$token&datatable=$dataTable$post_text";
	}else{
		$url = "$site/index.php?url=api/getFunc/&token=$token&datatable=$dataTable";
		
	}
	$data = http_build_query([
        'datatable' => $dataTable,
        'name'      => 'israt ahamed sabbir'
    ]);
	$ch = curl_init();
	curl_setopt($ch,CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_HEADER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_TIMEOUT, 30);
	$result = curl_exec($ch);
	curl_close($ch);
	$result = json_decode($result);
	return $result;
}
?>