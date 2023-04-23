<?php
$scriptUrl = $_SERVER["SCRIPT_NAME"];
$scriptArray = explode("/", $scriptUrl);
$scriptName = end($scriptArray);
$scriptTrim = trim($scriptName,".php");
include "extra/public/element/header.php";
$header = new header();
include "extra/system/info/framework.php";
include_once "extra/system/variables/env.php";
(new DotEnv('.env'))->load();
include_once "extra/system/variables/config.php";
include_once "extra/system/variables/config_class.php";
include_once "extra/system/variables/config_variable_class.php";
include_once "extra/system/variables/array_variable_class.php"; 
$variable = new systems\variables\config_variable_class();
include "extra/vendor/internal/lock_class.php";
include "extra/vendor/internal/autoload_class.php";
include "extra/vendor/internal/error_class.php";
include "extra/vendor/internal/array_class.php";
include "extra/vendor/internal/ringtone_class.php";
$autoload_class->autoload_function("extra/system/data/");
if($scriptTrim == "index"){
	include_once "extra/system/database/database_class.php";
}else{
	
}
$session_object = new session_class();
$siteinfo_object = new siteinfo_class();
$autoload_class->autoload_function("extra/vendor/functions/");
$autoload_class->autoload_function("extra/vendor/functions/new/");
$autoload_class->autoload_function("extra/vendor/functions/scripting/");
$autoload_class->autoload_function("extra/vendor/thirdParty/");
$vendor_pagenation_object = new vendor_pagenation_class();
$autoload_class->autoload_function("extra/vendor/theme/");
if($scriptTrim == "index"){
	include_once "extra/system/database/main_model_class.php";
}else{
	
}
$autoload_class->autoload_function("extra/system/looder/");
include "extra/system/mvc/controller.php";
include "extra/system/mvc/model.php";
include "extra/system/mvc/data.php";
include "extra/system/mvc/view.php";
$autoload_class->autoload_function("extra/system/mvc/controls/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/controllers/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/controllers/backend/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/controllers/frontend/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/controllers/plugins/");
$autoload_class->autoload_function("extra/system/mvc/controls/main/controllers/soft/");
new settings_class();
include_once "extra/system/variables/variables.php";
?>