<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<!doctype html>
<html lang="en">
  <head>
	<?php include(theme_class::source("app/content/inc/head.php")); ?>
  </head>
  <body class="bg-light">
    <?php include(theme_class::source("app/content/inc/models.php")); ?>
    <?php include(backend_class::inc("report")); ?>
    <?php include(backend_class::inc("newForm")); ?>
    <?php include(theme_class::source("app/content/inc/header.php")); ?>
    <main class="py-4 bg-light text-dark">
      <div class="container">
        <?php include(backend_class::inc("dashboard")) ?>
        <?php include(backend_class::inc("slider")) ?>
      </div>
    </main>
  </body>
  <?php include(theme_class::source("app/content/inc/foot.php")); ?>
</html>