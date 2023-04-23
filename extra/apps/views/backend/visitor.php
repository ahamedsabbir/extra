<!doctype html>
<html class="no-js" lang="">
<head>
	<?php include(backend_class::inc("head")); ?>
	<body>
<?php 
$backendMenu = <<<TEXT
<li class="nav-item">
  <a class="nav-link text-white" href="index.php?url=plugins_database_class/datatable_sql_function/&sql=TRUNCATE framework_visitor_datatable&$send_page_link" onclick="confirm('Press a button!')">Clear Table</a>
</li>
TEXT;
array_class::set("backendMenu", $backendMenu);
include(backend_class::inc("menu")); 
?>
		<div>
			<table class="table table-bordered">
			  <thead>
				<tr>
				  <th scope="col">#</th>
				  <th scope="col">ID</th>
				  <th scope="col">IP</th>
				  <th scope="col">session</th>
				  <th scope="col">Country</th>
				  <th scope="col">City</th>
				  <th scope="col">block</th>
				  <th scope="col">Date</th>
				</tr>
			  </thead>
			  <tbody>
		<?php 
			$allLinks = Controller::$staticData->get("framework_visitor_datatable");
			$i = 0;
			foreach($allLinks as $linkskey => $linksvalue){
				$i++;
				$id = $linksvalue["id"];
				$ip = $linksvalue["ip"];
				$session = $linksvalue["session"];
				$country = $linksvalue["country"];
				$city = $linksvalue["city"];
				$block = $linksvalue["block"];
				$date = $linksvalue["date"];
				echo <<<TEXT
<tr>
	<th scope="row">$i</th>
	<td>$id</td>
	<td>$ip</td>
	<td>$session</td>
	<td>$country</td>
	<td>$city</td>
	<td>$block</td>
	<td>$date</td>
</tr>	
TEXT;
				
			}
		?>
				</tbody>
			</table>
		</div>
		<?php include(backend_class::inc("footer")); ?>
	</body>
		<?php include(backend_class::inc("foot")); ?>
</html>