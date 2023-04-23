<div class="container album py-5 bg-light">
		<div class="">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">        
<?php
if($redweb_datatable != null){
	foreach($redweb_datatable as $redweb_datatable_key => $redweb_datatable_value){
?>	
        <div class="col">
          <div class="card shadow-sm">
			<img style="max-height:200px; height:70%; width:auto;" src="<?php echo $redweb_datatable_value["thumbnail"]; ?>" class="card-img" alt="...">
			<div class="card-img-overlay">
<?php
if($framework_category_datatable != null){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		if($framework_category_datatable_value["id"] == $redweb_datatable_value["category_id"]){
			echo "<h5 class='card-title'>".$framework_category_datatable_value['name'];
			if($framework_group_datatable != null){
				foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
					if($framework_group_datatable_value["id"] == $redweb_datatable_value["group_id"]){
						echo "->".$framework_group_datatable_value['name'];
						if($framework_list_datatable != null){
							foreach($framework_list_datatable as $framework_list_datatable_key => $framework_list_datatable_value){
								if($framework_list_datatable_value["id"] == $redweb_datatable_value["list_id"]){
									echo "->".$framework_list_datatable_value['name'];
								}
							}
						}
					}
				}
			}
		echo "<h5>";
		}
	}
}
?>					
				<p class="card-text"><?php echo vendor_string_class::title_style($redweb_datatable_value["title"], 100); ?></p>
			</div>
			<div class="card-body">
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="<?php echo address_class::request_method('theme_redweb_single_class', 'single_page_function', 'single', false, false, '&post_id='.$redweb_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">View</button></a>
<?php
if($redweb_datatable_value["blogger_id"] == session_class::get("admin_unique_id")){
?>
        <a href="<?php echo address_class::request_method('dashboard_redweb_update_class', 'index_page_function', 'update', false, false, '&post_id='.$redweb_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">Edit</button></a>
		<a href="<?php echo address_class::request_method('dashboard_redweb_delete_class', 'post_delete_function', 'loop', false, false, '&post_id='.$redweb_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">Delete</button></a>
<?php
}else{
	echo "<button type='button' class='btn btn-sm btn-outline-secondary'>Delete</button>";
}
?>         
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
</div>