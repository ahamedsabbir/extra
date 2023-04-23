<!--copy folder model -->			
<div class="modal fade" id="copy_to<?php echo $file_value['name']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Copy <?php echo $file_value['name']; ?></h5>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		  <span aria-hidden="true">×</span>
		</button>
	  </div>
	  <div class="modal-body">
		<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/folder_copy_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>" method="POST">
		  @root/
		  <input type="text" class="form-control mr-sm-2" id="" name="dir_name" />
		  <input type="submit" value="submit" name="submit"/>
		</form>
	  </div>
	</div>
  </div>
</div>
<!--move folder model -->			
<div class="modal fade" id="move_to<?php echo $file_value['name']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Move <?php echo $file_value['name']; ?></h5>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		  <span aria-hidden="true">×</span>
		</button>
	  </div>
	  <div class="modal-body">
		<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/folder_move_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>" method="POST">
		  @root/
		  <input type="text" class="form-control mr-sm-2" id="" name="dir_name" />
		  <input type="submit" value="submit" name="submit" />
		</form>
	  </div>
	</div>
  </div>
</div>
<!--reneme folder model -->			
<div class="modal fade" id="rename_to<?php echo $file_value['name']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Rename</h5>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		  <span aria-hidden="true">×</span>
		</button>
	  </div>
	  <div class="modal-body">
		<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/rename_folder_function/xplore/&get_url=".$folder_url."&folder=".$file_value['name']; ?>" method="POST">
		  <input type="text" class="form-control mr-sm-2" id="" name="folder" value="<?php echo $file_value['name']; ?>" placeholder="<?php echo $file_value['name']; ?>"/>
		  <input type="submit" value="submit" name="submit" />
		</form>
	  </div>
	</div>
  </div>
</div>