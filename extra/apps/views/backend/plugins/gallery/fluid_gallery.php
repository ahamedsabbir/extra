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
	<?php echo backend_class::style("fluid_gallery", $plugins_type, $plugins); ?>

</head>
<body>

<div class="container gallery-container">

    <h1>Bootstrap 3 Gallery</h1>

    <p class="page-description text-center">Fluid Layout With Overlay Effect</p>
    
    <div class="tz-gallery">

        <div class="row">

            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Bridge">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Park">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Tunnel">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Traffic">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Coast">
                </a>
            </div> 
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>">
                    <img src="<?php echo backend_class::source("assets/images/bridge.jpg", $plugins_type, $plugins); ?>" alt="Rails">
                </a>
            </div>

        </div>

    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>