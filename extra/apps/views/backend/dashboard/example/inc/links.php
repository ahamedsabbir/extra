<section class="container">
<ul class="list-unstyled">
<?php
$nav_element_array = vendor_nav_class::make_nav_array($backend_menu_xml, "side_nav");
for($zero=1;$zero<=count($nav_element_array);$zero++){
	$zero_id = $nav_element_array[$zero]["id"];
	$zero_name = $nav_element_array[$zero]["name"];
	$zero_title = $nav_element_array[$zero]["title"];
	$zero_href = $nav_element_array[$zero]["href"];
	$zero_target = $nav_element_array[$zero]["target"];
	$zero_font_icon = $nav_element_array[$zero]["font_icon"];
		for($one=1;$one<=count($nav_element_array[$zero])-6;$one++){
				$one_id = $nav_element_array[$zero][$one]["id"];
				$one_name = $nav_element_array[$zero][$one]["name"];
				$one_title = $nav_element_array[$zero][$one]["title"];
				$one_href = $nav_element_array[$zero][$one]["href"];
				$one_target = $nav_element_array[$zero][$one]["target"];
				$one_font_icon = $nav_element_array[$zero][$one]["font_icon"];
				if($nav_element_array[$zero][$one] != null AND $one_name == "example"){
?>
					<li class='mt-2'>
                      	<button class='btn btn-danger' ondblclick="window.location='<?php echo BASE_URL.$one_href; ?>'" ><?php echo $one_name ?></button>
						<ul class="list-unstyled ms-4">
<?php
				for($two=1;$two<=count($nav_element_array[$zero][$one])-6;$two++){
						$two_id = $nav_element_array[$zero][$one][$two]["id"];
						$two_name = $nav_element_array[$zero][$one][$two]["name"];
						$two_title = $nav_element_array[$zero][$one][$two]["title"];
						$two_href = $nav_element_array[$zero][$one][$two]["href"];
						$two_target = $nav_element_array[$zero][$one][$two]["target"];
						$two_font_icon = $nav_element_array[$zero][$one][$two]["font_icon"];
						if($nav_element_array[$zero][$one][$two]!= null){
?>
		<li class='mt-2'>
			<button class='btn btn-primary' ondblclick="window.location='<?php echo BASE_URL.$two_href; ?>'" ><?php echo $two_name ?></button>
			<ul class="list-unstyled ms-4">
<?php
						for($three=1;$three<=count($nav_element_array[$zero][$one][$two])-6;$three++){
								$three_id = $nav_element_array[$zero][$one][$two][$three]["id"];
								$three_name = $nav_element_array[$zero][$one][$two][$three]["name"];
								$three_title = $nav_element_array[$zero][$one][$two][$three]["title"];
								$three_href = $nav_element_array[$zero][$one][$two][$three]["href"];
								$three_target = $nav_element_array[$zero][$one][$two][$three]["target"];
								$three_font_icon = $nav_element_array[$zero][$one][$two][$three]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three]!= null){
?>
									<li class='mt-2'>
										<button class='btn btn-secondary' ondblclick="window.location='<?php echo BASE_URL.$three_href; ?>'" ><?php echo $three_name ?></button>
										<ul class="list-unstyled ms-4">
<?php											
							for($four=1;$four<=count($nav_element_array[$zero][$one][$two][$three])-6;$four++){
								$four_id = $nav_element_array[$zero][$one][$two][$three][$four]["id"];
								$four_name = $nav_element_array[$zero][$one][$two][$three][$four]["name"];
								$four_title = $nav_element_array[$zero][$one][$two][$three][$four]["title"];
								$four_href = $nav_element_array[$zero][$one][$two][$three][$four]["href"];
								$four_target = $nav_element_array[$zero][$one][$two][$three][$four]["target"];
								$four_font_icon = $nav_element_array[$zero][$one][$two][$three][$four]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three][$four]!= null){
?>
									<li class="mt-2">
										<button class='btn btn-success' ondblclick="window.location='<?php echo BASE_URL.$four_href; ?>'"><?php echo $four_name ?></button>
									</li>
<?php
								}else{}
							}//four for
							echo "</ul></li>";
						}else{}
					}//three for
					echo "</ul></li>";
				}else{}
			}//two for
			echo "</ul></li>";
		}else{}
	}//one for
}
?>                                                
</ul>
</section>