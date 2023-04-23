<?php
try{
	new soft_load_class();
}
catch(Exception $error){
	$subject = $error->getMessage();
	$line = $error->getLine();
	$code = $error->getCode();
	$file = $error->getFile();
	$ip = $_SERVER['REMOTE_ADDR'];
	$message = "File: $file Line: $line IP: $ip";
	echo <<<TEXT
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}
</style>
<div class="center">	
	<div class="card">
	  <div class="card-header">
		<h3>Exception</h3>
	  </div>
	  <div class="card-body">
		<h5 class="card-title text-danger">$subject</h5>
		<p class="card-text">$message</p>
		<a href="#" class="btn btn-primary" onclick="history.back()">Back</a>
	  </div>
	</div>
</div>
TEXT;
error_class::set($error);
//mail(EMAIL, $subject, $message);
header("Location:".BASE_URL."block/block_function/block/&submit=insert&ip=$ip", TRUE, 301);
}
?>