<div class="modal fade" id="exampleModalLong" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<?php 
$upload_source = isset($_GET["upload_source"]) ? $_GET["upload_source"] : false;
?>
								<form class="form" action="<?php echo "index.php?url=plugins_chat_class/local_upload_function/&old_file=$upload_source"; ?>" method="POST" enctype="multipart/form-data">
									<div class="form-group"> 								
										<input type="file" name="local_file" class="btn btn-main btn-rounded">
									</div>									
									<div class="form-group">
											<button class="btn btn-main btn-rounded" name="submit" value="submit">Send</button>                                           
									</div>							
								</form>
      </div>
    </div>
  </div>
</div>