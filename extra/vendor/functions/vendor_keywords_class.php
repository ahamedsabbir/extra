<?php
class vendor_keywords_class{
	public static function title_process($title){
      $keywords_array = explode(" ", $title);
      $keywords = implode(", ", $keywords_array). ", ";
      $keywords .= siteinfo_class::$keywords;
      $keywords = trim($keywords,",");
      return $keywords;
	}
}

