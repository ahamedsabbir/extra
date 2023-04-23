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
    <link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
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
        <main class="bg-light text-dark">
		 <div class="container">
          <div class="card text-center">
            <div class="card-header">
              Backup File List
            </div>
            <div class="card-body">
				<ul class="list-group list-group-flush">
<?php
$folder = isset($_REQUEST["folder"]) ? $_REQUEST["folder"] : "backup";
$file_link = "extra/storage/$folder/";
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
  	$delete = BASE_URL."upload/file_delete_upload/upload/&encode_url=$url_encode&folder=$folder";
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
  </body>
</html>