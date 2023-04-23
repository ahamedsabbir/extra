<?php
class vendor_share_class{
	public static function share_function($link){
		$link_array = explode(", ", $link);
		$post_link = "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
		foreach($link_array as $link_key => $link_vlaue){
			switch ($link_vlaue){
			  case "google":
				$social_type = "google";
				$share_link = "https://plus.google.com/share?url=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "facebook":
				$social_type = "facebook";
				$share_link = "https://www.facebook.com/sharer.php?u=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "twitter":
				$social_type = "twitter";
				$share_link = "http://twitter.com/share?text=Visit the link &url=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "instagram":
				$social_type = "instagram";
				$share_link = "https://www.facebook.com/sharer.php?u=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "telegram":
				$social_type = "telegram";
				$share_link = "https://www.facebook.com/sharer.php?u=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "linkedin":
				$social_type = "linkedin";
				$share_link = "http://www.linkedin.com/shareArticle?mini=true&url=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "youtube":
				$social_type = "youtube";
				$share_link = "https://www.facebook.com/sharer.php?u=$post_link";
				$font_icon_class = "fa fa-$social_type";
				break;
			  case "pinterest":
				$social_type = "pinterest";
				$share_link = "https://pinterest.com/pin/create/button/?url=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
				break;
			  case "email":
				$social_type = "Email";
				$share_link = "mailto:?subject=".WEBSITE."&body=$post_link";
				$font_icon_class = "fa fa-share";
				break;
			  default:
				$social_type = "google";
				$share_link = "https://plus.google.com/share?url=$post_link";
				$font_icon_class = "fa fa-$social_type-f";
			}
		echo <<<TEXT
<li class="list-inline-item">
	<a class="btn btn-social-o $social_type" href="$share_link">
		<i class="$font_icon_class"></i>
		<span>$social_type</span>
	</a>
</li>
TEXT;
		}
	}	
}
?>

