<header class="container">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="<?php echo address_class::request_method("plugins_".$plugins."_class", "index_page_function", "xplore"); ?>"><?php echo $plugins; ?></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="main_nav">
				<ul class="navbar-nav">
					<li class="nav-item active"> <a class="nav-link" href="<?php echo BACKEND_HOME; ?>">Home</a></li>
					<li class="nav-item active"> <a class="nav-link" href="<?php echo BASE_URL."dashboard_objective_approve_class/index_page_function/loop/"; ?>">Unaprove <span class="badge bg-danger"><?php echo $unaprove_question; ?></span></a></li>
					<li class='nav-item'>	
						<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
						  <div class="btn-group" role="group">
							<span style="color:white;" id="btnGroupDrop1" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</span>
							<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">						
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		echo "<a class='dropdown-item' href='".BASE_URL."dashboard_objective_category_class/index_page_function/loop/&category_id=".$framework_category_datatable_value["id"]."'>".$framework_category_datatable_value["name"]."</a>";
	}
}
?>
							</div>
						  </div>
						</div>	
					</li>
				</ul>
			</div>
		</div>
	</nav>
</header>