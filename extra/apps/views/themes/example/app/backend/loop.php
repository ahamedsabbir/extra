<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
include(backend_class::sys("security"));
?>
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
    <?php include(backend_class::inc("report")); ?>
	<?php include(theme_class::source("app/backend/inc/menu.php")); ?>
	<section class="container">
		<div class="p-5 bg-primary text-white">
		  <h1>Your Post</h1>
		  <p>Lorem ipsum...</p>
		</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<?php //include(theme_class::source("app/backend/inc/dropdown.php")); ?>
			</div>
		</div>
	</div>
  <section class="container py-4 bg-light text-dark">
	<form class="row g-3" action="index.php?url=theme_example_backend_class/search_page_function/loop" method="post">
	  <div class="col-auto">
		<label for="search" class="visually-hidden">Search</label>
		<input type="text" class="form-control" id="search" placeholder="keyword" name="search">
	  </div>
	  <div class="col-auto">
		<button type="submit" class="btn btn-primary mb-3">Search</button>
	  </div>
	</form>
   <table class="table table-hover table-bordered">
	  <thead>
		<tr class="text-center">
		  <th scope="col">ID</th>
		  <th scope="col">Icon</th>
		  <th scope="col">Title</th>
		  <th scope="col">Created</th>
		  <th scope="col">Action</th>
		</tr>
	  </thead>
	  <tbody>
<?php
if($example_post_datatable != null){
	foreach($example_post_datatable as $example_post_key => $example_post_value){
		$id = $example_post_value["id"];
		$thumbnail = $example_post_value["thumbnail"];
		$title = $example_post_value["title"];
		$created = $example_post_value["created"];
		$open_link = address_class::request_method("theme_example_backend_class", 'single_page_function', 'single', array("post_id"), array($id), "&post_id=$id");
		$update_link = address_class::request_method("theme_example_backend_class", 'single_page_function', 'update', array("post_id"), array($id), "&post_id=$id");
		$hide_link = address_class::request_method("theme_example_backend_class", 'hide_post_function', 'loop', array("post_id"), array($id), "&post_id=$id");
		$unhide_link = address_class::request_method("theme_example_backend_class", 'unhide_post_function', 'loop', array("post_id"), array($id), "&post_id=$id");
		
		
		$delete_link = address_class::request_method("theme_example_backend_class", 'delete_post_function', 'single', array("class", "function", "page", "post_id"), array("theme_example_backend_class", "loop_page_function", "loop", $id), "&post_id=$id");
		echo <<<TEXT
<tr>
  <th scope="row">$id</th>
  <td><img src="$thumbnail" width="50"/></td>
  <td>$title</td>
  <td>$created</td>
  <td class="text-center">
	<div class="btn-group" role="group" aria-label="Button group with nested dropdown">
	  <div class="btn-group" role="group">
		<button id="btnGroupDrop1" type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Option</button>
		<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
		  <li><a class="dropdown-item" href="$open_link">Open</a></li>
		  <li><a class="dropdown-item" href="$update_link">Update</a></li>
		  <li><a class="dropdown-item" href="$hide_link">Hide</a></li>
		  <li><a class="dropdown-item" href="$unhide_link">Unhide</a></li>
		  <li><a class="dropdown-item" href="$delete_link">Delete</a></li>
		</ul>
	  </div>
	</div>
  </td>
</tr>
TEXT;
	}
}else{
	echo <<<TEXT
<tr class="text-center">
  <td colspan="200" style="color:red;">empty</td>
</tr>
TEXT;
}
?>
	  </tbody>
	</table>
	<?php vendor_pagenation_class::pagenation_function(); ?>
  </section>
  	<?php include(backend_class::inc("footer")); ?>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!--<script src="extra/apps/views/backend/dashboard/assets/script/dropdown.js"></script>-->
	<?php echo vendor_getMsg_class::get(); ?>
  </body>
</html>
