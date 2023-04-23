<!DOCTYPE HTML>
<html lang="en">
	<head>
<style>
*{margin:0px; padding:0px; outline:0px; font-size:20px;}
h2{padding:0px; margin:0px; outline:0px; color:green;}
.coremenu{width:100%; height:40px; background-color:black; position:absolute; z-index:10;}
.coremenu ul{list-style-type:none;}
.coremenu ul li{display:inline; float:left; position:relative;}
.coremenu ul li:hover ul{visibility:visible;}
.coremenu ul li:hover ul li ul{visibility:hidden;}
.coremenu ul li:last-child a{border:0px;}
.coremenu ul li a{padding:0px 20px; background-color:#1090B4; margin:0px; color:#fff; text-decoration:none; text-transform:uppercase; line-height:40px; display:block; border-right:1px solid #fff;}
.coremenu ul li a:hover{background-color:#0CFDF7;}
.coremenu ul li ul{visibility:hidden; position:absolute;}
.coremenu ul li ul li{width:100%;}
.coremenu ul li ul li:hover ul{visibility:visible;}
.coremenu ul li ul li:hover ul li ul{visibility:hidden;}
.coremenu ul li ul li a{}
.coremenu ul li ul li ul{padding:0px; margin:0px; list-style-type:none;}
.coremenu ul li ul li ul li:hover ul{visibility:visible;}
.coremenu ul li ul li ul li a{border:1px solid #8194AA;}
.coremenu ul li ul li ul li ul li ul{visibility:hidden;}
#leftmenu{left:100%; top:0px;}
#rightmenu{right:100%; top:0px;}
main{z-index:9;}
</style>
	</head>
<body>
	<div class="coremenu">
<ul>
<?php
$nav_element_array = vendor_nav_class::make_nav_array($xml, theme_class::$name);
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
					echo "<li><a href='#'>$one_name</a><ul>";
				for($two=1;$two<=count($nav_element_array[$zero][$one])-6;$two++){
						$two_id = $nav_element_array[$zero][$one][$two]["id"];
						$two_name = $nav_element_array[$zero][$one][$two]["name"];
						$two_title = $nav_element_array[$zero][$one][$two]["title"];
						$two_href = $nav_element_array[$zero][$one][$two]["href"];
						$two_target = $nav_element_array[$zero][$one][$two]["target"];
						$two_font_icon = $nav_element_array[$zero][$one][$two]["font_icon"];
						if($nav_element_array[$zero][$one][$two]!= null){
							echo "<li><a href='#'>$two_name</a><ul id='leftmenu'>";
						for($three=1;$three<=count($nav_element_array[$zero][$one][$two])-6;$three++){
								$three_id = $nav_element_array[$zero][$one][$two][$three]["id"];
								$three_name = $nav_element_array[$zero][$one][$two][$three]["name"];
								$three_title = $nav_element_array[$zero][$one][$two][$three]["title"];
								$three_href = $nav_element_array[$zero][$one][$two][$three]["href"];
								$three_target = $nav_element_array[$zero][$one][$two][$three]["target"];
								$three_font_icon = $nav_element_array[$zero][$one][$two][$three]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three]!= null){
									echo "<li><a href='#'>$three_name</a><ul id='leftmenu'>";		
							for($four=1;$four<=count($nav_element_array[$zero][$one][$two][$three])-6;$four++){
								$four_id = $nav_element_array[$zero][$one][$two][$three][$four]["id"];
								$four_name = $nav_element_array[$zero][$one][$two][$three][$four]["name"];
								$four_title = $nav_element_array[$zero][$one][$two][$three][$four]["title"];
								$four_href = $nav_element_array[$zero][$one][$two][$three][$four]["href"];
								$four_target = $nav_element_array[$zero][$one][$two][$three][$four]["target"];
								$four_font_icon = $nav_element_array[$zero][$one][$two][$three][$four]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three][$four]!= null){
									echo "<li><a href='#'>$four_name</a></li>";
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
		</div>
	</body>
</html>