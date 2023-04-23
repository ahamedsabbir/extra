<style>
  ul{
	list-style:none;
  }
  li{
	border-left: 2px solid red; 
    padding-left: 2px;
    padding-bottom: 3px;
  }
  a{
  	text-decoration: none;
  }
</style>
<?php
$xml = simplexml_load_file("extra/apps/views/backend/assets/xml/menu.xml");
$nav_element_array = vendor_nav_class::make_nav_array($xml, "side_nav");
for($zero=1;$zero<=count($nav_element_array);$zero++){
	$zero_name = $nav_element_array[$zero]["name"];
	$zero_href = $nav_element_array[$zero]["href"];
?>
  <h1><?php echo $zero_name; ?></h1>
	<ul>
<?php
		for($one=1;$one<=count($nav_element_array[$zero])-6;$one++){
				$one_name = $nav_element_array[$zero][$one]["name"];
				$one_href = $nav_element_array[$zero][$one]["href"];
				if($nav_element_array[$zero][$one] != null){
?>
				<li><a href="index.php?url=<?php echo $one_href; ?>"><?php echo $one_name; ?></a>
					<ul>
<?php
				for($two=1;$two<=count($nav_element_array[$zero][$one])-6;$two++){
						$two_name = $nav_element_array[$zero][$one][$two]["name"];
						$two_href = $nav_element_array[$zero][$one][$two]["href"];
						if($nav_element_array[$zero][$one][$two]!= null){
?>
						<li><a href="index.php?url=<?php echo $two_href; ?>"><?php echo $two_name; ?></a>
							<ul>
<?php
						for($three=1;$three<=count($nav_element_array[$zero][$one][$two])-6;$three++){
								$three_name = $nav_element_array[$zero][$one][$two][$three]["name"];
								$three_href = $nav_element_array[$zero][$one][$two][$three]["href"];
								if($nav_element_array[$zero][$one][$two][$three]!= null){
?>
								<li><a href="index.php?url=<?php echo $three_href; ?>"><?php echo $three_name; ?></a>
									<ul>
<?php		
							for($four=1;$four<=count($nav_element_array[$zero][$one][$two][$three])-6;$four++){
								$four_name = $nav_element_array[$zero][$one][$two][$three][$four]["name"];
								$four_href = $nav_element_array[$zero][$one][$two][$three][$four]["href"];
								if($nav_element_array[$zero][$one][$two][$three][$four]!= null){
?>
									<li><a href="index.php?url=<?php echo $three_href; ?>"><?php echo $four_name; ?></a></li>
<?php
								}else{}
							}//four for
?>
</ul></li>
<?php
						}else{}
					}//three for
?>
</ul></li>
<?php
				}else{}
			}//two for
?>
</ul></li>
<?php
		}else{}
	}//one for
?>
   </ul>   
<?php
}
?>