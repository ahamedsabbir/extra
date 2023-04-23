<?php include(backend_class::inc("report")); ?>
<div class="card-heading">	
	<div class="btn-group py-3" role="group" aria-label="Button group with nested dropdown">
	  <div class="btn-group" role="group">
		<h1 id="btnGroupDrop1" type="button" class="btn btn-lg active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Belle</h1>
		<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
		  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_belle_content_class/index_page_function/content/'; ?>">Content</a>
		  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_belle_content_class/index_page_function/content_slider/'; ?>">Slider</a>
		</div>
	  </div>
	  <button onclick="window.location='<?php echo BACKEND_HOME; ?>'" type="button" class="btn btn-lg">Home</button>
	  <button> <?php echo report_class::chack_report("bootstrap4error"); ?></button>
	</div>
</div>