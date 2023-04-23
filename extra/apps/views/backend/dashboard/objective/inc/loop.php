 <div class="">
    <div class="container">
       	
<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
    <thead>
        <tr class="text-center">
            <th>ID</th>
            <th>Unique_ID</th>
            <th>Question</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>		
<?php
	foreach($question_datatable as $question_datatable_key => $question_datatable_value){
?>

        <tr>
            <td class="text-center"><b><?php echo $question_datatable_value['id']; ?></b></td>
            <td class="text-center"><b><?php echo $question_datatable_value['unique_id']; ?></b></td>
            
            <td><?php echo vendor_string_class::text_shorten($question_datatable_value['question'], 50); ?></td>
           
            
            <td class="text-center">
				<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
				  <div class="btn-group" role="group">
					<p type="button" id="btnGroupDrop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  Option
					</p>
					<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
						<a class="dropdown-item" href="<?php echo BASE_URL."dashboard_objective_single_class/index_page_function/single/&post_id=".$question_datatable_value['id']; ?>">Open</a>
						<a class="dropdown-item" data-toggle="modal" data-target="#Modal<?php echo $question_datatable_value["id"]; ?>">models</a>
					</div>
				  </div>
				</div>
			</td>
        </tr>
<div class="modal fade" id="Modal<?php echo $question_datatable_value["id"]; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
			<h5>Unique ID</h5>
			<p><?php echo $question_datatable_value['unique_id']; ?></p>
			<hr>
			<h5>Approve</h5>
<?php 
if($question_datatable_value['status'] == 1){
 	echo "<p style='color:green;'>Publish</p>";
}else{
	echo "<p style='color:red;'>Not Publish</p>";
}										 
?>
			<hr>
			<h5>Question</h5>
			<p><?php echo $question_datatable_value['question']; ?></p>
			<hr>
			<h5>Category</h5>
<?php  
foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
	if($framework_category_datatable_value["id"] == $question_datatable_value["category_id"]){
		echo "<p>".$framework_category_datatable_value['name']."</p>";
	}
}
?>
			<hr>
			<h5>Admin Name</h5>
<?php 
foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_vlaue){
	if($framework_admin_datatable_vlaue["id"] == $question_datatable_value["admin_id"]){
		echo "<p>".$framework_admin_datatable_vlaue["name"]."</p>";
	}
}									 
?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>		
<?php
	}	
		
?>
    </tbody>
</table>		
    </div>   
</div>