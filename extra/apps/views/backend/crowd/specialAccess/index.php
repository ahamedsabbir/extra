<!doctype html>
<html class="no-js" lang="">
<head>
	<?php include(backend_class::inc("head")) ?>
	<link rel="stylesheet" href="extra/resources/framework/charts.css-0.9.0/dist/charts.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js" integrity="sha512-QSkVNOCYLtj73J4hbmVoOV6KVZuMluZlioC+trLpewV8qMjsWqlIQvkn1KGX2StWvPMdWGBqim1xlC8krl1EKQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
	<body>
		<?php include(backend_class::inc("models")) ?>
      	<?php include(backend_class::inc("models", $plugins_type, $plugins)) ?>
      	<?php include(backend_class::inc("header")) ?>
      	<section>
          <table class="table">
            <thead>
              <tr>
                <th scope="col" colspan="5" class="text-center"><button class="btn" data-bs-toggle="modal" data-bs-target="#addSpecialModal">add new</button></th>
              </tr>
              <tr>
                <th scope="col">NAME</th>
                <th scope="col">UNIQUE ID</th>
                <th scope="col">MOBILE</th>
                <th scope="col">TOTAL POST</th>
                <th scope="col">CURRENT POST</th>
              </tr>
            </thead>
            <tbody>
<?php
if(isset($framework_access_datatable) AND $framework_access_datatable != null){
	foreach($framework_access_datatable as $framework_access_datatable_key => $framework_access_datatable_value){
      	$name = $framework_access_datatable_value["name"];
      	$unique_id = $framework_access_datatable_value["unique_id"];
      	$mobile = $framework_access_datatable_value["mobile"];
      	$total_post = total_post($question_datatable, $unique_id);
      	$current_post = current_post($question_datatable, $unique_id);
    	echo <<<TEXT
<tr>
   <th scope="row">$name</th>
   <td>$unique_id</td>
   <td>$mobile</td>
   <td>$total_post</td>
    <td>$current_post</td>
</tr>
TEXT;
    }
} 
?>
              
              
            </tbody>
          </table>
      	</section>
		<?php include(backend_class::inc("foot")) ?>
	</body>
</html>