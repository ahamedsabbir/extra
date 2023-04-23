<!-- Modal -->
<div class="modal fade" id="insertFieldModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Insert Project</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       	<form action="<?php echo BASE_URL.'content/add_project_function/project/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data">
          <div class="modal-body">
             <div class="form-group">
                <label for="name" class="col-form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name">
              </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" name="submit" value="insert">Save</button>
          </div>
      </form>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="insertElementModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Insert Element</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       	<form action="<?php echo BASE_URL.'content/element_insert_function/content/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data">
          <div class="modal-body">
             <div class="form-group">
                <label for="name" class="col-form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name">
              </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" name="submit" value="insert">Save</button>
          </div>
      </form>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="addContentModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Content</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
       	<form action="<?php echo BASE_URL.'content/add_content_function/content/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data">
          <div class="modal-body">
             <div class="form-group">
                <label for="name" class="col-form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name">
              </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary" name="submit" value="insert">Save</button>
          </div>
      </form>
    </div>
  </div>
</div>

