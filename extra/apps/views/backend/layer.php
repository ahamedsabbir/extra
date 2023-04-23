<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
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
    <?php echo theme_class::style("form"); ?>
  </head>
  <body class="bg-light">
    <?php include(backend_class::inc("report")); ?>
     <div class="container">
        <nav class="navbar navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="<?php echo BACKEND_HOME; ?>"><h4>Home</h4></a>
          </div>
        </nav>
      </div>
  <main class="py-4 bg-light text-dark">
   <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <form class="needs-validation" action="<?php echo BASE_URL.'theme_sumtech_insert_class/post_insert_function/post_submit'; ?>" method="POST" enctype="multipart/form-data">
          <div class="row g-3">

<div class="col-md-12">
  <label for="layerOne" class="form-label">Layer One</label>
  	<select class="form-select layerOne" id="layerOne" name="layerOne">
		<option value=""></option>
<?php
if(isset($framework_layerone_datatable)){
	foreach($framework_layerone_datatable as $framework_layerone_datatable_key => $framework_layerone_datatable_value){
?>
				<option value="<?php echo $framework_layerone_datatable_value['id']; ?>" ><?php echo $framework_layerone_datatable_value['name']; ?></option>
<?php
	}
}
?>     
    </select>
    <div class="invalid-feedback">
      Please select a valid country.
    </div>
</div>             
<div class="col-md-12">
  <label for="layerTwo" class="form-label">Layer Two</label>
  	<select class="form-select layerTwo" id="layerTwo" name="layerTwo">
		<option value=""></option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Layer Two.
    </div>
</div>                      
<div class="col-md-12">
  <label for="layerThree" class="form-label">Layer Three</label>
  	<select class="form-select layerThree" id="layerThree" name="layerThree">
		<option value=""></option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Layer Three.
    </div>
</div>                     
<div class="col-md-12">
  <label for="layerFour" class="form-label">Layer Four</label>
  	<select class="form-select layerFour" id="layerFour" name="layerFour">
		<option value=""></option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Layer Four.
    </div>
</div>                      
<div class="col-md-12">
  <label for="layerFive" class="form-label">Layer Five</label>
  	<select class="form-select layerFive" id="layerFive" name="layerFive">
		<option value=""></option>
    </select>
    <div class="invalid-feedback">
      Please select a valid Layer Five.
    </div>
</div>   
<hr />                      
                
            	<div class="col-md-12">
          			<button class="btn btn-primary btn-lg" type="submit" value="insert" name="submit">Save</button>
                  	<?php echo report_class::chack_report("newbootstrap5error"); ?>
              	</div>
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
    <?php echo theme_class::script("form"); ?>
    <script type="text/javascript">
 $(document).ready(function(){ 
    // layerOne dependent ajax
    $("#layerOne").on("change",function(){
      var layerOne = $(this).val();
      $.ajax({
        url :"index.php?url=layer/action/",
        type:"POST",
        cache:false,
        data:'layerOne='+layerOne,
        success:function(html){
          $("#layerTwo").html(html); 
        }
      });
    });
    // layerTwo dependent ajax
    $("#layerTwo").on("change",function(){
      var layerTwo = $(this).val();
      $.ajax({
        url :"index.php?url=layer/action/",
        type:"POST",
        cache:false,
        data:'layerTwo='+layerTwo,
        success:function(html){
          $("#layerThree").html(html); 
        }
      });
    });
   	// layerThree dependent ajax
    $("#layerThree").on("change",function(){
      var layerThree = $(this).val();
      $.ajax({
        url :"index.php?url=layer/action/",
        type:"POST",
        cache:false,
        data:'layerThree='+layerThree,
        success:function(html){
          $("#layerFour").html(html); 
        }
      });
    });
   	// layerFour dependent ajax
    $("#layerFour").on("change",function(){
      var layerFour = $(this).val();
      $.ajax({
        url :"index.php?url=layer/action/",
        type:"POST",
        cache:false,
        data:'layerFour='+layerFour,
        success:function(html){
          $("#layerFive").html(html); 
        }
      });
    });
});
</script>
  </body>
</html>
