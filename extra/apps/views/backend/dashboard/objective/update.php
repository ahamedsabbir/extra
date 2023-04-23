<!doctype html>
<html class="no-js" lang="en">
	<head>
		<?php include(backend_class::inc("head", $plugins_type, $plugins)); ?>
	</head>
<body>
	<?php include(backend_class::inc("header", $plugins_type, $plugins)); ?>
	<main class="py-5">
<?php
if(isset($question_datatable)){
	foreach($question_datatable as $question_datatable_key => $question_datatable_value){
?>
		<section class="container">
			<div class="text-center">
				</div>
					<form role="form py-5" action="<?php echo BASE_URL."dashboard_objective_update_class/objective_update_function/update/&post_id=",$question_datatable_value["id"]; ?>" method="POST">
						<div class="row">
							<div class="col-md-12 py-4">
								<label for="">Question</label>
								<textarea class="form-control editor" id="content" name="question"><?php echo $question_datatable_value["question"]; ?></textarea>
							</div>
							<div class="col-md-12 py-2">
								<label for="">Select Category</label>
								<select required class="form-control" id="" name="category_id">
<?php
foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
	if($framework_category_datatable_value["id"] == $question_datatable_value["category_id"]){
		echo "<option value='".$framework_category_datatable_value['id']."' selected>".$framework_category_datatable_value['name']."</option>";
	}else{
		echo "<option value='".$framework_category_datatable_value['id']."'>".$framework_category_datatable_value['name']."</option>";
	}
}
?>
								</select>
							</div>
<?php
if(isset($answer_datatable)){
	foreach($answer_datatable as $answer_datatable_key => $answer_datatable_value){
		if($answer_datatable_value["unique_id"] == $question_datatable_value["unique_id"]){
?>
							<div class="col-md-6 py-2">
								<label for="">Ans 01</label>
								<input required type="text" class="form-control" id="" name="ans[]" value="<?php echo $answer_datatable_value["answer"]; ?>">
							</div>
<?php
		}
	}
}
?>
<?php
if(isset($answer_datatable)){
	foreach($answer_datatable as $answer_datatable_key => $answer_datatable_value){
		if($answer_datatable_value["unique_id"] == $question_datatable_value["unique_id"]){
			if($answer_datatable_value["right_answer"] == true){
?>
							<div class="col-md-12 py-2">
								<label for="">Right Answer</label>
								<input required type="text" class="form-control" id="" name="right_answer" value="<?php echo $answer_datatable_value["answer"]; ?>">
							</div>
<?php
			}
		}
	}
}
?>						
							<div class="col-md-12 py-2">
								<label for="level">Level</label>
								<select class="form-control" id="level" name="level">
<?php
for($k=1; $k<=3;$k++){
	if($question_datatable_value["level"] == $k){
		echo "<option value='".$k."' selected>".$k."</option>";
	}else{
		echo "<option value='".$k."'>".$k."</option>";
	}
}
?>
								</select>
							</div>
							<div class="col-md-12 py-4">
								<label for="description">Description</label>
								<textarea class="form-control" id="description" name="description"><?php echo $question_datatable_value["description"]; ?></textarea>
							</div>
							<div class="col-md-12 py-4">
								<button type="submit" class="btn btn-primary" name="submit" value="insert">Update</button> 
							</div>	  
						</div>
					</form>	
				</section>
<?php
	}
}
?>				
		</main>
		<?php include(backend_class::inc("footer")); ?>
	</body>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)); ?>
</html>