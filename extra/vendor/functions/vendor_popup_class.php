<?php
class vendor_popup_class{
	public static function bootstrap5_auto_popup($datatable, $name){
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
<div class="modal" id="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">$title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<a href="index.php?url=advertise/click_count_function/index/&post_id=$id">
        	$desctiption
        </a>
      </div>
      <div class="modal-footer">
        <p>israt ahamed sabbir</p>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  window.onload = function () {
    OpenBootstrapPopup();
  };
  function OpenBootstrapPopup() {
    $("#modal").modal('show');
  }
</script>
TEXT;
      return $html;
    }
	public static function bootstrap4_auto_popup($datatable, $name){
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
<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">$title</h5>
      </div>
      <div class="modal-body">
        <a href="index.php?url=advertise/click_count_function/index/&post_id=$id">
        	$desctiption
        </a>
      </div>
	  <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  window.onload = function () {
    OpenBootstrapPopup();
  };
  function OpenBootstrapPopup() {
    $("#modal").modal('show');
  }
</script>
TEXT;
      return $html;
    }
}
?>