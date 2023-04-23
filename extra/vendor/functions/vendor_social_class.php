<?php
class vendor_social_class{
	public static function social_function($link){
		$link_array = explode(", ", $link);
		foreach($link_array as $link_key => $link_vlaue){
			if(strpos($link_vlaue, "google")){
				$action_link = $link_vlaue;
				$social_type = "google";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "facebook")){
				$action_link = $link_vlaue;
				$social_type = "facebook";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "twitter")){
				$action_link = $link_vlaue;
				$social_type = "twitter";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "instagram")){
				$action_link = $link_vlaue;
				$social_type = "instagram";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "telegram")){
				$action_link = $link_vlaue;
				$social_type = "telegram";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "linkedin")){
				$action_link = $link_vlaue;
				$social_type = "linkedin";
				$font_icon_class = "fa fa-$social_type-f";
			}elseif(strpos($link_vlaue, "youtube")){
				$action_link = $link_vlaue;
				$social_type = "youtube";
				$font_icon_class = "fa fa-$social_type";
			}else{
				$action_link = $link_vlaue;
				$social_type = "other";
				$font_icon_class = "fa-solid fa-share-nodes";
			}
		echo <<<TEXT
<li class="list-inline-item">
	<a class="btn btn-social-o $social_type" href="$action_link" target="_blank">
		<i class="$font_icon_class"></i>
		<span>$social_type</span>
	</a>
</li>
TEXT;
		}
	}	
}
?>