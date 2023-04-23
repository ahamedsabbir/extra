<?php
function text_input_function($name, $plaseholder = false, $value = false){
		$title_array = explode("_", $name);
        $title = implode(" ", $title_array);
        $title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if(isset($_SESSION[$name])){
			$plaseholder = session::get($name);
		}elseif($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			$plaseholder = "Your $name Input Here.";
		}
		if(isset($_SESSION[$name])){
			$value = session::get($value);
		}elseif($value == true){
			$value = $value;
		}else{
			$value = "Your $name Input Here.";
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
   	<div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
      	<input type="text" class="form-control" id="$idFor" name="$name" placeholder="$plaseholder" value="$value">
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
<script type="text/javascript">
function chackText(){
	if(document.forms["myForm"]["$name"].value == ""){
		document.getElementById("#$idFor").style.borderColor = red;
		return false;
	}else{
		return true;
	}
}
</script>
TEXT;
		return $input;
	}


	function number_input_function($name, $plaseholder = false, $value = false, $min = false, $max= false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if($value == true){
			$value = $value;
		}else{
			if(isset($_SESSION[$name])){
				$value = session::get($name);
			}else{
				$value = "Your $name Input Here.";
			}
		}
      	if($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			if(isset($_SESSION[$name])){
				$plaseholder = session::get($name);
			}else{
				$plaseholder = "Your $name Input Here.";
			}
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
   <div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
		<input type="number" class="form-control" id="$idFor" name="$name" min="$min" max="$max" placeholder="$plaseholder" value="$value">
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;	
	}


	function password_input_function($name, $plaseholder = false, $value = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if($value == true){
			$value = $value;
		}else{
			if(isset($_SESSION[$name])){
				$value = session::get($name);
			}else{
				$value = "Your $name Input Here.";
			}
		}
      	if($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			if(isset($_SESSION[$name])){
				$plaseholder = session::get($name);
			}else{
				$plaseholder = "Your $name Input Here.";
			}
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
   <div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
		<input type="password" class="form-control" id="$idFor" name="$name" placeholder="$plaseholder" value="$value">
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;	
	}


	function email_input_function($name, $plaseholder = false, $value = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if($value == true){
			$value = $value;
		}else{
			if(isset($_SESSION[$name])){
				$value = session::get($name);
			}else{
				$value = "Your $name Input Here.";
			}
		}
      	if($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			if(isset($_SESSION[$name])){
				$plaseholder = session::get($name);
			}else{
				$plaseholder = "Your $name Input Here.";
			}
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
  	<div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
		<input type="email" class="form-control" id="$idFor" name="$name" placeholder="$plaseholder" value="$value">
	</div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;
	}
	function url_input_function($name, $plaseholder = false, $value = false){
		$title_array = explode("_", $name);
        $title = implode(" ", $title_array);
        $title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if($value == true){
			$value = $value;
		}else{
			if(isset($_SESSION[$name])){
				$value = session::get($name);
			}else{
				$value = "Your $name Input Here.";
			}
		}
      	if($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			if(isset($_SESSION[$name])){
				$plaseholder = session::get($name);
			}else{
				$plaseholder = "Your $name Input Here.";
			}
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
   	<div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
      	<input type="url" class="form-control" id="$idFor" name="$name" placeholder="$plaseholder" value="$value">
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;
	}
	function mobile_number_validation($name, $plaseholder = false, $value = false, $min = false, $max= false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		if($value == true){
			$value = $value;
		}else{
			if(isset($_SESSION[$name])){
				$value = session::get($name);
			}else{
				$value = "Your $name Input Here.";
			}
		}
      	if($plaseholder == true){
			$plaseholder = $plaseholder;
		}else{
			if(isset($_SESSION[$name])){
				$plaseholder = session::get($name);
			}else{
				$plaseholder = "Your $name Input Here.";
			}
		}
		if(report_class::$report_array != null){
			foreach(report_class::$report_array as $report_key => $report_value){ 
				if($report_value["name"] == $name){
					$reportString = "token: ".$report_key." type: ".$report_value["type"]." report: ".$report_value["report"];
				}
			}
		}
		$input = <<<TEXT
<div class="col-sm-12">
	$reportString
   <div class="input-group has-validation">
    	<span class='input-group-text'><label for="$idFor" class="">$title</label></span>
		<input type="number" class="form-control" id="$idFor" name="$name" min="$min" max="$max" placeholder="$plaseholder" value="$value">
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;	
	}
	function textarea_input_function($name, $content = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$reportString = "";
		$input = <<<TEXT
<div class="col-md-12">
	<span class="input-group-text"><label for="$idFor">$title</label></span>
	<textarea class="form-control" rows="5" id="$idFor" name="$name" placeholder="$title write here...">$content</textarea>
	<div class="invalid-feedback">Name on card is required</div>
</div>
TEXT;
		return $input;
	}
?>
