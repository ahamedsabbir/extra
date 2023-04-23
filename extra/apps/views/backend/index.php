<!doctype html>
<html class="no-js" lang="">
<head>
	<?php include(backend_class::inc("head")); ?>
  	<script src="https://www.gstatic.com/charts/loader.js"></script>
	<link rel="stylesheet" href="extra/resources/framework/charts.css-0.9.0/dist/charts.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js" integrity="sha512-QSkVNOCYLtj73J4hbmVoOV6KVZuMluZlioC+trLpewV8qMjsWqlIQvkn1KGX2StWvPMdWGBqim1xlC8krl1EKQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
	<body>
		<?php ringtone_class::ringtone_function(true, "Very Short Tone.mp3"); ?>
		<?php include(backend_class::inc("models")); ?>
      	<?php include(backend_class::inc("header")); ?>
      	<?php include("part/clock.php"); ?>
      	<?php //include(backend_class::inc("reach")); ?>
      	<?php //include(backend_class::inc("dashboard")); ?>
      	<?php //include(backend_class::inc("heroes")); ?>
      	<?php //include(backend_class::inc("example_chart")); ?>
      	<?php //include(backend_class::inc("features")); ?>
		<?php include(backend_class::inc("fixed_button")); ?>
		<?php include(backend_class::inc("footer")); ?>
		<?php include(backend_class::inc("foot")); ?>
	</body>
</html>