<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <base href="<?php echo BASE_SITE; ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Checkout example · Bootstrap v5.0</title>
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/upload/assets/style/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="extra/apps/views/soft/upload/assets/style/all.min.css">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>  
    <!-- Custom styles for this template -->
    <link href="form.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    <?php include(soft_class::inc("models")); ?>
     <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Insert Post</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
                </li>
                <li class="nav-item">
                  <button class="btn nav-link" data-bs-toggle="modal" data-bs-target="#exampleLocalModal">Local File Upload</button>
                </li>
				<li class="nav-item">
					<button class="btn nav-link" data-bs-toggle="modal" data-bs-target="#onlinefileuploadmodel">Online File Upload</button>
				</li>
				<li class="nav-item">
                  <a class="nav-link" aria-current="page" href="<?php echo BASE_URL."thumbnail/index_page_function/index/"; ?>">Make Thumbnail</a>
                </li>
				<li class="nav-item">
                  <button class="btn nav-link" onclick="document.location.reload(true)">Refresh</button>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
		<div class="container text-center d-none">
			<iframe id="input_open" src="icon.png" style="border:0px #ffffff none;" name="myiFrame" scrolling="no" frameborder="1" marginheight="0px" marginwidth="0px" height="400px" width="100%" allowfullscreen></iframe>
		</div>
        <main class="bg-light text-dark">
         <div class="container py-4">
          <div class="card text-center">
            <div class="card-header">
              <h6 class="card-title" id="source">Copy The Link</h6>
            </div>
            <div class="card-body">
				<input id="input_source" class="form-control input_source" type="link"/>
            </div>
            <div class="card-footer text-muted">
              <a id="openlinkfile" class="btn btn-danger" style="vertical-align:top;" href="">Open</a>
              <button class="btn btn-success js-textareacopybtn" style="vertical-align:top;">Click For Copy The Link</button>
            </div>
          </div>
         </div>
		 <div class="container">
          <div class="card text-center">
            <div class="card-header">
              File List
            </div>
            <div class="card-body">
				<ul class="list-group list-group-flush">
<?php
$folder = isset($_REQUEST["folder"]) ? $_REQUEST["folder"] : "files";
$file_link = "extra/storage/uploads/$folder/";
$file_list = glob("$file_link*.*");
$all_size = 0;
$i = 0;
foreach($file_list as $file_url){  
  	$file_name = basename($file_url);
	$url_encode = vendor_code_class::base64url_encode($file_url);
  	$filemtime = date("d/m/y H:i:s", filemtime($file_url));
	$file_size = filesize($file_url);
	$all_size += $file_size;
	$i++;
  	$delete = "soft.php?url=upload/file_delete_upload/upload/&encode_url=$url_encode&folder=$folder";
	echo <<<TEXT
<li class="list-group-item d-flex justify-content-between align-items-center">
	<a href="$file_url"><span style="color:red;">$i . </span><b><i class="fa-regular fa-file-video"></i> $file_name </b><small>[$filemtime]</small></a>
	<a href="$delete" onclick="return confirm('Are you sure?')"><span class="badge bg-danger rounded-pill">Delete</span></a>
</li>
TEXT;	
}                                                 
?>
				</ul>
            </div>
            <div class="card-footer text-muted">
              All file size is <b style="color:red;"><?php echo vendor_file_class::convert_memory($all_size); ?></b>
            </div>
          </div>
         </div>

           

        </main>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <?php echo vendor_getMsg_class::get(); ?>
    
<script type="text/javascript">
$(document).ready(function(){ 
  // layerOne dependent ajax
  $("#uploadFile").on('change', function(){
    var file_data = $("#uploadFile").prop('files')[0];   
    var folder = '<?php echo $folder; ?>';   
    var form_data = new FormData();                  
    form_data.append('file', file_data);
    form_data.append('folder', folder);
    $.ajax({
      url:"soft.php?url=upload/local_file_upload/",
      type:"POST",
      cache:false,
      contentType: false,
      processData: false,
      data:form_data,
      success:function(html){
        $("#source").html(html); 
		document.getElementById("input_open").src = html;
		document.getElementById("input_source").value = html;
		document.getElementById("openlinkfile").href = html;
      }
    });
  });
  $("#uploadOnlineFile").on('click', function(){
    var file = $("#file").val();
    var name = $("#name").val();
    var folder = '<?php echo $folder; ?>';
    $.ajax({
      url:"soft.php?url=upload/online_file_upload/",
      type:"POST",
      cache:false,
      data:'file='+file+'&name='+name+'&folder='+folder,
      success:function(html){
        $("#source").html(html); 
		document.getElementById("input_source").value = html;
		document.getElementById("openlinkfile").href = html;
      }
    });
  });
});

var copyTextareaBtn = document.querySelector('.js-textareacopybtn');
copyTextareaBtn.addEventListener('click', function(event) {
  var copyTextarea = document.querySelector('.input_source');
  copyTextarea.focus();
  copyTextarea.select();
  try {
    var successful = document.execCommand('copy');
    var msg = successful ? 'successful' : 'unsuccessful';
    console.log('Copying text command was ' + msg);
  } catch (err) {
    console.log('Oops, unable to copy');
  }
});
</script>
    
  </body>
</html>