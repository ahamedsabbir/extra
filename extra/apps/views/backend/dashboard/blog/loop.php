<!doctype html>
<html lang="en">
  <head>
	<?php include theme_class::inc("head"); ?>
  </head>
  <body>
	<?php include backend_class::inc("header"); ?>
	<?php include backend_class::inc("nav", $plugins_type, $plugins); ?>
	<?php include backend_class::inc("loop", $plugins_type, $plugins); ?>    
	<?php vendor_pagenation_class::pagenation_function(); ?>
	<?php include theme_class::inc("footer"); ?>
  </body>
  <?php include theme_class::inc("foot"); ?>
</html>