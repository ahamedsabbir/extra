<?php
class vendor_advertise_class{
	public static function vendor_advertise_function($datatable, $name){
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
<div class="card">
  <div class="card-body">
	<h5 class="card-title">$name</h5>
    <h6 class="card-subtitle mb-2 text-muted">$title</h6>
    <span>$desctiption</span>
    <a href="index.php?url=advertise/click_count_function/index/&post_id=$id">Enter</a>
  </div>
</div>
TEXT;
      return $html;
    }
	public static function vendor_advertise_popup($datatable, $name){
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
<div class="modal" id="$name" tabindex="">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">$title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="$name" onclick="hidemodel()">X</button>
      </div>
      <div class="modal-body">
		$desctiption
      	<a href="index.php?url=advertise/click_count_function/index/&post_id=$id">Enter</a>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
window.onload = function () {
	OpenBootstrapPopup();
};
function OpenBootstrapPopup() {
	$("#$name").modal('show');
}
function hidemodel(){
	$("#$name").modal('hide');  
}
</script>
TEXT;
      return $html;
    }
}
?>