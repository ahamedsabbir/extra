<div class="modal fade" id="surveyupdate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<form action="<?php echo BASE_URL."user_profile_class/survey_update_function/profile/"; ?>" method="POST">
		<div class="modal-content">
		  <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		  </div>
		  <div class="modal-body">
			
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
?>					
						  <input class="form-check-input" type="checkbox" name="survey[]" value="<?php echo $framework_category_datatable_value["name"]; ?>" id="<?php echo $framework_category_datatable_value["name"]; ?>">
						  <label class="form-check-label" for="<?php echo $framework_category_datatable_value["name"]; ?>"><?php echo $framework_category_datatable_value["name"]; ?></label>
<?php
	}
}
?>
				
		  </div>
		  <div class="modal-footer">
			<button type="submit" name="submit" value="update" class="btn btn-primary py-1">Save</button>
		  </div>
		</div>
	</form>	
  </div>
</div>