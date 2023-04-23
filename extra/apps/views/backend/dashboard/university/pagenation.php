<?php
foreach($school as $school_key => $school_value){
	echo $school_value["name"];
}
?>
<?php vendor_pagenation_class::pagenation_function(); ?>