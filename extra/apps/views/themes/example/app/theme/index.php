<!doctype html>
<html lang="en">
<?php
$theme = simplexml_load_file("extra/apps/views/themes/".$theme_name."/assets/xml/theme.xml");
foreach($theme->theme as $theme){
?>
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
    <?php echo backend_class::style("newForm"); ?>
  </head>
  <body class="bg-light">
    <?php include(backend_class::inc("report")); ?>
    <?php include(backend_class::inc("newForm")); ?>
     <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
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
              <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </div>
          </div>
        </nav>
      </div>
  <main class="py-4 bg-light text-dark">
   <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <form class="needs-validation" action="<?php echo BASE_URL.'theme/theme_update_function/index/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data" onsubmit="chackText()">
          <div class="row g-3">
            <?php echo text_input_function("name", $theme->name, $theme->name); ?>
            <?php echo text_input_function("title", $theme->title, $theme->title); ?>
            <?php echo textarea_input_function("Keywords", $theme->Keywords, $theme->Keywords); ?>
            <?php echo ckeditor_textarea_function("description", $theme->description); ?>
            <?php echo text_input_function("author", $theme->author, $theme->author); ?>
            <?php echo file_input_function("icon", $theme->icon); ?>
            <div class="col-md-12">
  				<div class="input-group has-validation">
                  <div class="form-check">
<?php
$fixed_button = $theme->fixed_button;
if("$fixed_button" == 1){                         
?> 
        <input type="checkbox" class="form-check-input" id="fixed_button" name="fixed_button" value="33"checked>
<?php
}else{                      
?>
        <input type="checkbox" class="form-check-input" id="fixed_button" name="fixed_button" value="1">
<?php
}                      
?>                  
                    <label class="form-check-label" for="fixed_button">fixed_button</label>
                  </div> 
                </div>
            </div>
            <div class="col-md-12">
  				<div class="input-group has-validation">
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="same-address">
                    <label class="form-check-label" for="same-address">advertise</label>
                  </div> 
                </div>
            </div>
            <div class="col-md-12">
  				<div class="input-group has-validation">
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="same-address">
                    <label class="form-check-label" for="same-address">scroll_button</label>
                  </div> 
                </div>
            </div>
            <?php echo submit_input_function("submit", "save"); ?>
            </div>
        </form>
      </div>
    </div>
   </div>
  </main>
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
    <?php echo vendor_getMsg_class::get(); ?>
    <?php echo backend_class::script("newForm"); ?>

  </body>
<?php
}
?>
</html>
