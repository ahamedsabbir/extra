<?php
class vendor_copy_class{
	public static function copy_function($string, $button){
		echo <<<TEXT
<input class="d-none" type="text" value="$string" id="myInput">
<button class="btn" onclick="myFunction()">$button</button>
<script>
function myFunction() {
  var copyText = document.getElementById("myInput");
  copyText.select();
  copyText.setSelectionRange(0, 99999);
  navigator.clipboard.writeText(copyText.value);
  alert("Copied the text: " + copyText.value);
}
</script>
TEXT;
	}	
}
?>