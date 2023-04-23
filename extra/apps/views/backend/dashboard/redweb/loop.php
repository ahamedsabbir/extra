<!doctype html>
<html lang="en">
  <head>
	<?php include backend_class::inc("head"); ?>
  </head>
  <body style="background:#DC3545;">
	<?php include backend_class::inc("header"); ?>
	<?php include backend_class::inc("nav", $plugins_type, $plugins); ?>
	<?php include backend_class::inc("postLoop", $plugins_type, $plugins); ?>
	<?php vendor_pagenation_class::pagenation_function(); ?>
	<?php include backend_class::inc("footer"); ?>
  </body>
  <?php include theme_class::inc("foot"); ?>
</html>