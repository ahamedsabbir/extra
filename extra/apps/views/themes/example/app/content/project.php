<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<!doctype html>
<html lang="en">
  <head>
	<?php include(theme_class::source("app/content/inc/head.php")); ?>
  </head>
  <body class="bg-light">

<!-- Began Modal -->
<div class="modal fade" id="insert<?php echo $FileName; ?>Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Insert <?php echo $FileName; ?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
	    <?php echo session_class::ontime("alert"); ?>
       	<form action="<?php echo BASE_URL.'content/project_insert_function/'.$FileName.'/&project_name='.$FileName.'&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data" onsubmit="chackText()">
          <div class="modal-body">
             <div class="form-group">
                <label for="type" class="col-form-label">Type</label>
                <input type="text" class="form-control" id="type" name="type">
               
               	<label for="heading" class="col-form-label">Heading</label>
                <input type="text" class="form-control" id="heading" name="heading">
               
               	<label for="detail" class="col-form-label">Detail</label>
               	<textarea class="form-control" id="type" name="details"></textarea>
               
               
               	<label for="button" class="col-form-label">Button</label>
                <input type="text" class="form-control" id="button" name="button">
               
               
               	<label for="links" class="col-form-label">Links</label>
                <input type="text" class="form-control" id="links" name="links">
               
               	<label for="image" class="col-form-label">Image</label>
                <input type="file" class="form-control" id="image" name="image">
              </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" name="submit" value="insert">Save</button>
          </div>
      </form>
    </div>
  </div>
</div>   
<!-- End Modal -->
    <?php include(theme_class::source("app/content/inc/models.php")); ?>
    <?php include(backend_class::inc("report")); ?>
    <?php include(backend_class::inc("newForm")); ?>
    <?php include(theme_class::source("app/content/inc/header.php")); ?>
	<?php include(backend_class::inc("dashboard")) ?>
    <div class="container p-2 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">Custom jumbotron</h1>
        <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p>
        <button class="btn btn-primary btn-lg" type="button" data-bs-toggle="modal" data-bs-target="#insert<?php echo $FileName; ?>Modal">Add <?php echo $FileName; ?></button>
        <a class="btn btn-danger btn-lg" type="button" href="">Delete</a>
        <?php echo report_class::chack_report("newbootstrap5error"); ?>
      </div>
    </div>
	  <main class="py-4 bg-light text-dark">
		   <div class="container">
<?php
$xml = simplexml_load_file($content);
foreach($xml->content as $content){
	if($content["status"] == true){
		foreach($content->$FileName as $project){
			foreach($project->item as $item){
				$unique_id = $item["unique_id"];
				
				$project_type = vendor_code_class::base64url_decode($item->type);
				$project_type_field = text_input_function("type", $project_type, $project_type);
				
				$project_heading = vendor_code_class::base64url_decode($item->heading);
				$project_heading_field = text_input_function("heading", $project_heading, $project_heading);
				
				$project_details = vendor_code_class::base64url_decode($item->details);
				$project_details_field = textarea_input_function("details", $project_details, $project_details);
				
				$project_button = vendor_code_class::base64url_decode($item->button);
				$project_button_field = text_input_function("button", $project_button, $project_button);
				
				$project_links = vendor_code_class::base64url_decode($item->links);
				$project_links_field = text_input_function("links", $project_links, $project_links);
				
				$project_image = vendor_code_class::base64url_decode($item->image);
				$project_image_field = newFile_input_function("image", $project_image);
				
				$update_link = BASE_URL."content/project_update_function/$FileName/&theme_name=$theme_name&unique_id=".$unique_id."&project_name=$FileName";
				$delete_link = BASE_URL."content/project_delete_function/$FileName/&theme_name=$theme_name&project_name=$FileName&unique_id=".$unique_id;
?>
             <br />
            <section class="">
             <div class="card">
                <div class="card-header">
                  <?php echo $unique_id; ?>
                </div>
                <div class="card-body">
                  <form class="needs-validation" action="<?php echo $update_link; ?>" method="POST" enctype="multipart/form-data">
                      <div class="row g-3">
                          	<?php echo $project_type_field; ?>
                          	<?php echo $project_heading_field; ?>
                          	<?php echo $project_details_field; ?>
                          	<?php echo $project_button_field; ?>
                          	<?php echo $project_links_field; ?>
                          	<?php echo $project_image_field; ?>
                        	<div class="col-md-12">
  								<button class="btn btn-primary btn-lg" type="submit" name="submit" value="update">update</button>
                              	<button class="btn btn-danger btn-lg" type="button" onclick="window.location='<?php echo $delete_link; ?>'">delete</button>
							</div>
                      </div>
                  </form>
                </div>
              </div>
			</section>
<?php
			}
		}
	}
}
?>
					  </div>
	  </main>
  </body>
  <?php include(theme_class::source("app/content/inc/foot.php")); ?>
</html>