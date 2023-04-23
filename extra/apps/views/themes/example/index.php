<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
include(theme_class::sys("includes"));
?>
<!DOCTYPE html>
<html lang="zxx">
	<head>
		<?php include(theme_class::inc("head")); ?>
	</head>
	<body>
		<?php include(theme_class::sys("body")); 
			//echo cookie_class::id();
		?>
	</body>
		<?php include(theme_class::inc("foot")); ?>
</html>