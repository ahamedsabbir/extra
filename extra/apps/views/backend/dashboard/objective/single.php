<!doctype html>
<html class="no-js" lang="en">
	<head>
		<?php include(backend_class::inc("head", $plugins_type, $plugins)); ?>
	</head>
<body>
	<?php include(backend_class::inc("header", $plugins_type, $plugins)); ?>
		<main class="py-5">
			<?php include(backend_class::inc("single", $plugins_type, $plugins)); ?>
		</main>
		<?php include(backend_class::inc("footer")); ?>
	</body>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)); ?>
</html>