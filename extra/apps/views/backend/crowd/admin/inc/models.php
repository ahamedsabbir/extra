<div class="modal fade" id="<?php echo $model_id; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
		<div class="modal-dialog modal-dialog-scrollable">
		  <img src="<?php echo $photo; ?>" width="100px"/>
		  <p>Name: <?php echo $name; ?></p>
		  <p>Email: <?php echo $email; ?></p>
		  <p>Mobile: <?php echo $mobile; ?></p>
		  <p>Level: <?php echo $level; ?></p>
		  <p>Block: <?php echo $block; ?></p>
		</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>