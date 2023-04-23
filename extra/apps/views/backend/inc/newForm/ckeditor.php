<?php
	function ckeditor_textarea_function($name, $content = false){
		$title = ucfirst($name);
      	$idFor = $name.rand(100, 999);
		$array_key = array("ckfolder");
		$array_value = array("ckEditor/");
		$link = address_class::request_method('backend_ckeditor_class', 'upload_function', 'index', $array_key, $array_value);
		$input = <<<TEXT
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<div class="col-md-12">
	<label for="$idFor" class="form-label"></label>
	<textarea class="form-control" id="$idFor" name="$name" placeholder="$name write here...">$content</textarea>
	<div class="invalid-feedback">Name on card is required</div>
</div>
<script>
  var editor=CKEDITOR.replace('$idFor', {
	extraPlugins : 'filebrowser',
	filebrowserBrowseUrl:'browser.php?type=Images',
	filebrowserUploadMethod:"form",
	filebrowserUploadUrl:"$link"
  });
</script> 
TEXT;
		return $input;
	}
?>