<?php
function add_function($unique_terget_id, $framework_group_datatable){
	$datatable = session_class::get("post_datatable");
	$link = BASE_URL."backend_list_class/insert_list_function/list/";
?>
<div class="modal fade" id="<?php echo $unique_terget_id; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add List</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="<?php echo $link; ?>" method="post" class="form" enctype="multipart/form-data">
			<div class="form-list">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="<?php echo $datatable; ?>" value="<?php echo $datatable; ?>">
			</div>
			<div class="form-list">
				<label for="sn">Serial No</label>
				<input type="number" class="form-control" id="sn" name="sn">
			</div>
			<div class="form-list">
				<label for="group_id">Group ID</label>
				<select id="group_id" class="form-control" name="group_id">
				<option>Select</option>
<?php
foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
	$group_id = $framework_group_datatable_value["id"];
	$group_name = $framework_group_datatable_value["name"];
	$framework_group_datatable = $framework_group_datatable_value["datatable"];
	if($framework_group_datatable_value["datatable"] == $datatable){
		echo "<option value='$group_id' style='color:red;'>$group_name&nbsp;&nbsp;&nbsp;$framework_group_datatable</option>";
	}else{
		echo "<option value='$group_id'>$group_name&nbsp;&nbsp;&nbsp;$framework_group_datatable</option>";	
	}
}
?>
				</select>
			</div>
			<div class="form-list">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-list">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title">
			</div>
			<div class="form-list">
				<label for="icon">Icon</label>
				<input type="file" class="form-control" id="icon" name="icon">
			</div>
			<div class="form-list">
				<label for="font_icon">Font Icon</label>
				<input type="text" class="form-control" id="font_icon" name="font_icon">
			</div>
				<button type="submit" class="btn btn-default" name="submit" value="insert">Submit</button>   
		</form>
	  </div>
	</div>
  </div>
</div>
<?php
}
function update_function($framework_list_datatable_value, $framework_group_datatable){
	$id = $framework_list_datatable_value['id'];
	$sn = $framework_list_datatable_value['sn'];
	$datatable = $framework_list_datatable_value['datatable'];
	$name = $framework_list_datatable_value['name'];
	$title = $framework_list_datatable_value['title'];
	$icon = $framework_list_datatable_value['icon'];
	$font_icon = $framework_list_datatable_value['font_icon'];
	$link = BASE_URL."backend_list_class/update_list_function/list/&list_id=".$id;
?>
<div class="modal fade" id="<?php echo "update_".$id; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Add List</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="<?php echo $link; ?>" method="post" class="form" enctype="multipart/form-data">
			<div class="form-list">
				<label for="datatable">Data Table</label>
				<input type="text" class="form-control" id="datatable" name="datatable" placeholder="<?php echo $datatable; ?>" value="<?php echo $datatable; ?>">
			</div>
			<div class="form-list">
				<label for="sn">Serial No</label>
				<input type="number" class="form-control" id="sn" name="sn" placeholder="<?php echo $sn; ?>" value="<?php echo $sn; ?>">
			</div>
			<div class="form-list">
				<label for="group_id">Group ID</label>
				<select id="group_id" class="form-control" name="group_id">
<?php
foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
	$group_id = $framework_group_datatable_value["id"];
	$group_name = $framework_group_datatable_value["name"];
	$framework_group_datatable = $framework_group_datatable_value["datatable"];
	if($framework_group_datatable_value["id"] == $framework_list_datatable_value['group_id']){
		echo "<option value='$group_id' style='color:green;' selected>$group_name&nbsp;&nbsp;&nbsp;$framework_group_datatable</option>";
	}elseif($framework_group_datatable_value["datatable"] == session_class::get("post_datatable")){
		echo "<option value='$group_id' style='color:red;'>$group_name&nbsp;&nbsp;&nbsp;$framework_group_datatable</option>";
	}else{
		echo "<option value='$group_id'>$group_name&nbsp;&nbsp;&nbsp;$framework_group_datatable</option>";	
	}
}
?>
				</select>
			</div>
			<div class="form-list">
				<label for="name">Name</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="<?php echo $name; ?>" value="<?php echo $name; ?>">
			</div>
			<div class="form-list">
				<label for="title">Title:</label>
				<input type="text" class="form-control" id="title" name="title" placeholder="<?php echo $title; ?>" value="<?php echo $title; ?>">
			</div>
			<div class="form-list">
				<label for="icon">Icon&nbsp;<a class="" href="<?php echo $icon; ?>">Open</a></label>
				<input type="file" class="form-control" id="icon" name="icon">
			</div>
			<div class="form-list">
				<label for="font_icon">Font Icon</label>
				<input type="text" class="form-control" id="font_icon" name="font_icon" placeholder="<?php echo $font_icon; ?>" value="<?php echo $font_icon; ?>">
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