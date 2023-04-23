<!-- Modal -->
<div class="modal fade" id="insertDataBaseModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="needs-validation" action="<?php echo BASE_URL.'XMLDP_database_insert_class/database_insert_function/index'; ?>" method="POST" enctype="multipart/form-data">
          <div class="mb-3">
            <label for="sn" class="col-form-label">SN:</label>
            <input type="number" class="form-control" id="sn" name="sn" value="1">
          </div>
          <div class="mb-3">
            <label for="database" class="col-form-label">Database:</label>
            <input type="text" class="form-control" id="database" name="database" value="mvc_">
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </form>
      </div>
    </div>
  </div>
</div>



<!-- Modal -->
<div class="modal fade" id="insertDatatableModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="needs-validation" action="<?php echo BASE_URL.'XMLDP_datatable_insert_class/datatable_insert_function/index'; ?>" method="POST" enctype="multipart/form-data">
          <div class="mb-3">
            <label for="sn" class="col-form-label">Database</label>
            <select class="form-control" name="database">
              
<?php
$xml_data = simplexml_load_file("extra/resources/xml/xml.xml");              
foreach($xml_data->database as $database){
  if($database["status"] == 1){
  	$name = $database["name"];
	echo "<option value='$name'>$name</option>";
  }
}            
?>
            </select>
          </div>
          <div class="mb-3">
            <label for="sn" class="col-form-label">SN:</label>
            <input type="number" class="form-control" id="sn" name="sn" value="1">
          </div>
          <div class="mb-3">
            <label for="database" class="col-form-label">Datatable:</label>
            <input type="text" class="form-control" id="database" name="datatable" value="table_">
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </form>
      </div>
    </div>
  </div>
</div>





<!-- insertAccountModal -->
<div class="modal fade" id="insertAccountModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="needs-validation" action="<?php echo BASE_URL.'XMLDP_data_insert_class/data_insert_function/index'; ?>" method="POST" enctype="multipart/form-data">
          
          <div class="mb-3">
            <label for="name" class="col-form-label">name:</label>
            <input type="text" class="form-control" id="name" name="name">
          </div>
          <div class="mb-3">
            <label for="email" class="col-form-label">email:</label>
            <input type="email" class="form-control" id="email" name="email">
          </div>
          <div class="mb-3">
            <label for="mobile" class="col-form-label">mobile:</label>
            <input type="number" class="form-control" id="mobile" name="mobile">
          </div>
          <div class="mb-3">
            <label for="password" class="col-form-label">password:</label>
            <input type="password" class="form-control" id="password" name="password">
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <input type="text" class="form-control" id="note" name="note">
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </form>
      </div>
    </div>
  </div>
</div>