<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<html lang="zxx">
	<head>
		<?php include(backend_class::inc("head", "dashboard", $plugins)); ?>
	</head>
	<body>
		<?php include(backend_class::inc("header", "dashboard", $plugins)); ?>
		<?php //include(backend_class::inc("links", "dashboard", $plugins)); ?>
		<?php include(backend_class::inc("body", "dashboard", $plugins)); ?>
	</body>
		<?php include(backend_class::inc("foot", "dashboard", $plugins)); ?>
</html>