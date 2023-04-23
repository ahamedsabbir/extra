<div class="modal fade" id="addSpecialModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=specialAccess/access_insert_function/index" method="post">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Email Marketing</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <div class="mb-3">
                <label for="name" class="col-form-label d-none">Name:</label>
              	<input id="name" class="form-control" name="name"  placeholder="name" />
            </div>
            <div class="mb-3">
                <label for="email" class="col-form-label d-none">Email:</label>
              	<input id="email" class="form-control" name="email"  placeholder="email" />
            </div>
            <div class="mb-3">
                <label for="mobile" class="col-form-label d-none">Mobile:</label>
              	<input id="mobile" class="form-control" name="mobile"  placeholder="mobile" />
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
          </div>
        </div>
    </form>
  </div>
</div>