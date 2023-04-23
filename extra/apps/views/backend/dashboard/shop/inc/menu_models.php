<?php
function create_element($id, $stap, $plugins, $name = false){
	if($name == true){
		$link = BASE_URL.'backend_plugins_class/insert_nav_function/menu/&name='.$name.'&plugins='.$plugins;
	}else{
		$link = BASE_URL.'backend_plugins_class/insert_nav_function/menu/&plugins='.$plugins;
	}
	$models = <<<TEXT
<div class="modal fade" id="$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">$stap</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<input type="number" class="form-control" placeholder="1" name="sn" value="1">
		  </div>
		  <div class="mb-3">
			<input type="name" class="form-control" placeholder="name" name="name" value="name">
		  </div>
		  <div class="mb-3">
			<input type="href" class="form-control" placeholder="href" name="href" value="href">
		  </div>
		  <div class="mb-3">
			<input type="title" class="form-control" placeholder="title" name="title" value="title">
		  </div>
		  <div class="mb-3">
			<input type="target" class="form-control" placeholder="target" name="target" value="target">
		  </div>
		  <button type="submit" class="btn btn-primary" name="create" value="$stap">Create</button>
		</form>
      </div>
    </div>
  </div>
</div> 
TEXT;
	return $models;	
}
function update_element($id, $stap, $plugins, $element){
	$element_name = $element['name'];
	$element_title = $element->title;
	$element_target = $element->target;
	$element_href = $element->href;
	$link = BASE_URL.'backend_plugins_class/update_nav_function/menu/&name='.$element['name'].'&plugins='.$plugins;
	$models = <<<TEXT
<div class="modal fade" id="$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Edite $element_name</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<input type="text" class="form-control" placeholder="$element_name" value="$element_name" name="name">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" placeholder="$element_href" value="$element_href" name="href">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" placeholder="$element_title" value="$element_title" name="title">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control" placeholder="$element_target" value="$element_target" name="target">
		  </div>
		  <button type="submit" class="btn btn-primary" name="update" value="$stap">Updete</button>
		</form>
      </div>
    </div>
  </div>
</div> 
TEXT;
	return $models;	
}
function open_element($id, $stap, $plugins, $element){
	$element_name = $element['name'];
	$element_title = $element->title;
	$element_target = $element->target;
	$element_href = $element->href;
	$link = BASE_URL.'plugins_menu_class/update_function/menu/&name='.$element['name'].'&plugins='.$plugins;
	$models = <<<TEXT
<div class="modal fade" id="$id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">$element_name</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
		<ul class="list-group">
		  <li class="list-group-item">Name :- $element_name</li>
		  <li class="list-group-item">Title:- $element_title </li>
		  <li class="list-group-item">Terget :- $element_target</li>
		  <li class="list-group-item">Href:- $element_href</li>
		</ul>
      </div>
    </div>
  </div>
</div> 
TEXT;
	return $models;	
}
?>
