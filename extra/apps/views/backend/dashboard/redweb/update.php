<!doctype html>
<html lang="en">
<?php
if($redweb_datatable != null){
	foreach($redweb_datatable as $redweb_datatable_key => $redweb_datatable_value){
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
    <?php include(backend_class::inc("models", $plugins_type, $plugins)); ?>
    <?php include(backend_class::inc("newForm")); ?>
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
              </ul>
            </div>
          </div>
        </nav>
      </div>
  <main class="py-4 bg-light text-dark">
   <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <form class="needs-validation" action="<?php echo BASE_URL.'dashboard_redweb_update_class/post_update_function/update/&post_id='.$redweb_datatable_value["id"]; ?>" method="POST" enctype="multipart/form-data">
          <div class="row g-3" id="layerTwoadd">
            <?php echo text_input_function("title", $redweb_datatable_value["title"], $redweb_datatable_value["title"]); ?>
            <?php echo text_input_function("keywords", $redweb_datatable_value["keywords"], $redweb_datatable_value["keywords"]); ?>
            <?php echo textarea_input_function("description", $redweb_datatable_value["description"]); ?>
        
            
            <div class="col-md-12">
              <div class="input-group has-validation">
    			<span class='input-group-text'><label for="category_id">Category ID</label></span>
                <select class="form-select" id="category_id" name="category_id">
                  <option value=""></option>
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
		if($redweb_datatable_value["category_id"] == $framework_category_datatable_value["id"]){
?>
				<option value="<?php echo $framework_category_datatable_value['id']; ?>" selected><?php echo $framework_category_datatable_value['name']; ?></option>
<?php
		}else{
?>
				<option value="<?php echo $framework_category_datatable_value['id']; ?>" ><?php echo $framework_category_datatable_value['name']; ?></option>
<?php
		}
	}
}
?>
                </select>
              </div>
            </div>
            <?php echo file_input_function("thumbnail", $redweb_datatable_value["thumbnail"]); ?>
            <?php echo text_input_function("source", $redweb_datatable_value["source"], $redweb_datatable_value["source"]); ?>
            <?php echo submit_input_function("submit", "update"); ?>
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
}
?>
</html>