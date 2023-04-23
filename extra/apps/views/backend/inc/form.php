
<?php
echo backend_class::style("form");
function text_input($name, $value = false){
  	$title_array = explode("_", $name);
  	$title = implode(" ", $title_array);
	$title = ucwords($title);
    if($value == true){
		$value = $value;
	}else{
		$value = "text";
	}
	$input = <<<TEXT
<div class="form-row">
	<div class="name">$title</div>
	<div class="value">
		<input class="input--style-6" type="text" name="$name" placeholder="$value" value="$value">
	</div>
</div>
TEXT;
	return $input;
}
function number_input($name, $value = false, $min = false, $max= false){
	$title_array = explode("_", $name);
  	$title = implode(" ", $title_array);
	$title = ucwords($title);
	if($value == true){
		$value = $value;
	}else{
		$value = "text";
	}
	$input = <<<TEXT
<div class="form-row">
	<div class="name">$title</div>
	<div class="value">
		<input class="input--style-6" type="number" name="$name" min="$min" max="$max" placeholder="$value" value="$value"/>
	</div>
</div>
TEXT;
	return $input;	
}
function password_input($name, $value = false, $min = false, $max= false){
	$title_array = explode("_", $name);
  	$title = implode(" ", $title_array);
	$title = ucwords($title);
	if($value == true){
		$value = $value;
	}else{
		$value = "text";
	}
	$input = <<<TEXT
<div class="form-row">
	<div class="name">$title</div>
	<div class="value">
		<input class="input--style-6" type="password" name="$name" placeholder="$value" value="$value"/>
	</div>
</div>
TEXT;
	return $input;	
}
function file_input($name, $file = false){
	$title_array = explode("_", $name);
  	$title = implode(" ", $title_array);
	$title = ucwords($title);
	$input = <<<TEXT
<div class="form-row">
	<div class="name">$title</div>
	<div class="value">
		<div class="input-group js-input-file">
			<input class="input-file" type="file" name="$name" id="$name" value="">
			<label class="label--file" for="$name">$name</label>
			<span class="input-file__info">No picture chosen.</span>
		</div>
		<div class="label--desc">Upload your File. max 5mb</div>
		<small><a href="$file">View</a></small>
	</div>
</div>
TEXT;
	return $input;
}
function textarea_input($name, $content = false){
	$title_array = explode("_", $name);
  	$title = implode(" ", $title_array);
	$title = ucwords($title);
	$array_key = array("folder");
	$array_value = array("blog/");
	$link = address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', $array_key, $array_value);
	$input = <<<TEXT
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<div class="form-row">
	<div class="name">$title</div>
	<div class="value">
		<div class="input-group">
			<textarea id="$name" class="textarea--style-6" name="$name" placeholder="$name write here...">$content</textarea>
		</div>
	</div>
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
function category_select($datatable, $name, $id = false){
?>
<div class="form-row">
	<div class="name">Category</div>
	<div class="value">
		<div class="input-group">
			<select class="input--style-6 category" name="<?php echo $name; ?>">
<?php
if(isset($datatable)){
	foreach($datatable as $datatable_key => $datatable_value){
		if($id = true AND $datatable_value['id'] == $id){
?>
				<option value="<?php echo $datatable_value['id']; ?>" selected><?php echo $datatable_value['name']; ?></option>
<?php
		}else{
?>
				<option value="<?php echo $datatable_value['id']; ?>"><?php echo $datatable_value['name']; ?></option>
<?php
		}
	}
}
?>
			</select>
		</div>
	</div>
</div>
<?php
}
echo backend_class::script("form");
?>