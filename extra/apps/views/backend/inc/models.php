<div class="modal fade" id="insertSitemap" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=sitemap/insert_sitemap_function/index" method="post">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Site Map</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
              <div class="mb-3">
                <label for="priority-name" class="col-form-label">priority:</label>
                <input type="text" class="form-control" id="priority-name" placeholder="max 1.0" name="priority">
              </div>
              <div class="mb-3">
                <label for="loc-text" class="col-form-label">loc:</label>
                <input type="text" class="form-control" id="loc-name" placeholder="http://" value="http://" name="loc">
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary" name="submit" value="insert">Save changes</button>
          </div>
        </div>
      </form>
  </div>
</div>

<div class="modal fade" id="emailMarketing" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=seo/email_marketing_function/index" method="post">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Email Marketing</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
                <label for="loc-text" class="col-form-label d-none">Email:</label>
              	<textarea class="form-control" name="emails"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary" name="submit" value="insert">Save changes</button>
          </div>
        </div>
      </form>
  </div>
</div>

<div class="modal fade" id="codeTestResutl" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=backend/index_page_function/coderesult" method="post">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Enter Code</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
                <label for="loc-text" class="col-form-label d-none">Code:</label>
              	<textarea class="form-control" name="code"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary" name="submit" value="insert">Save changes</button>
          </div>
        </div>
      </form>
  </div>
</div>
