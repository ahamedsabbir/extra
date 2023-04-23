<style>
.coreboxs{margin:0px; padding:0px; outline:0px; height:40px; text-transform: capitalize;}
.coremenu{width:100%; height:40px; background-color:#343A40; position:absolute; z-index:10; font-size:20px;}
.coremenu ul{padding:0px; margin:0px; list-style-type:none;}
.coremenu ul li{display:inline; float:left; position:relative; width:200px;}
.coremenu ul li:hover ul li ul{visibility:hidden;}
.coremenu ul li:hover ul li ul li ul{visibility:hidden;}
.coremenu ul li span{padding:0px 10px; background-color:#343A40; margin:0px; color:#fff; text-decoration:none; line-height:40px; display:block;}
.coremenu ul li a{padding:0px 10px; background-color:#343A40; margin:0px; color:#fff; text-decoration:none; line-height:40px; display:block;}
.coremenu ul li a:hover{background-color:#F0F0F0; color:#343A40;}
.coremenu ul li:last-child a{}
.coremenu ul li:hover ul{visibility:visible;}
.coremenu ul li ul{visibility:hidden; position:absolute;}
.coremenu ul li ul li{width:200px;}
.coremenu ul li ul li a{}
.coremenu ul li ul li:hover ul{visibility:visible; left:200px; top:0px;}
.coremenu ul li ul li ul{}
.coremenu ul li ul li ul li:hover ul{visibility:visible; left:200px; top:0px;}
.coremenu ul li ul li ul li a{}
</style>
<div class="coreboxs" id="coreboxs">
    <div class="coremenu">
        <ul>
		<li style="float:left; width:50px;">
			<a href="index.php?url=backend" style="padding:5px 10px;"><img src="icon.png" style="width:30px; height:30px;"/></a>
		</li>
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
				if($nav_element_array[$zero][$one] != null AND $one_name == $theme_folder){
?>
		<li style="float:left;">
			<a href="<?php echo BASE_URL.$one_href; ?>" ondblclick="window.location='<?php echo BASE_URL.$one_href; ?>'" ><?php echo $one_name ?></a>
			<ul>
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
		<li style="float:left;">
			<a href="<?php echo BASE_URL.$two_href; ?>" ondblclick="window.location='<?php echo BASE_URL.$two_href; ?>'" ><?php echo $two_name ?></a>
			<ul>
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
									<li style="float:left;">
										<a href="<?php echo BASE_URL.$three_href; ?>" ondblclick="window.location='<?php echo BASE_URL.$three_href; ?>'" ><?php echo $three_name ?></a>
										<ul>
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
									<li style="float:left;">
										<a href="<?php echo BASE_URL.$four_href; ?>" ondblclick="window.location='<?php echo BASE_URL.$four_href; ?>'"><?php echo $four_name ?></a>
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
        <li style="float:left; width:120px;"><span style="cursor: pointer;">complain</span>
			<ul style="width:120px;">
				<li style="width:120px;"><a href="tel:+01775567493">Call</a></li>
				<li style="width:120px;"><a href="mailto:isratahamedsabbir@gmail.com?subject=<?php echo $_SERVER['SERVER_NAME']; ?>&body=admin complain">Email</a></li>
			</ul>
		</li>
		<li style="float:right; width:100px;">
			<span style="cursor: pointer;" onclick="closeMenu()">close</span>
		</li>
        </ul>
    </div>
</div>
<script>
function closeMenu() {
  document.getElementById("coreboxs").style.display = "none";
}
</script>

