<?php
$website = "https://www.samojug.com";
$apiNews = apiData($website, "sabbir1928374655", "samojugc_news_datatable", array("status" => 1));
$apiAdmin = apiData($website, "sabbir1928374655", "framework_admin_datatable", array("status" => 1));
$i = 0;
foreach($apiNews as $apiNews_key => $apiNews_value){
	$i++;
	$title = $apiNews_value->title;
	$admin_id = $apiNews_value->admin_id;
	foreach($apiAdmin as $apiAdmin_key => $apiAdmin_value){
		if($apiAdmin_value->id == $admin_id){
			$admin_name = $apiAdmin_value->name;
		}
	}
	$thumbnail = $apiNews_value->thumbnail;
	$watched = $apiNews_value->watched;
	echo <<<TEXT
<div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <img src="$website/$thumbnail" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">$title</h5>
    <p class="card-text">admin name: $admin_name</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">An item</li>
		<li class="list-group-item">A second item</li>
		<li class="list-group-item">A third item</li>
    </ul>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
TEXT;
}
?>