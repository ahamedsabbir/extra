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
        <?php include(backend_class::inc("menu")); ?>
      </div>
	  <?php include(backend_class::inc("dashboard")) ?>
   <div class="container">
        <form class="" action="<?php echo BASE_URL.'plugnis_samojugc_dashboard_class/samojugc_update_function/samojugc/&post_id=1'; ?>" method="POST" enctype="multipart/form-data">
			<div class="row g-3" id="">
<?php
if($example_datatable != null){
	foreach($example_datatable as $example_datatable_key => $example_datatable_value){
?>
				<?php echo text_input_function("name", $example_datatable_value["name"], $example_datatable_value["name"]); ?>
				<?php echo text_input_function("author", $example_datatable_value["author"], $example_datatable_value["author"]); ?>
				<?php echo text_input_function("title", $example_datatable_value["title"], $example_datatable_value["title"]); ?>
				<?php echo text_input_function("keywords", $example_datatable_value["keywords"], $example_datatable_value["keywords"]); ?>
				<?php echo text_input_function("description", $example_datatable_value["description"], $example_datatable_value["description"]); ?>
				<?php //echo textarea_input_function("note", $example_datatable_value["note"], $example_datatable_value["note"]); ?>
				<?php echo email_input_function("email", $example_datatable_value["email"], $example_datatable_value["email"]); ?>
				<?php echo text_input_function("facebook", $example_datatable_value["facebook"], $example_datatable_value["facebook"]); ?>
				<?php echo text_input_function("twitter", $example_datatable_value["twitter"], $example_datatable_value["twitter"]); ?>
				<?php echo text_input_function("instagram", $example_datatable_value["instagram"], $example_datatable_value["instagram"]); ?>
				<?php echo text_input_function("linkedin", $example_datatable_value["linkedin"], $example_datatable_value["linkedin"]); ?>
				<?php echo text_input_function("youtube", $example_datatable_value["youtube"], $example_datatable_value["youtube"]); ?>
				<?php //echo textarea_input_function("address", $example_datatable_value["address"], $example_datatable_value["address"]); ?>
				<?php echo file_input_function("icon", $example_datatable_value["icon"]); ?>
				<?php echo submit_input_function("submit", "update"); ?>
<?php
	}
}
?>
            </div>
        </form>
      </div>
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
