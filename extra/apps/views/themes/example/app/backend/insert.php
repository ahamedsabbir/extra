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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
     <div class="">
		<?php include(theme_class::source("app/backend/inc/menu.php")); ?>
     </div>
	 <section class="container">
		<div class="p-5 bg-primary text-white">
		  <h1>Insert Post Form</h1>
		  <p>Lorem ipsum...</p>
		</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<?php include(theme_class::source("app/backend/inc/dropdown.php")); ?>
			</div>
		</div>
	</div>
  <section class="py-4 bg-light text-dark">
   <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
	  <?php echo session_class::ontime("alert"); ?>
		<?php 
			$get_array_key = array("class", "function", "page");
			$get_array_value = array("theme_example_backend_class", "loop_page_function", "loop");
			$insertAction = address_class::address_function("theme_example_backend_class", "insert_post_function", "insert", $get_array_key, $get_array_value, "&id=1"); 
		?>
        <form class="needs-validation" action="<?php echo $insertAction; ?>" method="POST" enctype="multipart/form-data" onsubmit="chackText()">
          <div class="row g-3" id="">
            <?php echo text_input_function("title"); ?>
            <?php echo text_input_function("keywords"); ?>
            <?php echo select_input_function(controller::$staticData->getAll("framework_category_datatable", array("datatable" => "example_datatable")), "category"); ?>
            <?php echo ckeditor_textarea_function("description", "your description write here."); ?>
            <?php echo file_input_function("thumbnail"); ?>
            <?php echo number_input_function("quantity"); ?>
            <?php echo number_input_function("price"); ?>
            <?php echo number_input_function("discount"); ?>
            <?php echo submit_input_function("submit", "insert"); ?>
            </div>
        </form>
      </div>
    </div>
   </div>
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
    <script src="extra/apps/views/backend/dashboard/assets/script/dropdown.js"></script>
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
