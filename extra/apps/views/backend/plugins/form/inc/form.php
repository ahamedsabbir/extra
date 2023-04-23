<?php

	function text_input_function($name, $value = false){
		$title = ucfirst($name);
		if($value == true){
			$value = $value;
		}else{
			$value = "text";
		}
		$input = <<<TEXT
<div class="col-sm-12">
   <label for="$name" class="form-label">$title</label>
	<input type="text" class="form-control" id="$name" name="$name" placeholder="$value" value="$value">
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;
	}


	function number_input_function($name, $value = false, $min = false, $max= false){
		$title = ucfirst($name);
		if($value == true){
			$value = $value;
		}else{
			$value = "text";
		}
		$input = <<<TEXT
<div class="col-sm-12">
   <label for="$name" class="form-label">$title</label>
	<input type="number" class="form-control" id="$name" name="$name" min="$min" max="$max" placeholder="$value" value="$value">
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;	
	}


	function password_input_function($name, $value = false){
		$title = ucfirst($name);
		if($value == true){
			$value = $value;
		}else{
			$value = "text";
		}
		$input = <<<TEXT
<div class="col-sm-12">
   <label for="$name" class="form-label">$title</label>
	<input type="password" class="form-control" id="$name" name="$name" placeholder="$value" value="$value">
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;	
	}


	function email_input_function($name, $value = false){
		$title = ucfirst($name);
		if($value == true){
			$value = $value;
		}else{
			$value = "text";
		}
		$input = <<<TEXT
<div class="col-sm-12">
   <label for="$name" class="form-label">$title</label>
	<input type="email" class="form-control" id="$name" name="$name" placeholder="$value" value="$value">
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;
	}


	function textarea_input_function($name, $content = false){
		$title = ucfirst($name);
		$array_key = array("folder");
		$array_value = array("blog/");
		$link = address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', $array_key, $array_value);
		$input = <<<TEXT
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<div class="col-md-12">
	<label for="$name" class="form-label">Name on card</label>
	<textarea class="form-control" id="$name" name="$name" placeholder="$name write here...">$content</textarea>
	<div class="invalid-feedback">Name on card is required</div>
</div>
<script>
  var editor=CKEDITOR.replace('$name', {
	extraPlugins : 'filebrowser',
	filebrowserBrowseUrl:'browser.php?type=Images',
	filebrowserUploadMethod:"form",
	filebrowserUploadUrl:"$link"
  });
</script> 
TEXT;
		return $input;
	}


	function file_input_function($name, $file = false){
		$title = ucfirst($name);
		$input = <<<TEXT
<div class="col-12">
  <label for="$name" class="form-label">$title</label>
  <div class="input-group has-validation">
	<input type="file" class="form-control" id="$name" name="$name" value="">
	<span class="input-group-text"><a style="text-decoration: none;" href="$file">view</a></span>
	<div class="invalid-feedback">Name on card is required</div>
  </div>
  <small class="text-muted">5mb file</small>
</div>
TEXT;
		return $input;
	}


	function radio_select_function($datatable, $name, $id = false){
		$htmlDtata = "<h4 class='mb-3'>Payment</h4>";
	if($datatable != null){
		foreach($datatable as $datatable_key => $datatable_value){
          	$name = $datatable_value['name'];
			if($id = true AND $datatable_value['id'] == $id){
				$htmlDtata .= <<<TEXT
<div class="form-check">
   <input id="credit" name="paymentMethod" type="radio" class="form-check-input" value="$name" checked>
   <label class="form-check-label" for="credit">Credit card</label>
</div>
TEXT;
			}else{
				$htmlDtata .= <<<TEXT
<div class="form-check">
   <input id="credit" name="paymentMethod" type="radio" class="form-check-input" value="$name">
   <label class="form-check-label" for="credit">Credit card</label>
</div>
TEXT;
			}
		}
    }
		return $htmlDtata;
	}


	function check_select_function($datatable, $name, $id = false){
		$htmlDtata = "<h4 class='mb-3'>Payment</h4>";
	if($datatable != null){
		foreach($datatable as $datatable_key => $datatable_value){
			if($id = true AND $datatable_value['id'] == $id){
				$htmlDtata .= <<<TEXT
<div class="form-check">
  <input type="checkbox" class="form-check-input" id="same-address">
  <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
</div>
TEXT;
			}else{
				$htmlDtata .= <<<TEXT
<div class="form-check">
  <input type="checkbox" class="form-check-input" id="save-info">
  <label class="form-check-label" for="save-info">Save this information for next time</label>
</div>
TEXT;
			}
		}
    }
		return $htmlDtata;
	}
  
  
	function select_input_function($datatable, $name, $id = false){
		$htmlDtata = <<<TEXT
<div class="col-md-12">
  <label for="country" class="form-label">Country</label>
  <select class="form-select" id="country">
	<option value="">Choose...</option>
TEXT;
	if(isset($datatable)){
		foreach($datatable as $datatable_key => $datatable_value){
			$name = $datatable_value['name'];
			$id = $datatable_value['id'];
			if($id = true AND $datatable_value['id'] == $id){
				$htmlDtata .= "<option value='$id' selected>$name</option>";

			}else{
				$htmlDtata .= "<option value='$id' selected>$name</option>";
			}
		}
    }
		$htmlDtata .= <<<TEXT
  </select>
  <div class="invalid-feedback">
	Please select a valid country.
  </div>
</div>          
TEXT;
		return $htmlDtata;
	}
?>