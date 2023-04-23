<?php
include(theme_class::sys("security"));
include(theme_class::sys("variables"));
include(theme_class::helper("record"));
if(getenv('CORE_MENU') == 1){
	if(session_class::get("admin_login") == true){
		include(theme_class::sys("control"));
	}
}
?>