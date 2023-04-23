<?php
$xml = simplexml_load_file("$theme_url/assets/xml/page/$page_name.xml");
foreach($xml->index as $index){
	if($index["status"] == 1){
		foreach($index->includes as $includes){
			if($includes["status"] == 1){
				foreach($includes->part as $part){
					if($part["status"] == 1){
						include(theme_class::part($part));
					}
				}
			}
		}
	}
}
?>