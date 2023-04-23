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
                  <button class="nav-link">addElement</button>
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
<?php
if($sumtechit_course_datatable != null){
	foreach($sumtechit_course_datatable as $sumtechit_course_key => $sumtechit_course_value){
		$id = $sumtechit_course_value["id"];
		$name = $sumtechit_course_value["name"];
		$heading = $sumtechit_course_value["heading"];
		$type = $sumtechit_course_value["type"];
		$category = $sumtechit_course_value["category"];
		$title = $sumtechit_course_value["title"];
		$description = $sumtechit_course_value["description"];
		$details = $sumtechit_course_value["details"];
		$facilities = $sumtechit_course_value["facilities"];
		$old_price = $sumtechit_course_value["old_price"];
		$new_price = $sumtechit_course_value["new_price"];
		$img = $sumtechit_course_value["img"];
		$action = BASE_URL."dashboard_sumtechit/courses_update_function/courses_update/&post_id=$id";
?>
        <form class="needs-validation" action="<?php echo $action; ?>" method="POST" enctype="multipart/form-data">
          <div class="row g-3" id="">
            <?php echo text_input_function("name", $name, $name); ?>
            <?php echo text_input_function("heading", $heading, $heading); ?>
			<div class="col-md-12">
              <div class="input-group has-validation">
    			<span class='input-group-text'><label for="$country">Course Type</label></span>
                <select class="form-select" id="country" name="type">
<?php
if($type == "online"){
	echo <<<TEXT
		<option value='online' selected>online</option>
		<option value='offline' >offline</option>
TEXT;
}elseif($type == "offline"){
	echo <<<TEXT
		<option value='online' >online</option>
		<option value='offline' selected>offline</option>
TEXT;
}else{
	echo <<<TEXT
		<option value='online' >online</option>
		<option value='offline' >offline</option>
TEXT;
}
?>
					
                </select>
              </div>
            </div>
			
			<?php echo select_input_function($framework_category_datatable, "category", $category); ?>
			
			
			
			
			
			<?php echo text_input_function("title", $title, $title); ?>
			<?php echo textarea_input_function("description", $description, $description); ?>
			<?php echo textarea_input_function("details", $details, $details); ?>
			<?php echo ckeditor_textarea_function("facilities", $facilities, $facilities); ?>
			<?php echo number_input_function("old_price", $old_price, $old_price); ?>
			<?php echo number_input_function("new_price", $new_price, $new_price); ?>
			<?php echo newFile_input_function("img", $img); ?>
            <?php echo submit_input_function("submit", "update"); ?>
            </div>
        </form>
<?php
	}
}
?>
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
<script type="text/javascript">
$(document).ready(function(){ 
  // layerOne dependent ajax
  $("#addElement").on('change', function(){
    var file_data = $("#addElement").prop('files')[0];   
    var form_data = new FormData();                  
    //form_data.append('file', file_data);
    var form_data = 'file='+file_data;
    $.ajax({
      url :"index.php?url=plugins_form_class/add_fild_function/",
      type:"POST",
      cache:false,
      contentType: false,
      processData: false,
      data:form_data,
      success:function(html){
        $("#layerTwoadd").html(html); 
      }
    });
  });
});
</script>
  </body>
</html>
