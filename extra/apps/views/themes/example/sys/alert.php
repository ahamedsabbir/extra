<?php 
$theme = simplexml_load_file("extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml");
foreach($theme->theme as $theme){
  if($theme["id"] == 1 AND $theme["status"] == 1 AND $theme["name"] == $theme_name){
    if($theme->message == 1){
    	echo vendor_getMsg_class::get();
    }
  }
}
?>