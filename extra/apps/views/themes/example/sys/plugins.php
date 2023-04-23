<?php
$theme = simplexml_load_file("extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml");
foreach($theme->theme as $theme){
  if($theme["id"] == 1 AND $theme["status"] == 1 AND $theme["name"] == $theme_name){
    if($theme->fixed_button == 1){
		if(session_class::get("admin_login") == true){
			include(backend_class::inc("fixed_button"));
		}
    }
    if($theme->advertise == 1){
		echo vendor_advertise_class::vendor_advertise_popup($framework_advertise_datatable, "google");
    }
    if($theme->scroll_button == 1){
    	include(backend_class::inc("scroll_button"));
    }
  }
}
?>