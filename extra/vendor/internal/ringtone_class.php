<?php
class ringtone_class{
	public function __construct(){}
	public static function ringtone_function($data, $sound){
		if($data != 0){
		echo <<<TEXT
<audio style="display:none;" class="audio" controls autoplay>
    <source src="extra/storage/sound/$sound" type="audio/mpeg"/>
</audio>
TEXT;
		}
	}
}
?>