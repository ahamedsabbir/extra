<div class="container album py-5 bg-light">
		<div class="">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">        
<?php
if($blog_datatable != null){
	foreach($blog_datatable as $blog_datatable_key => $blog_datatable_value){
?>	
        <div class="col">
          <div class="card shadow-sm">
			<img style="max-height:200px; height:70%; width:auto;" src="<?php echo $blog_datatable_value["thumbnail"]; ?>" class="card-img" alt="...">
			<div class="card-img-overlay">
<?php
if($framework_category_datatable != null){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		if($framework_category_datatable_value["id"] == $blog_datatable_value["category_id"]){
			echo "<h5 class='card-title'>".$framework_category_datatable_value['name'];
			if($framework_group_datatable != null){
				foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
					if($framework_group_datatable_value["id"] == $blog_datatable_value["group_id"]){
						echo "->".$framework_group_datatable_value['name'];
						if($framework_list_datatable != null){
							foreach($framework_list_datatable as $framework_list_datatable_key => $framework_list_datatable_value){
								if($framework_list_datatable_value["id"] == $blog_datatable_value["list_id"]){
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
					<p class="card-text"><?php echo vendor_string_class::title_style($blog_datatable_value["title"], 100); ?></p>
			</div>
			<div class="card-body">
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a href="<?php echo address_class::request_method('theme_blog_single_class', 'single_page_function', 'single', false, false, '&post_id='.$blog_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">View</button></a>
<?php
if($blog_datatable_value["admin_id"] == session_class::get("admin_id")){
?>
        <a href="<?php echo address_class::request_method('dashboard_blog_update_class', 'index_page_function', 'update', false, false, '&post_id='.$blog_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">Edit</button></a>
		<a href="<?php echo address_class::request_method('dashboard_blog_delete_class', 'post_delete_function', 'author', false, false, '&post_id='.$blog_datatable_value['id']); ?>" ><button type="button" class="btn btn-sm">Delete</button></a>
<?php
}else{
	echo "<button type='button' class='btn btn-sm btn-outline-secondary'>Delete</button>";
}
?>         
				</div>
<?php
$post_date = date('Ymd', strtotime(strtr($blog_datatable_value["expare"], '/', '-')));
$current_date = date('Ymd');
if($current_date >= $post_date){
	echo "<small class='text-muted'><i style='color:red;'>".date('d/m/Y', strtotime(strtr($blog_datatable_value["expare"], '/', '-')))."</i></small>";
}else{
	echo "<small class='text-muted'><i style='color:green;'>".date('d/m/Y', strtotime(strtr($blog_datatable_value["expare"], '/', '-')))."</i></small>";
}
?>
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