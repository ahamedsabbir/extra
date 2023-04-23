<div class="modal fade" id="bootstrap4error" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<?php 
if(report_class::$report_array != null){
	foreach(report_class::$report_array as $report_key => $report_value){ 
		if($report_value["type"] == "error"){
			echo "<p><b>".$report_key."</b> <i style='color:red;'>".$report_value["name"]."</i></p>";
		}elseif($report_value["type"] == "success"){
			echo "<p><b>".$report_key."</b> <i style='color:green;'>".$report_value["report"]."</i></p>"; 
		}else{
			echo "<p><b>".$report_key."</b> <i style='color:black;'>".$report_value["report"]."</i></p>";
		}		
	}
}
?>
      </div>
    </div>
  </div>
</div>



<div class="modal fade" id="bootstrap5error" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<?php 
if(report_class::$report_array != null){
	foreach(report_class::$report_array as $report_key => $report_value){ 
		if($report_value["type"] == "error"){
			echo "<p><b>".$report_key."</b> <i style='color:red;'>".$report_value["name"]."</i></p>";
		}elseif($report_value["type"] == "success"){
			echo "<p><b>".$report_key."</b> <i style='color:green;'>".$report_value["report"]."</i></p>"; 
		}else{
			echo "<p><b>".$report_key."</b> <i style='color:black;'>".$report_value["report"]."</i></p>";
		}		
	}
}
?>
      </div>
    </div>
  </div>
</div>




<!-- Modal -->
<div class="modal fade" id="newbootstrap5error" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<?php 
if(report_class::$report_array != null){
	foreach(report_class::$report_array as $report_key => $report_value){ 
		if($report_value["type"] == "error"){
			echo "<p><b>".$report_key."</b> <i style='color:red;'>".$report_value["report"]."</i></p>";
		}elseif($report_value["type"] == "success"){
			echo "<p><b>".$report_key."</b> <i style='color:green;'>".$report_value["report"]."</i></p>"; 
		}else{
			echo "<p><b>".$report_key."</b> <i style='color:black;'>".$report_value["report"]."</i></p>";
		}		
	}
}
?>
      </div>
    </div>
  </div>
</div>


