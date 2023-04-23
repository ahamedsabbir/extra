<?php
class vendor_sweetalert_class{
	public static function vendor_sweetalert_function($datatable, $name){
      	if(isset($datatable) AND $datatable != null){
          foreach($datatable as $datatable_key => $datatable_value){
            if($datatable_value["name"] == $name){
            	$id = $datatable_value["id"];
              	$name = $datatable_value["name"];
              	$title = $datatable_value["title"];
              	$desctiption = vendor_string_class::remove_tag($datatable_value["desctiption"]);
            }
          }
        }
		$html = <<<TEXT
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
swal("Good job!", "You clicked the button!", "success");
</script>
TEXT;
      return $html;
    }
}
?>