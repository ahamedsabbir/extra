<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Blog Template · Bootstrap v5.0</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    

    <!-- Bootstrap core CSS -->
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
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <?php echo backend_class::style("contacts", $plugins_type, $plugins); ?>
  </head>
  <body>
    <?php include(backend_class::inc("models", $plugins_type, $plugins)); ?>
    <?php include(backend_class::inc("report")); ?>


  <header class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#accountModal">Add</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li>
          </ul>
          <form class="d-flex" action="index.php?url=plugins_memory_class/account_search_function/account" method="post">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          &nbsp;
          <?php echo report_class::chack_report("newbootstrap5error"); ?>
        </div>
      </div>
    </nav>
  </header>



<main class="container">
  <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">Title of a longer featured blog post</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>
  
  
<?php
if($framework_account_datatable != null){
?>
  <div class="row mb-2">
<?php
foreach($framework_account_datatable as $framework_account_datatable_key => $framework_account_datatable_value){
  	$id = $framework_account_datatable_value["id"];
  	$name = $framework_account_datatable_value["name"];
  	$mobile = $framework_account_datatable_value["mobile"];
  	$email = $framework_account_datatable_value["email"];
  	$password = $framework_account_datatable_value["password"];
  	$note = $framework_account_datatable_value["note"];
  	$update_function = account_update($framework_account_datatable_value);
  	$open_function = account_open($framework_account_datatable_value);
	echo <<<TEXT
<div class="col-md-6">
  <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
     <div class="col p-4 d-flex flex-column position-static">
        <h3 class="mb-0">$name</h3>
        <div class="mb-1 text-muted">Email: $email</div>
        <div class="mb-1 text-muted">Mobile: $mobile</div>
        <div class="mb-1 text-muted">Password: $password</div>
        <p class="mb-auto">
        	<span></span>
        </p>
        <div class="btn-group" role="group" aria-label="Basic example">
          $update_function
          $open_function
          <button type="button" class="btn btn-secondary" ondblclick="window.location='index.php?url=plugins_memory_class/account_delete_function/account/&post_id=$id'">Delete</button>
        </div>
      </div>
   </div>
</div>
TEXT;
  }
?>     
</div>
<?php
  vendor_pagenation_class::pagenation_function();
  }
?>

  
  
</main>
<br />
<footer class="blog-footer">
  <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
  <p>
    <a href="#">Back to top</a>
  </p>
</footer>


  <?php echo vendor_getMsg_class::get(); ?>  
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
