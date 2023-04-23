<style>
.dropdown-hover-all .dropdown-menu, .dropdown-hover > .dropdown-menu.dropend { margin-left:-1px !important }</style>
<div class="padding-top: 3.5rem">
<div class="dropdown mt-3">
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
				if($nav_element_array[$zero][$one] != null AND $one_name == $backend){
?>
						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton222" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$one_href; ?>'"><?php echo $one_name ?></button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton222">
							<a class="dropdown-item" href="#" >Two</a>
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
						<div class="dropdown dropend">
							<a class="dropdown-item dropdown-toggle" href="<?php echo BASE_URL.$two_href; ?>" id="dropdown-layouts" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$two_href; ?>'"><?php echo $two_name ?></a>
								<div class="dropdown-menu" aria-labelledby="dropdown-layouts">
									<a class="dropdown-item" href="#" >Three</a>
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
									<div class="dropdown dropend">
										 <a class="dropdown-item dropdown-toggle" href="<?php echo BASE_URL.$three_href; ?>" id="dropdown-layouts" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$three_href; ?>'"><?php echo $three_name ?></a>
										<div class="dropdown-menu" aria-labelledby="dropdown-layouts">
											<a class="dropdown-item" href="#" >Four</a>
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
									<a class="dropdown-item" href="<?php echo BASE_URL.$four_href; ?>" ondblclick="window.location='<?php echo BASE_URL.$four_href; ?>'"><?php echo $four_name ?></a>
<?php
								}else{}
							}//four for
							echo "</div></div>";
						}else{}
					}//three for
					echo "</div></div>";
				}else{}
			}//two for
			echo "</div>";
		}else{}
	}//one for
}
?>
	</div>
</div>


<div class="padding-top: 3.5rem d-none">
<div class="d-flex dropdown-hover-all">
	<div class="dropdown mt-3">
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
				if($nav_element_array[$zero][$one] != null AND $one_name == $backend){
?>
						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton222" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$one_href; ?>'"><?php echo $one_name ?></button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton222">
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
						<div class="dropdown dropend">
							<a class="dropdown-item dropdown-toggle" href="#" id="dropdown-layouts" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$two_href; ?>'"><?php echo $two_name ?></a>
								<div class="dropdown-menu" aria-labelledby="dropdown-layouts">
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
									<div class="dropdown dropend">
										 <a class="dropdown-item dropdown-toggle" href="#" id="dropdown-layouts" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ondblclick="window.location='<?php echo BASE_URL.$three_href; ?>'"><?php echo $three_name ?></a>
										<div class="dropdown-menu" aria-labelledby="dropdown-layouts">
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
									<a class="dropdown-item" href="#" ondblclick="window.location='<?php echo BASE_URL.$four_href; ?>'"><?php echo $four_name ?></a>
<?php
								}else{}
							}//four for
							echo "</div></div>";
						}else{}
					}//three for
					echo "</div></div>";
				}else{}
			}//two for
			echo "</div>";
		}else{}
	}//one for
}
?>
		</div>
	</div>
</div>