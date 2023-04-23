<?php
$website = "https://www.samojug.com";
$apiNews = apiData($website, "sabbir1928374655", "samojugc_news_datatable", array("topnews" => 1, "status" => 1));
$apiAdmin = apiData($website, "sabbir1928374655", "framework_admin_datatable", array("status" => 1));
$i = 0;
if($apiNews != null){
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
		$liked = $apiNews_value->liked;
		$unliked = $apiNews_value->unliked;
		$watched = $apiNews_value->watched;
		$date = $apiNews_value->date;
		echo <<<TEXT
<ul class="list-group py-2">
  <li class="list-group-item">Serial :- $i</li>
  <li class="list-group-item">Admin :- $admin_name</li>
  <li class="list-group-item">Title :- $title</li>
  <li class="list-group-item">Thumbnail:- <a href="$website/$thumbnail" >$thumbnail</a></li>
  <li class="list-group-item">liked:- $liked</li>
  <li class="list-group-item">Unliked:- $unliked</li>
  <li class="list-group-item">Watched:- $watched</li>
  <li class="list-group-item">Date:- $date</li>
</ul>
TEXT;
	}
}
?>