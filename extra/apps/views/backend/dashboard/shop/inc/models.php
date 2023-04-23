<div class="modal fade" id="insertcomment" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Submit Your Comment.</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<form action="<?php echo BASE_URL.'publish_comment_class/insert_function/'.$product_datatable_value['id']; ?>" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="comment"></textarea>
		  </div>
		  <button type="submit" class="btn btn-primary" name="submit" value="insert">Submit</button>
		</form>
      </div>
    </div>
  </div>
</div> 

<div class="modal fade" id="insertreply" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Submit Your Reply.</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<form action="<?php echo BASE_URL.'publish_reply_class/reply_submit_function/'.$product_datatable_value['id']."/&comment_id=".$framework_comment_datatable_value['id']; ?>" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="comment"></textarea>
		  </div>
		  <button type="submit" class="btn btn-primary" name="submit" value="insert">Submit</button>
		</form>
      </div>
    </div>
  </div>
</div> 