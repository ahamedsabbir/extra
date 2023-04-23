<?php echo backend_class::style("side_nav"); ?>
<nav id="leftsidenav" class="leftsidenav bg-light">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><span class="closestyle">&times;</span></a>
  <div class="flex-shrink-0 p-3">
	
<?php
if(session_class::get("admin_level") == 1){
?>
  <a href="<?php echo BASE_URL."plugins_nav_class/index_page_function/backend_menu/&xml_folder=xml"; ?>" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
    <span class="fs-5 fw-semibold"><i class="fa-solid fa-list"></i><b>&nbsp;Edite Nav</b></span>
  </a>  
<?php
}else{
?>
  <a href=">" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
    <span class="fs-5 fw-semibold"><i class="fa-solid fa-list"></i><b>&nbsp;Mumber</b></span>
  </a>
<?php
}
?>
	  
	<ul class="list-unstyled ps-0">
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
				if($nav_element_array[$zero][$one] != null){
?>
					<li class=''>
                      	<button class='btn align-items-center rounded collapsed' ondblclick="window.location='<?php echo BASE_URL.$one_href; ?>'" data-bs-toggle='collapse' data-bs-target='#<?php echo $one_id ?>-collapse' aria-expanded='false'><span class="<?php echo $one_font_icon;?>"></span>&nbsp;<?php echo $one_name ?></button>
                      		<div class='collapse' id='<?php echo $one_id ?>-collapse'>
								<ul class='btn-toggle-nav list-unstyled fw-normal small'>
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
		<li class=''>
			<button class='btn align-items-center rounded collapsed' ondblclick="window.location='<?php echo BASE_URL.$two_href; ?>'" data-bs-toggle='collapse' data-bs-target='#<?php echo $two_id ?>-collapse' aria-expanded='false'><span class="<?php echo $two_font_icon;?>"></span>&nbsp;<?php echo $two_name ?></button>
				<div class='collapse' id='<?php echo $two_id ?>-collapse'>
					<ul class='btn-toggle-nav list-unstyled fw-normal small'>
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
									<li class=''>
										<button class='btn align-items-center rounded collapsed' ondblclick="window.location='<?php echo BASE_URL.$three_href; ?>'" data-bs-toggle='collapse' data-bs-target='#<?php echo $three_id ?>-collapse' aria-expanded='false'><i class="<?php echo $three_font_icon; ?>"></i>&nbsp;<?php echo $three_name ?></button>
											<div class='collapse' id='<?php echo $three_id ?>-collapse'>
												<ul class='btn-toggle-nav list-unstyled fw-normal small'>
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
									<li class=''>
										<button class='btn align-items-center rounded' ondblclick="window.location='<?php echo BASE_URL.$four_href; ?>'"><i class="<?php echo $four_font_icon ?>"></i>&nbsp;<?php echo $four_name ?></button>
									</li>
<?php
								}else{}
							}//four for
							echo "</ul></div></li>";
						}else{}
					}//three for
					echo "</ul></div></li>";
				}else{}
			}//two for
			echo "</ul></li>";
		}else{}
	}//one for
  	 echo "</div>";
}
?>
                                                 
	</ul>
                                             
  </div>
</nav>
<?php echo backend_class::script("side_nav"); ?>
