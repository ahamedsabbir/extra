<?php
	function simple_file_function($name, $file = false){
		echo <<<TEXT
<a href="$file" >open</a>
<input name="$name" class="form-control" type="file" />
TEXT;
	}
	function loop_file_function($name, $file = false, $class = false, $function = false, $page = false, $post_id = false){
		if($class == true AND $function == true AND $page == true AND $post_id == true){
			$link = BASE_URL."$class/$function/$page&page_id=$post_id";
		}else{
			$link = "";
		}
		
		echo <<<TEXT
<a href="$file" >open</a>
<a href="$link" >delete</a>
<input name="{$name}[]" class="form-control" type="file" />		
TEXT;
	}
	function file_input_function($name, $file = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
      	$idFor = $name.rand(100, 999);
      	if($file == true){
          $view = "<a href='".$file."' style='text-decoration:none;' >Old File</a>";
        }else{
        	$view = "";
        }
		$input = <<<TEXT
<style>
.custom-file-upload{
  background: #f7f7f7; 
  padding: 8px;
  border: 1px solid #e3e3e3; 
  border-radius: 5px; 
  border: 1px solid #ccc; 
  display: inline-block;
  padding: 6px 12px;
  cursor: pointer;
}
</style>
<div class="col-12">
	<div class="input-group has-validation">
    	<span class='input-group-text'>$title&nbsp;$view</span>
        <label for="$idFor" class="form-control custom-file-upload" id="choose-file-label">Chose File</label>
      	<input name="$name" class="form-control" type="file" id="$idFor" style="display: none;" />
    </div>
    <div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function () {
	$('#$idFor').change(function () {
		var i = $(this).prev('label').clone();
		var file = $('#$idFor')[0].files[0].name;
		$(this).prev('label').text(file);
	}); 
 });
</script>
TEXT;
		return $input;
	}
	function newFile_input_function($name, $file = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
  		$idFor = $name.rand(100, 999);
      	if($file == true){
          $view = "<a href='".$file."' style='text-decoration:none;' >$title</a>";
        }else{
        	$view = $title;
        }
		$input = <<<TEXT
<div class="col-sm-12">
   	<div class="input-group has-validation">
      	<input type="file" class="form-control" id="$idFor" name="$name" />
    	<span class='input-group-text'><label for="$idFor" class="">$view</label></span>
    </div>
	<div class="invalid-feedback">
	   Valid $name is required.
	</div>
</div>
TEXT;
		return $input;
	}
	function file_delete_function($datatable, $post_id, $field, $class = false, $function = false, $page = false){
		foreach($datatable as $datatable_key => $datatable_value){
			if($datatable_value["id"] == $post_id){
				$file_link = $datatable_value[$field];
				$file_array = explode(", ", $file_link);
				$i = 0;
				foreach($file_array as $file_key){
					$file_name = $file_key[$i++];
					$delete_link = BASE_URL."$class/$function/$page&page_id=$post_id&field=$field&post_file=$file_name";
					echo <<<TEXT
<div class="card" style="width: 18rem;">
  <img src="$file_name" class="card-img-top" alt="...">
  <div class="card-body">
	<h5 class="card-title">File Action</h5>
    <a href="$file_name" class="card-link">Open</a>
    <a href="$delete_link" class="card-link">Delete</a>
  </div>
</div>				
TEXT;
				}
			}
		}
	}
	function fileLoop_input_function($name, $file = false){
		$title_array = explode("_", $name);
  		$title = implode(" ", $title_array);
		$title = ucwords($title);
  		$idFor = $name.rand(100, 999);
      	if($file == true){
          $view = "<a href='".$file."' style='text-decoration:none;' >$title</a>";
        }else{
        	$view = $title;
        }
		echo <<<HTML
<div id="{$name}Addfileelement">
  <div class="col-sm-12 py-2">
      <div class="input-group has-validation">
          <button type="button" name="add" id="addbutton" class="btn btn-success">Add More</button>
          <input type="file" class="form-control" id="$idFor" name="{$name}[]" />
          <span class="input-group-text"><label for="$idFor">$view</label></span>
      </div>
      <div class="invalid-feedback">
         Valid $name is required.
      </div>
  </div>
</div>
HTML;
      $add = <<<HTML
<div class="col-sm-12 py-2" id="{$name}row'+i+'"><div class="input-group has-validation"><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">Remove</button><input type="file" class="form-control" id="$idFor" name="{$name}[]" /><span class="input-group-text"><label for="$idFor">$view</label></span></div><div class="invalid-feedback">Valid $name is required.</div></div>
HTML;
  			echo <<<HTML
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> 
<script>  
 $(document).ready(function(){  
      var i=1;  
      $('#addbutton').click(function(){  
           i++;  
           $('#{$name}Addfileelement').append('$add');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#{$name}row'+button_id+'').remove();  
      });  
 });  
</script>
HTML;
	}
?>