<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<html lang="zxx">
	<head>
		<?php include(backend_class::page("dashboard/inc/head")); ?>
	</head>
	<body class="bg-light">
		<?php include(backend_class::page("dashboard/inc/body")); ?>
	</body>
		<?php include(backend_class::page("dashboard/inc/foot")); ?>
		<?php include(backend_class::inc("footer")); ?>
</html>