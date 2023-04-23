<?php
function add_function($unique_terget_id){
	$datatable = session_class::get("post_datatable");
	$link = BASE_URL."backend_category_class/insert_category_function/category/";
	$models = <<<TEXT
<div class="modal fade" id="$unique_terget_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add Category</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="$datatable">
			</div>
			<div class="form-group">
				<label for="sn">Serial No</label>
				<input type="number" class="form-control" id="sn" name="sn">
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title">
			</div>
			<div class="form-group">
				<label for="icon">Icon</label>
				<input type="file" class="form-control" id="icon" name="icon">
			</div>
			<div class="form-group">
				<label for="font_icon">Font Icon</label>
				<input type="text" class="form-control" id="font_icon" name="font_icon">
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

function update_function($framework_category_datatable_value){
	$id = $framework_category_datatable_value['id'];
	$sn = $framework_category_datatable_value['sn'];
	$datatable = $framework_category_datatable_value['datatable'];
	$name = $framework_category_datatable_value['name'];
	$title = $framework_category_datatable_value['title'];
	$icon = $framework_category_datatable_value['icon'];
	$font_icon = $framework_category_datatable_value['font_icon'];
	$link = BASE_URL."backend_category_class/update_category_function/category/&category_id=".$id;
	$models = <<<TEXT
<div class="modal fade" id="update_$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add Category</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="$datatable" value="$datatable">
			</div>
			<div class="form-group">
				<label for="sn">Serial No</label>
				<input type="number" class="form-control" id="sn" name="sn" placeholder="$sn" value="$sn">
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="$name" value="$name">
			</div>
			<div class="form-group">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="$title" value="$title">
			</div>
			<div class="form-group">
				<label for="icon">Icon</label>
				<input type="file" class="form-control" id="icon" name="icon">
				<a class="btn" href="$icon">Open</a>
			</div>
			<div class="form-group">
				<label for="font_icon">Font Icon</label>
				<input type="text" class="form-control" id="font_icon" name="font_icon" placeholder="$font_icon" value="$font_icon">
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