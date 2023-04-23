<footer class="text-center">
	<div class="container">
<?php
$jsonData = file_get_contents('extra/resources/json/info.json');
$jsonData = json_decode($jsonData);
foreach($jsonData as $json_key => $json_value){
	$json_name = $json_value->name;
	$json_mobile = $json_value->mobile;
	$json_email = $json_value->email;
	$json_address = $json_value->address;
		echo <<<TEXT
<address class="d-none">
	<div><b>$json_name</b></div>
	<div class="d-none" >$json_mobile</div>
	<div>$json_email</div>
	<div>$json_address</div>
</address>
TEXT;
	foreach($json_value->payment as $payment_key => $payment_value){
		echo <<<TEXT
<a class="btn btn-outline-dark btn-floating m-1 d-none" href="tel:$payment_value" role="button"><i class="fa-solid fa-money-bill-1-wave"></i> $payment_key</a>
TEXT;
	}
}
?>
	
		<section class="d-none">
			<!-- Facebook -->
			<a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$facebook; ?>" role="button"><i class="fab fa-facebook-f"></i></a>
			<!-- Google -->
			<a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$youtube; ?>" role="button"><i class="fab fa-youtube"></i></a>
			<!-- Linkedin -->
			<a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$linkedin; ?>" role="button"><i class="fab fa-linkedin-in"></i></a>
			<!-- Github -->
			<a class="btn btn-outline-dark btn-floating m-1" href="<?php echo settings_class::$github; ?>" role="button"><i class="fab fa-github"></i></a>
		</section>
	</div>
	<div class="bg-dark py-3" style="color:white;">
		<a href="<?php echo settings_class::$copy_link; ?>"><?php echo settings_class::$copy_header; ?> <?php echo settings_class::$copy_right; ?></a>
	</div>
</footer>
<?php include(backend_class::inc("scroll_button")); ?>
<?php echo vendor_popup_class::bootstrap5_auto_popup($framework_advertise_datatable, "google"); ?>
	















		
