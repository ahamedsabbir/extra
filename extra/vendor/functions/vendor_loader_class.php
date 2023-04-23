<?php
class vendor_loader_class{
	public static function loader_function(){
$models = <<<TEXT
<script src="https://cdn.jsdelivr.net/gh/AmagiTech/JSLoader/amagiloader.js"></script>
<script>
 AmagiLoader.show();
 setTimeout(() => {
    AmagiLoader.hide();
 }, 3000);
</script>
TEXT;
	return $models;
	}
}
