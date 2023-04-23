<?php include(backend_class::sys("security")); ?>
<?php include(backend_class::sys("variables")); ?>
<meta charset="utf-8">
<title><?php echo siteinfo_class::$title; ?></title>
<meta name="description" content="<?php echo siteinfo_class::$description; ?>">
<meta name="keywords" content="<?php echo siteinfo_class::$keywords; ?>">
<meta name="author" content="<?php echo siteinfo_class::$author; ?>"> 
<meta name="copyright" content="">
<link rel="apple-touch-icon" href="<?php echo vendor_file_class::get_file(siteinfo_class::$icon); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--css-->
<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<?php echo backend_class::style("dashboard"); ?>
<?php echo backend_class::style("main"); ?>
<?php echo backend_class::style("features"); ?>
<?php echo backend_class::style("heroes"); ?>
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