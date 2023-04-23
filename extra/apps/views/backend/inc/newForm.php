<?php include(backend_class::inc("newForm/dataInput")); ?>
<?php include(backend_class::inc("newForm/fileInput")); ?>
<?php include(backend_class::inc("newForm/ckeditor")); ?>
<?php
	function radio_select_function($datatable, $name, $id = false){
      	$idFor = $name.rand(100, 999);
		$htmlDtata = "<h4 class='mb-3'>Payment</h4>";
	if($datatable != null){
		foreach($datatable as $datatable_key => $datatable_value){
          	$name = $datatable_value['name'];
			if($id = true AND $datatable_value['id'] == $id){
				$htmlDtata .= <<<TEXT
<div class="form-check">
   <input id="$idFor" name="paymentMethod" type="radio" class="form-check-input" value="$name" checked>
   <label class="form-check-label" for="$idFor">Credit card</label>
</div>
TEXT;
			}else{
				$htmlDtata .= <<<TEXT
<div class="form-check">
   <input id="$idFor" name="paymentMethod" type="radio" class="form-check-input" value="$name">
   <label class="form-check-label" for="$idFor">Credit card</label>
</div>
TEXT;
			}
		}
    }
		return $htmlDtata;
	}


	function check_select_function($datatable, $name, $id = false){
      	$idFor = $name.rand(100, 999);
		$htmlDtata = "<h4 class='mb-3'>Payment</h4>";
	if($datatable != null){
		foreach($datatable as $datatable_key => $datatable_value){
			if($id = true AND $datatable_value['id'] == $id){
				$htmlDtata .= <<<TEXT
<div class="form-check">
  <input type="checkbox" class="form-check-input" id="$idFor">
  <label class="form-check-label" for="$idFor">Shipping address is the same as my billing address</label>
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
      	$title_array = explode("_", $name);
        $title = implode(" ", $title_array);
        $title = ucwords($title);
      	$idFor = $name.rand(100, 999);
		$htmlDtata = <<<TEXT
<div class="col-md-12">
  <div class="input-group has-validation">
  	<span class='input-group-text'><label for="$idFor">$title</label></span>
    <select class="form-select" id="$idFor" name="$name">
      <option value="">Choose...</option>
TEXT;
	if(isset($datatable)){
		foreach($datatable as $datatable_key => $datatable_value){
			$datatable_name = $datatable_value['name'];
			$datatable_id = $datatable_value['id'];
			if($id == true AND $datatable_id == $id){
				$htmlDtata .= "<option value='$datatable_id' selected>$datatable_name</option>";
			}else{
				$htmlDtata .= "<option value='$datatable_id'>$datatable_name</option>";
			}
		}
    }
		$htmlDtata .= <<<TEXT
  </select>
  </div>
  <div class="invalid-feedback">
	Please select a valid country.
  </div>
</div>          
TEXT;
		return $htmlDtata;
	}
	
	function submit_input_function($name, $value){
      	$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
?>
<div class="col-md-12">
  <button class="btn btn-primary btn-lg" type="submit" name="<?php echo $name; ?>" value="<?php echo $value; ?>"><?php echo $title; ?></button>
  <?php echo report_class::chack_report("newbootstrap5error"); ?>
</div>
<?php
    }

?>