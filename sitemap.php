<!DOCTYPE html>
<html lang="en">
  <head>
    <title>public sitemap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>
  <body>
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">url</th>
      <th scope="col">lastmod</th>
      <th scope="col">priority</th>
    </tr>
  </thead>
  <tbody>
<?php
$sitemap = simplexml_load_file("sitemap.xml");
foreach($sitemap->url as $url){
  	$loc = $url->loc;
    $lastmod = $url->lastmod;
  	$priority = $url->priority;
    echo <<<TEXT
<tr>
   <th><a href="$loc" >$loc</a></th>
   <td>$lastmod</td>
   <td>$priority</td>
</tr>
TEXT;   
}
?>  
  </tbody>
</table>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>