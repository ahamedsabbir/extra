<section class="container">
			<table id="example" class="table table-striped" style="width:100%">
				<thead>
					<tr class="text-center">
						<th>Name</th>
						<th>Email</th>
						<th>Level</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
<?php
if(isset($framework_admin_datatable)){
	foreach($framework_admin_datatable as $admin_key=>$admin_value){
		$id = $admin_value["id"];
		$name = $admin_value["name"];
		$photo = $admin_value["photo"];
		$mobile = $admin_value["mobile"];
		$email = $admin_value["email"];
		$level = $admin_value['level'];
		$status = $admin_value['status'];
		$block = $admin_value['block'];
		$model_id = "openprofile".$admin_value['id'];
?>
<tr>
	<td><b><?php echo $name; ?></b></td>
	<td><?php echo $email; ?></td>
	<td><?php echo $level; ?></td>
	<td class="text-center">
		<div class="btn-group" role="group">
			<button id="btnGroupDrop1" type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Option</button>
			<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
			  <li><button type="button" class="btn" data-bs-toggle="modal" data-bs-target="<?php echo "#".$model_id; ?>">Open</button></li>
			  
<?php
if($status == true){
?>
	<li><a class="dropdown-item" href="index.php?url=admin_manage_class/unprove/loop/&admin_id=<?php echo $id; ?>">Unprove</a></li>
<?php
}else{
?>
	<li><a class="dropdown-item" href="index.php?url=admin_manage_class/approve/loop/&admin_id=<?php echo $id; ?>">Approve</a></li>
<?php
}
?>			  
			  <li><a class="dropdown-item" href="">Delete</a></li>			  
<?php
if($block == true){
?>
	<li><a class="dropdown-item" href="index.php?url=admin_manage_class/block/loop/&admin_id=<?php echo $id; ?>">Unblock</a></li>
<?php
}else{
?>
	<li><a class="dropdown-item" href="index.php?url=admin_manage_class/unblock/loop/&admin_id=<?php echo $id; ?>">Block</a></li>
<?php
}
?>
			</ul>
		</div>
	</td>
</tr>	
	<?php include(backend_class::inc("models", $plugins_type, $plugins)); ?>
<?php
	}
}
?>
				</tbody>
				<tfoot>
					<tr class="text-center">
						<th>Name</th>
						<th>Email</th>
						<th>Level</th>
						<th>Action</th>
					</tr>
				</tfoot>
			</table>
		</section>