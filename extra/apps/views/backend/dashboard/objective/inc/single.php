<div class="py-5">
    <div class="container">
<?php 
if(isset($question_datatable)){
    foreach($question_datatable as $question_datatable_key => $question_datatable_value){
?>
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
				  <h5 class="card-header">
					  <button type="button" class="btn" onclick="history.back()"><i class="fas fa-backward"></i></button>
					  <?php echo vendor_date_class::natural($question_datatable_value['date']); ?>
					</h5>
				  <div class="card-body">
					<div class="row">
						<div class="col-md-8">
						<h5 class="card-title"><?php echo $question_datatable_value['question']; ?></h5>
					  <ul>
<?php
if(isset($answer_datatable)){
	foreach($answer_datatable as $answer_datatable_key => $answer_datatable_value){
		if($answer_datatable_value["unique_id"] == $question_datatable_value["unique_id"]){
			if($answer_datatable_value["right_answer"] == 1){
				echo "<li style='color:green'>".$answer_datatable_value["answer"]."</li>"; 
			}else{
				echo "<li style='color:red'>".$answer_datatable_value["answer"]."</li>"; 
			}
		}
	}
}
?>
					   </ul>
					 
<?php
if(session_class::get("admin_level") == true){
	if($question_datatable_value['status'] == 0){
		echo "<a class='btn btn-primary' href='".BASE_URL."dashboard_objective_approve_class/approve_que_function/single/&post_id=".$question_datatable_value['id']."'>Approve</a>";
	}else{
		echo "<a class='btn btn-primary' href='".BASE_URL."dashboard_objective_approve_class/unapprove_que_function/single/&post_id=".$question_datatable_value['id']."'>Unapprove</a>";
	}
}
?>
<?php
if(session_class::get("admin_level") == true OR $question_datatable_value["admin_id"] == session_class::get("admin_level")){
?>
					<a class="btn btn-info" href="<?php echo BASE_URL; ?>dashboard_objective_update_class/index_page_function/update/&post_id=<?php echo $question_datatable_value['id']; ?>">Update</a>
					<a class="btn btn-danger" href="<?php echo BASE_URL; ?>dashboard_objective_delete_class/objective_delete_function/loop/&unique_id=<?php echo $question_datatable_value['unique_id']; ?>">Delete</a>
<?php	
}
?>

						</div>
						<div class="col-md-4">
<?php 
foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_value){
	if($framework_admin_datatable_value["id"] == $question_datatable_value["admin_id"]){
		echo "<small>Post By: <b>".$framework_admin_datatable_value["name"].";</b></small>";
	}
}
?>
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		if($framework_category_datatable_value["id"] == $question_datatable_value["category_id"]){
			echo "<small> Category: <b>".$framework_category_datatable_value["name"].";</b></small>";
		}
	}
}												 
?>
							<hr/>
							<p><?php echo $question_datatable_value['description']; ?></p>
						</div>
					</div>
				  </div>
				</div>
			</div>
		</div>
<?php
   }
}
?>
    </div>   
</div> 
