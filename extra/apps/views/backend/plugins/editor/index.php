<!DOCTYPE html>
<html>
	<head>
    	<?php include(backend_class::inc("head", $plugins_type, $plugins)) ?>
	</head>
	<body class="">
		<div class="">
			<?php
				$array_key = array("src", "extention");
				$array_value = array($src, $extention);
				$array_key = vendor_code_class::argu_encode($array_key);
				$array_value = vendor_code_class::argu_encode($array_value);
			?>
			<form action="<?php echo BASE_URL.'plugins_editor_class/save_function/index/'.$array_key.'/'.$array_value; ?>" method="POST">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
				  <a class="navbar-brand" href="#">Text Editor</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
					  <li class="nav-item dropdown">
						<a class="nav-link active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">File</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						  <button type="submit" name="save" class="dropdown-item" value="save" onclick="confirm('Sure To Save!')" >Save</button>
						  <a class="dropdown-item" href="#">Another action</a>
						  <div class="dropdown-divider"></div>
						  <a class="dropdown-item" href="#">Something else here</a>
						</div>
					  </li>
					  <li class="nav-item dropdown">
						<a class="nav-link active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Edit</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						  <a class="dropdown-item" href="#" onclick="myFunction()"><i class="fa-solid fa-copy"></i>&nbsp;All Copy</a>
						  <div class="dropdown-divider"></div>
						  <a class="dropdown-item" href="javascript:location.reload(true)"><i class="fa-solid fa-rotate"></i>&nbsp;Refresh</a>
						</div>
					  </li>
					  <li class="nav-item">
						<a class="nav-link" href="">Some</a>
					  </li>
					</ul>
					<span class="mr-2"><?php echo report_class::chack_report(); ?></span>
					<a style="color:red;" class="" href="<?php echo BASE_URL.'backend'; ?>"><i class="fa-solid fa-circle-xmark"></i>&nbsp;</a>
				  </div>
				</nav>
				<div class="row">
					<div class="col-md-12">
<?php
$support = array("php", "html", "css", "js", "txt", "xml");
if(in_array($extention, $support)){
	$file = fopen($src, "r") or die("file not found");
		if(isset($file)){
			$content = filesize($src) != 0 ? fread($file, filesize($src)) : "";
?>
				<textarea class="code" name="content" id="code" ><?php echo htmlentities($content); ?></textarea>
<?php
		}
	fclose($file);
}else{
?>
<h1 class="text-center" style="color:red;" ><?php echo strtoupper($extention); ?> File Not Suppost</h1>
<?php
}
?>
					
					</div>
				</div>
			</form>
		</div>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)) ?>
	</body>
</html>
