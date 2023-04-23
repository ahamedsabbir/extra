<meta charset="utf-8">
<base href="<?php echo BASE_SITE; ?>">
<meta name="generator" content="Hugo 0.84.0">
<link rel="manifest" href="site.webmanifest">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--page content-->
<title><?php echo siteinfo_class::$title; ?></title>
<meta name="description" content="<?php echo strip_tags(siteinfo_class::$description); ?>">
<meta name="author" content="<?php echo siteinfo_class::$author; ?>">
<meta name="keywords" content="<?php echo siteinfo_class::$keywords; ?>">
<link rel="icon" href="<?php echo siteinfo_class::$icon; ?>" />
<meta name="theme-color" content="#ffffff" />
<!--facebook instragram -->
<meta property="fb:app_id" content="637937758337235"/>
<meta property="og:site_name" content="@<?php echo WEBSITE; ?>"/>
<meta property="og:title" content="<?php echo siteinfo_class::$title; ?>" />
<meta property="og:description" content="<?php echo strip_tags(siteinfo_class::$description); ?>" />
<meta property="og:type" content="<?php echo TYPE; ?>">
<meta property="og:url" content="<?php echo "http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"]; ?>"/>
<meta property="og:url:secure_url" content="<?php echo "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"]; ?>"/>
<meta property="og:image" content="<?php echo "https://".WEBSITE."/".siteinfo_class::$icon; ?>"/>
<meta property="og:image:alt" content="<?php echo WEBSITE; ?>" />
<meta property="og:image:width" content="400" />
<meta property="og:image:height" content="400" />
<!--twitter -->
<meta name="twitter:title" content="<?php echo siteinfo_class::$title; ?>" />
<meta name="twitter:image" content="<?php echo "https://".WEBSITE."/".siteinfo_class::$icon; ?>" />
<meta name="twitter:url" content="<?php echo "https://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"]; ?>" />
<meta name="twitter:card" content="none" />
<!--style-->
<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/blog/">
<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="extra/resources/framework/bootstrap-4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<?php echo theme_class::style("blog"); ?>
<link href="extra/apps/views/themes/example/assets/style/style.css" rel="stylesheet">
<style>
  .bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
  }

  @media (min-width: 768px) {
	.bd-placeholder-img-lg {
	  font-size: 3.5rem;
	}
  }
</style>