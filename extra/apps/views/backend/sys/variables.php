<?php
$page_link = $_SERVER["REQUEST_SCHEME"]."://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
$code_page_link = vendor_code_class::base64url_encode($page_link);
$send_page_link = "page_url=$code_page_link";
?>