<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
include(theme_class::inc("security"));
include(theme_class::inc("variables"));
include(theme_class::inc("control"));
?>
<!DOCTYPE html>
<html lang="zxx">
	<head>
		<?php include(theme_class::inc("head")); ?>
	</head>
	<body>
		<?php include(theme_class::inc("body")); ?>
	</body>
		<?php include(theme_class::inc("foot")); ?>
</html>