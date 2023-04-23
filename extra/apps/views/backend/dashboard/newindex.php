<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<!doctype html>
<html lang="en">
<head>
    <?php include(backend_class::page("dashboard/inc/head")); ?>
</head>
<body class="">
    <?php include(backend_class::page("dashboard/inc/body")); ?>
	<?php include(backend_class::inc("footer")); ?>
</body>
	<?php include(backend_class::page("dashboard/inc/foot")); ?>
</html>




                                               
