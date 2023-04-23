<?php
class vendor_nav_class{
	public static function make_nav_array($xml_file, $menu_name){
		$nav_element_array = array();
		foreach($xml_file->zero as $zero){
			if(vendor_code_class::base64url_decode($zero["name"]) == $menu_name){
				$zero_sn = $zero["sn"];
				$zero_id = $zero["id"];
				$zero_name = vendor_code_class::base64url_decode($zero["name"]);
				$zero_title = vendor_code_class::base64url_decode($zero->title);
				$zero_href = vendor_code_class::base64url_decode($zero->href);
				$zero_target = vendor_code_class::base64url_decode($zero->target);
				$zero_font_icon = vendor_code_class::base64url_decode($zero->font_icon);
				$nav_element_array["$zero_sn"] = array("id" => $zero_id, "name" => "$zero_name", "title" => "$zero_title", "href" => "$zero_href", "target" => "$zero_target", "font_icon" => "$zero_font_icon");
				if($zero->one != false){
					foreach($zero->one as $one){
						$one_sn = $one["sn"];
						$one_id = $one["id"];
						$one_name = vendor_code_class::base64url_decode($one["name"]);
						$one_title = vendor_code_class::base64url_decode($one->title);
						$one_href = vendor_code_class::base64url_decode($one->href);
						$one_target = vendor_code_class::base64url_decode($one->target);
						$one_font_icon = vendor_code_class::base64url_decode($one->font_icon);
						$nav_element_array["$zero_sn"]["$one_sn"] = array("id" => $one_id, "name" => "$one_name", "title" => "$one_title", "href" => "$one_href", "target" => "$one_target", "font_icon" => "$one_font_icon");
						if($one->two != false){
							foreach($one->two as $two){
								$two_sn = $two["sn"];
								$two_id = $two["id"];
								$two_name = vendor_code_class::base64url_decode($two["name"]);
								$two_title = vendor_code_class::base64url_decode($two->title);
								$two_href = vendor_code_class::base64url_decode($two->href);
								$two_target = vendor_code_class::base64url_decode($two->target);
								$two_font_icon = vendor_code_class::base64url_decode($two->font_icon);
								$nav_element_array["$zero_sn"]["$one_sn"]["$two_sn"] = array("id" => $two_id, "name" => "$two_name", "title" => "$two_title", "href" => "$two_href", "target" => "$two_target", "font_icon" => "$two_font_icon");
								if($two->three != false){
									foreach($two->three as $three){
										$three_sn = $three["sn"];
										$three_id = $three["id"];
										$three_name = vendor_code_class::base64url_decode($three["name"]);
										$three_title = vendor_code_class::base64url_decode($three->title);
										$three_href = vendor_code_class::base64url_decode($three->href);
										$three_target = vendor_code_class::base64url_decode($three->target);
										$three_font_icon = vendor_code_class::base64url_decode($three->font_icon);
										$nav_element_array["$zero_sn"]["$one_sn"]["$two_sn"]["$three_sn"] = array("id" => $three_id, "name" => "$three_name", "title" => "$three_title", "href" => "$three_href", "target" => "$three_target", "font_icon" => "$three_font_icon");
										if($three->four != false){
											foreach($three->four as $four){
												$four_sn = $four["sn"];
												$four_id = $four["id"];
												$four_name = vendor_code_class::base64url_decode($four["name"]);
												$four_title = vendor_code_class::base64url_decode($four->title);
												$four_href = vendor_code_class::base64url_decode($four->href);
												$four_target = vendor_code_class::base64url_decode($four->target);
												$four_font_icon = vendor_code_class::base64url_decode($four->font_icon);
												$nav_element_array["$zero_sn"]["$one_sn"]["$two_sn"]["$three_sn"]["$four_sn"] = array("id" => $four_id, "name" => "$four_name", "title" => "$four_title", "href" => "$four_href", "target" => "$four_target", "font_icon" => "$four_font_icon");
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		return $nav_element_array;
	}
}
?>