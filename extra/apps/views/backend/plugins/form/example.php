<!doctype html>
<html lang="en">
  <head>
    <?php include(backend_class::inc("head", $plugins_type, $plugins)); ?>
  </head>
  <body class="bg-light">
     <div class="container">
        <nav class="navbar navbar-light bg-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"><h4>Billing address</h4></a>
            <a class="navbar-brand" href="#">Back</a>
          </div>
        </nav>
      </div>
  <main class="py-4 bg-light text-dark">
   <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <?php echo text_input_function("name", "sabbir"); ?>
            <?php echo number_input_function("mobile", "1"); ?>
            <?php echo password_input_function("password", "abcd1234"); ?>
            <?php echo email_input_function("email", "you@example.com"); ?>
            <?php echo file_input_function("image"); ?> 
            <?php echo textarea_input_function("hello"); ?> 
            	<div class="col-md-12">
          			<button class="btn btn-primary btn-lg" type="submit" value="" name="submit">Save</button>
              	</div>
            </div>
        </form>
      </div>
    </div>
   </div>
  </main>
  	<?php include(backend_class::inc("footer")); ?>
    <script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>    
    <?php echo backend_class::script("form", $plugins_type, $plugins); ?>
  </body>
</html>
