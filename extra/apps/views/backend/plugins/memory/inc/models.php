<!-- Modal -->
<div class="modal fade" id="contactsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=plugins_memory_class/contacts_insert_function/contacts/" method="post" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name">
          </div>
          <div class="mb-3">
            <label for="image" class="col-form-label">Image:</label>
            <input type="file" class="form-control" id="image" name="image">
          </div>
          <div class="mb-3">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile[]">
          </div>
          <div class="mb-3">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email">
          </div>
          <div class="mb-3">
            <label for="address" class="col-form-label">Address:</label>
            <textarea class="form-control" id="address" name="address"></textarea>
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note"></textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </div>
      </div>
    </form>
  </div>
</div>
<?php
function contacts_open($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$mobile = $datatable["mobile"];
  	$email = $datatable["email"];
  	$image = $datatable["image"];
  	$note = $datatable["note"];
  	$address = $datatable["address"];
  	$link = "index.php?url=plugins_memory_class/contacts_update_function/contacts/&post_id=$id";
	$html = <<<TEXT
<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contactsOpenModal$id">Open</button>
<div class="modal fade" id="contactsOpenModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            $note
          </div>
        </div>
  	</div>
</div>    
TEXT;
  return $html;
}
function contacts_update($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$mobile = $datatable["mobile"];
  	$email = $datatable["email"];
  	$image = $datatable["image"];
  	$note = $datatable["note"];
  	$address = $datatable["address"];
  	$link = "index.php?url=plugins_memory_class/contacts_update_function/contacts/&post_id=$id";
	$html = <<<TEXT
    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contactsUpdateModal$id">Update</button>
<div class="modal fade" id="contactsUpdateModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="$link" method="post" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name" placeholder="$name" value="$name">
          </div>
          <div class="mb-3">
            <label for="image" class="col-form-label">Image:</label>
            <input type="file" class="form-control" id="image" name="image" placeholder="$image" value="$image">
          </div>
          <div class="mb-3">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile[]" placeholder="$mobile" value="$mobile">
          </div>
          <div class="mb-3">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="$email" value="$email">
          </div>
          <div class="mb-3">
            <label for="address" class="col-form-label">Address:</label>
            <textarea class="form-control" id="address" name="address">$address</textarea>
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note">$note</textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="update">Update</button>
        </div>
      </div>
    </form>
  </div>
</div>    
TEXT;
  return $html;
}
?>




<!-- website -->
<div class="modal fade" id="websiteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=plugins_memory_class/website_insert_function/website/" method="post" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Site</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name">
          </div>
          <div class="mb-3">
            <label for="recipient-title" class="col-form-label">Title:</label>
            <input type="text" class="form-control" id="recipient-title" name="title">
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note"></textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </div>
      </div>
    </form>
  </div>
</div>
<?php
function website_open($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$title = $datatable["title"];
  	$note = $datatable["note"];
  	$link = "index.php?url=plugins_memory_class/website_update_function/website/&post_id=$id";
	$html = <<<TEXT
<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#websiteOpenModal$id">Open</button>
<div class="modal fade" id="websiteOpenModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            $note
          </div>
        </div>
  	</div>
</div>    
TEXT;
  return $html;
}
function website_update($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$title = $datatable["title"];
  	$note = $datatable["note"];
  	$link = "index.php?url=plugins_memory_class/website_update_function/website/&post_id=$id";
	$html = <<<TEXT
<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#websiteUpdateModal$id">Update</button>
<div class="modal fade" id="websiteUpdateModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="$link" method="post" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name" placeholder="$name" value="$name">
          </div>
          <div class="mb-3">
            <label for="recipient-title" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-title" name="title" placeholder="$title" value="$title">
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note">$note</textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="update">Update</button>
        </div>
      </div>
    </form>
  </div>
</div>    
TEXT;
  return $html;
}
?>


<!-- Account -->
<div class="modal fade" id="accountModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="index.php?url=plugins_memory_class/account_insert_function/account/" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Account</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name">
          </div>
          <div class="mb-3">
            <label for="recipient-email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="recipient-email" name="email">
          </div>
          <div class="mb-3">
            <label for="recipient-mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="recipient-mobile" name="mobile">
          </div>
          <div class="mb-3">
            <label for="recipient-password" class="col-form-label">Password:</label>
            <input type="text" class="form-control" id="recipient-password" name="password">
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note"></textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
        </div>
      </div>
    </form>
  </div>
</div>
<?php
function account_open($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$email = $datatable["email"];
  	$mobile = $datatable["mobile"];
  	$password = $datatable["password"];
  	$note = $datatable["note"];
  	$link = "index.php?url=plugins_memory_class/account_update_function/account/&post_id=$id";
	$html = <<<TEXT
<button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contactsOpenModal$id">Open</button>
<div class="modal fade" id="contactsOpenModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            $note
          </div>
        </div>
  	</div>
</div>    
TEXT;
  return $html;
}
function account_update($datatable){
  	$id = $datatable["id"];
  	$name = $datatable["name"];
  	$email = $datatable["email"];
  	$mobile = $datatable["mobile"];
  	$password = $datatable["password"];
  	$note = $datatable["note"];
  	$link = "index.php?url=plugins_memory_class/account_update_function/account/&post_id=$id";
	$html = <<<TEXT
    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#contactsUpdateModal$id">Update</button>
<div class="modal fade" id="contactsUpdateModal$id" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form action="$link" method="post" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Contacts</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="recipient-name" name="name" placeholder="$name" value="$name">
          </div>
          <div class="mb-3">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="$email" value="$email">
          </div>
          <div class="mb-3">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile[]" placeholder="$mobile" value="$mobile">
          </div>
          <div class="mb-3">
            <label for="password" class="col-form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="$password" value="$password">
          </div>
          <div class="mb-3">
            <label for="note" class="col-form-label">Note:</label>
            <textarea class="form-control" id="note" name="note">$note</textarea>
          </div>
          <button type="submit" class="btn btn-primary" name="submit" value="update">Update</button>
        </div>
      </div>
    </form>
  </div>
</div>    
TEXT;
  return $html;
}
?>