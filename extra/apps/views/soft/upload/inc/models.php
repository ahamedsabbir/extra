<div class="modal fade" id="exampleLocalModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mb-3">
            <input type="file" class="form-control" id="uploadFile" name="file" onchange="postFiles()">
         </div>
        <?php vendor_progress_class::progress_function("uploadFile", "postFiles"); ?>
      </div>
    </div>
  </div>
</div>





<div class="modal fade" id="onlinefileuploadmodel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="mb-3">
            <label for="name" class="col-form-label">Nane:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="image.jpg">
			<p style="color:red;"><b><small>লিংকে যদি ফাইল নাম আর এক্সটেনশন যদি ঠিক ভাবে না দেয়া থাকে তো আলাদা করে নাম দিতে হবে আর থাকলে এই ঘর ফাকা রাখতে হবে।</small></b></p>
        </div>
        <div class="mb-3">
            <label for="file" class="col-form-label">File:</label>
            <input type="text" class="form-control" id="file" name="file" placeholder="http://www.google.com/image.jpg">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="uploadOnlineFile">Send</button>
      </div>
    </div>
  </div>
</div>