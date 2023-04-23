<?php
function add_function($unique_terget_id){
	$datatable = session_class::get("post_datatable");
	$link = BASE_URL."backend_layerOne_class/insert_layerOne_function/layerOne/";
	$models = <<<TEXT
<div class="modal fade" id="$unique_terget_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add layerOne</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" value="$datatable">
			</div>
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="icon">Icon:</label>
				<input type="file" class="form-control" id="icon" name="icon">
			</div>
			<div class="form-group">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title">
			</div>
			<div class="form-group">
				<label for="desctiption">Desctiption:</label>
				<textarea type="text" class="form-control" id="desctiption" name="desctiption"></textarea>
			</div>
			<button type="submit" class="btn btn-default" name="submit" value="insert">Submit</button>   
		</form>
	  </div>
	</div>
  </div>
</div>
TEXT;
	return $models;	
}

function update_function($framework_layerone_datatable_value){
	$id = $framework_layerone_datatable_value['id'];
	$datatable = $framework_layerone_datatable_value['datatable'];
	$name = $framework_layerone_datatable_value['name'];
	$icon = $framework_layerone_datatable_value['icon'];
	$title = $framework_layerone_datatable_value['title'];
	$desctiption = $framework_layerone_datatable_value['desctiption'];
	$link = BASE_URL."backend_layerOne_class/update_layerOne_function/layerOne/&layerOne_id=".$id;
	$models = <<<TEXT
<div class="modal fade" id="update_$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add layerOne</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="$datatable" value="$datatable it not change.">
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="$name" value="$name">
			</div>
			<div class="form-group">
				<label for="icon">Icon</label>
				<input type="file" class="form-control" id="icon" name="icon">
				<a class="btn" href="$icon">Open</a>
			</div>
			<div class="form-group">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="$title" value="$title">
			</div>
			<div class="form-group">
				<label for="desctiption">Desctiption:</label>
				<textarea class="form-control" id="desctiption" name="desctiption" placeholder="$desctiption">$desctiption</textarea>
			</div>
				<button type="submit" class="btn btn-default" name="submit" value="update">Submit</button>   
		</form>
	  </div>
	</div>
  </div>
</div>
TEXT;
	return $models;	
}