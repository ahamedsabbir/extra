<?php
function add_function($unique_terget_id, $framework_layerone_datatable){
	$datatable = session_class::get("post_datatable");
	$link = BASE_URL."backend_layerTwo_class/insert_layerTwo_function/layerTwo/";
?>
<div class="modal fade" id="<?php echo $unique_terget_id; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add layerTwo</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="<?php echo $link; ?>" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="<?php echo $datatable; ?>" value="<?php echo $datatable; ?>">
			</div>
			<div class="form-group">
				<label for="layerOne">layer One</label>
				<select id="layerOne" class="form-control" name="layerOne">
				<option>Select</option>
<?php
foreach($framework_layerone_datatable as $framework_layerone_datatable_key => $framework_layerone_datatable_value){
	$layerOne_id = $framework_layerone_datatable_value["id"];
	$layerOne_name = $framework_layerone_datatable_value["name"];
	$framework_layerone_datatable = $framework_layerone_datatable_value["datatable"];
	if($framework_layerone_datatable_value["datatable"] == $datatable){
		echo "<option value='$layerOne_id' style='color:red;'>$layerOne_name&nbsp;&nbsp;&nbsp;$framework_layerone_datatable</option>";
	}else{
		echo "<option value='$layerOne_id'>$layerOne_name&nbsp;&nbsp;&nbsp;$framework_layerone_datatable</option>";	
	}
}
?>
				</select>
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
				<label for="desctiption">Desctiption</label>
              	<textarea type="text" class="form-control" id="desctiption" name="desctiption"></textarea>
			</div>
			<button type="submit" class="btn btn-default" name="submit" value="insert">Submit</button>   
		</form>
	  </div>
	</div>
  </div>
</div>
<?php
}
function update_function($framework_layertwo_datatable_value, $framework_layerone_datatable){
	$id = $framework_layertwo_datatable_value['id'];
	$datatable = $framework_layertwo_datatable_value['datatable'];
	$name = $framework_layertwo_datatable_value['name'];
	$title = $framework_layertwo_datatable_value['title'];
	$icon = $framework_layertwo_datatable_value['icon'];
	$desctiption = $framework_layertwo_datatable_value['desctiption'];
	$link = BASE_URL."backend_layerTwo_class/update_layerTwo_function/layerTwo/&layerTwo_id=".$id;
?>
<div class="modal fade" id="<?php echo "update_".$id; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add layerTwo</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="<?php echo $link; ?>" method="post" class="form" enctype="multipart/form-data">
			<div class="form-group">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="<?php echo $datatable; ?>" value="<?php echo $datatable; ?>">
			</div>
			<div class="form-group">
				<label for="layerOne">layer One</label>
				<select id="layerOne" class="form-control" name="layerOne">
<?php
foreach($framework_layerone_datatable as $framework_layerone_datatable_key => $framework_layerone_datatable_value){
	$layerOne_id = $framework_layerone_datatable_value["id"];
	$layerOne_name = $framework_layerone_datatable_value["name"];
	$framework_layerone_datatable = $framework_layerone_datatable_value["datatable"];
	if($framework_layerone_datatable_value["id"] == $framework_layertwo_datatable_value['layerOne_id']){
		echo "<option value='$layerOne_id' style='color:green;' selected>$layerOne_name&nbsp;&nbsp;&nbsp;$framework_layerone_datatable</option>";
	}elseif($framework_layerone_datatable_value["datatable"] == session_class::get("post_datatable")){
		echo "<option value='$layerOne_id' style='color:red;'>$layerOne_name&nbsp;&nbsp;&nbsp;$framework_layerone_datatable</option>";
	}else{
		echo "<option value='$layerOne_id'>$layerOne_name&nbsp;&nbsp;&nbsp;$framework_layerone_datatable</option>";	
	}
}
?>
				</select>
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="<?php echo $name; ?>" value="<?php echo $name; ?>">
			</div>
			<div class="form-group">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="<?php echo $title; ?>" value="<?php echo $title; ?>">
			</div>
			<div class="form-group">
				<label for="icon">Icon&nbsp;<a class="" href="<?php echo $icon; ?>">Open</a></label>
				<input type="file" class="form-control" id="icon" name="icon">
			</div>
			<div class="form-group">
				<label for="desctiption">Desctiption</label>
				<textarea class="form-control" id="desctiption" name="font_icon"><?php echo $desctiption; ?></textarea>
			</div>
				<button type="submit" class="btn btn-default" name="submit" value="update">Submit</button>   
		</form>
	  </div>
	</div>
  </div>
</div>
<?php	
}
?>