<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Freebie: 4 Bootstrap Gallery Templates</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
	<?php echo backend_class::style("thumbnail_gallery", $plugins_type, $plugins); ?>
</head>
<body>
<div class="container gallery-container">
    <h1>Interior Gallery</h1>
    <p class="page-description text-center">Thumbnails With Title And Description</p>   
    <div class="tz-gallery">
        <div class="row">
<?php
foreach($file_array as $file_key => $file_value){
echo $html = <<<HTML
<div class="col-sm-6 col-md-4">
   <div class="thumbnail">
      <a class="lightbox" href="$file_value">
         <img src="$file_value">
      </a>
   </div>
</div> 
HTML;
}                    
?>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>