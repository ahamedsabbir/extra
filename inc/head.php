<?php include(backend_class::sys("security")); ?>
<meta charset="utf-8">
<title><?php echo siteinfo_class::$title; ?></title>
<meta name="description" content="<?php echo siteinfo_class::$description; ?>">
<meta name="keywords" content="<?php echo siteinfo_class::$keywords; ?>">
<meta name="author" content="<?php echo siteinfo_class::$author; ?>"> 
<meta name="copyright" content="">
<link rel="apple-touch-icon" href="<?php echo vendor_file_class::get_file(siteinfo_class::$icon); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
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