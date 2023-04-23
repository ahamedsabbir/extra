<!doctype html>
<html class="no-js" lang="en">
	<head>
		<?php include(backend_class::inc("head", $plugins_type, $plugins)); ?>
	</head>
<body>
	<?php include(backend_class::inc("header", $plugins_type, $plugins)); ?>
	<main class="py-5">
		<div class="container">
			<div class="text-center"><h1>Insert Question</h1></div>
			<div class="text-center">
				</div>
					<form role="form py-5" action="<?php echo BASE_URL."dashboard_objective_insert_class/objective_insert_function/loop"; ?>" method="post">
						<div class="row">
							<div class="col-md-12 py-4">
								<label for="">Question</label>
								<textarea class="form-control editor" id="content" name="question"></textarea>
							</div>
							<div class="col-md-12 py-2">
								<label for="">Select department</label>
								<select required class="form-control" id="" name="category_id">
<?php
foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
	echo "<option value='".$framework_category_datatable_value['id']."'>".$framework_category_datatable_value['name']."</option>";
}
?>
								</select>
							</div>
							<div class="col-md-6 py-2">
								<label for="">Ans 01</label>
								<input required type="text" class="form-control" id="" name="ans[]">
							</div>
							<div class="col-md-6 py-2">
								<label for="">Ans 02</label>
								<input required type="text" class="form-control" id="" name="ans[]">
							</div>
							<div class="col-md-6 py-4">
								<label for="">Ans 03</label>
								<input required type="text" class="form-control" id="" name="ans[]">
							</div>
							<div class="col-md-6 py-4">
								<label for="">Ans 04</label>
								<input required type="text" class="form-control" id="" name="ans[]">
							</div>
							<div class="col-md-12 py-2">
								<label for="">Right Ans</label>
								<input required type="text" class="form-control" id="" name="right_ans">
							</div>
							<div class="col-md-12 py-2">
								<label for="level">Level</label>
								<select class="form-control" id="level" name="level"> 
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>
							<div class="col-md-12 py-4">
								<label for="description">Description</label>
								<textarea class="form-control" id="description" name="description"></textarea>
							</div>
							<div class="col-md-12 py-4">
								<button type="submit" class="btn btn-primary" name="submit" value="insert">Save</button> 
							</div>	  
						</div>
					</form>	
				</div>  
			</div>
		</main>
		<?php include(backend_class::inc("footer")); ?>
	</body>
	<?php include(backend_class::inc("foot", $plugins_type, $plugins)); ?>
</html>