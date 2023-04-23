<!doctype html>
<html class="no-js" lang="">
<head>
	<?php include(backend_class::inc("head")); ?>
	<body>
<?php 
$backendMenu = <<<TEXT
<li class="nav-item">
  <a class="nav-link text-white" href="index.php?url=plugins_database_class/datatable_sql_function/&sql=TRUNCATE framework_history_datatable&$send_page_link" onclick="confirm('Press a button!')">Clear Table</a>
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
				  <th scope="col">URL</th>
				  <th scope="col">Created</th>
				</tr>
			  </thead>
			  <tbody>
		<?php 
			$allLinks = Controller::$staticData->get("framework_history_datatable");
			$i = 0;
			foreach($allLinks as $linkskey => $linksvalue){
				$i++;
				$id = $linksvalue["visitor_id"] != 0 ? "V".$linksvalue["visitor_id"] : "A".$linksvalue["admin"];
				$address = $linksvalue["address"];
				$created = $linksvalue["created"];
				echo <<<TEXT
<tr>
	<th scope="row">$i</th>
	<td>$id</td>
	<td>$address</td>
	<td>$created</td>
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