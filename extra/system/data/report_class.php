<?php
class report_class{
	public static $report_array = array();
	public function __construct(){}
	public static function set_report($name, $type, $report){
		self::$report_array[$name.substr(md5(time().rand(100, 900)), 0, 5)] = ["name"=>$name, "type"=>$type, "report"=>$report];
		$error_handle = fopen('extra/resources/report/'.date("j-m-Y").'_report.txt', 'a');
		fwrite($error_handle, date("g:i a")." ".$type." ".$name.":- ".$report);
		fwrite($error_handle, "\n");
		fclose($error_handle);
	}
	public static function chack_report($id = "bootstrap5error"){
		if(!empty(self::$report_array)){
$notification = "
<button type='button' class='btn btn-danger btn-lg' data-bs-toggle='modal' data-bs-target='#$id'>
	<i class='fa-solid fa-circle-exclamation'></i>
</button>
";
		}else{
$notification = "
<button type='button' class='btn btn-success btn-lg' data-bs-toggle='modal' data-bs-target='#$id'>
	<i class='fa-solid fa-circle-exclamation'></i>
</button>
";	
		}
		return $notification;
	}
}
?>