<header class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">File Manager</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
					<a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  <i class="fa-solid fa-file"></i>&nbsp;File
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#create_folder" >Folder Create</a>
					  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#file_name" >File Create</a>
					  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#upload_file" >Upload</a>
					  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#upload_file" >Copy</a>
					  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#upload_file" >Move</a>
					  <a class="dropdown-item" href="#" onclick="history.back()">Back</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#"><i class="fa-solid fa-rotate-left"></i>&nbsp;Undo</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#"><i class="fa-solid fa-rotate-right"></i>&nbsp;Redo</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="javascript:location.reload(true)"><i class="fa-solid fa-rotate"></i>&nbsp;Refresh</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<?php echo BASE_URL."plugins_xplore_class/index_page_function/xplore/"; ?>"><i class="fa-solid fa-landmark"></i>&nbsp;Classic</a>
				</li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item mr-2 py-1">
					<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/download_site_file/xplore/&get_url=".$folder_url; ?>" method="POST">
						<input class="form-control mr-1" type="text" name="file_link" placeholder="http://" value="http://"/>
						<button class="btn" type="submit" name="submit" value="download">Download</button>
					</form>
				</li>
				<li class="nav-item py-1">
				  <a href="<?php echo BASE_URL.'backend'; ?>" ><button class="btn btn-defult">close</button></a>
				</li>
			</ul>
		</div>          
	</nav>
</header>
<!-- create folder model -->
<div class="modal fade" id="create_folder" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create Folder</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
		<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/dir_function/xplore/&get_url=".$folder_url; ?>" method="POST">
		  <input type="text" class="form-control mr-sm-2" id="" name="folder_name" />
		  <input type="submit" value="submit" name="submit" />
		</form>
      </div>
    </div>
  </div>
</div>
<!-- create file model -->
<div class="modal fade" id="file_name" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create File</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
		<form class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/file_function/xplore/&get_url=".$folder_url; ?>" method="POST">
		  <input type="text" class="form-control mr-sm-2" id="" name="file_name" />
		  <input type="submit" value="submit" name="submit" />
		</form>
      </div>
    </div>
  </div>
</div>
<!--upload file model -->
<style>
.progress-wrapper {
	color:white;
    width:100%;
}
.progress-wrapper .progress {
	height:30px;
    background-color:red;
    width:0%;
    padding:5px 0px 5px 0px;
}
</style>
<script>
function postFile() {
    var formdata = new FormData();

    formdata.append('file1', $('#file1')[0].files[0]);

    var request = new XMLHttpRequest();

    request.upload.addEventListener('progress', function (e) {
        var file1Size = $('#file1')[0].files[0].size;

        if (e.loaded <= file1Size) {
            var percent = Math.round(e.loaded / file1Size * 100);
            $('#progress-bar-file1').width(percent + '%').html(" " + percent + '%');
        } 

        if(e.loaded == e.total){
            $('#progress-bar-file1').width(100 + '%').html(100 + '%');
        }
    });   

    request.open('post', '/echo/html/');
    request.timeout = 45000;
    request.send(formdata);
}
</script>
<div class="modal fade" id="upload_file" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Upload File</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="form1" class="form-inline" action="<?php echo BASE_URL."plugins_xplore_class/upload_function/xplore/&get_url=".$folder_url; ?>" method="POST" enctype="multipart/form-data">
		  <input id="file1" type="file" class="form-control mr-sm-2" name="file" />
		  <input type="submit" value="submit" name="submit" onclick="postFile()"/>
			<div class="progress-wrapper py-1">
				<div id="progress-bar-file1" class="progress py-1"></div>
			</div>
		</form>
      </div>
    </div>
  </div>
</div>