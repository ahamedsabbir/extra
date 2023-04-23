<style>
#fixed_button{
	position:absolute;
	top:50px;
	right:3px;
  	border: 2px solid black;
  	color: black;
  	border-radius:30%;
	text-decoration:none;
}
.fixedButton{
    display: none;
    position:absolute;
	top:30px;
	right:-1px;
	margin:0;
	padding:5px 3px;
}
</style>
<button id="fixed_button" class="btn btn-warning" onclick="openFixedButton()">"_"</button>
<div id="fixedButton" class="fixedButton" href="#">
	<div class="btn-group-vertical">
		<a href="javascript:void(0)" class="btn btn-danger closebtn" onclick="closeFixedButton()"><span class="closestyle">Close</span></a>
		<button type="button" class="btn btn-secondary" onclick="document.location.reload(true)">Reload</button>
<?php
if(session_class::get('admin_login') == true){
?>
    <button type="button" class="btn btn-secondary" onclick="window.location='index.php?url=project/index_page_function/project/'">Insert</button>
<?php
}
 ?>
      
		<button type="button" class="btn btn-secondary" onclick="window.location='<?php echo BACKEND_HOME; ?>'">Admin&nbsp;<span class="badge badge-warning">PVT.</span></button>
<?php
$framework_project_datatable = main_index_controller_class::project_function();
if($framework_project_datatable != null AND isset($framework_project_datatable)){
  foreach($framework_project_datatable as $framework_project_datatable_key => $framework_project_datatable_value){
    $name = $framework_project_datatable_value["name"];
    $link = $framework_project_datatable_value["link"];
    $button = $framework_project_datatable_value["button"];
    $font_icon = $framework_project_datatable_value["font_icon"];
  	echo <<<TEXT
<button type="button" class="btn $button" onclick="window.location='$link'">$name&nbsp;<span class="badge badge-light"><i class="$font_icon"></i></span></button>
TEXT;
  }
}
?>
      	<button type="button" class="btn btn-secondary" onclick="window.location='index.php?url=theme_help/index_page_function/index/&theme_name=help&post_datatable=framework_help_datatable'">Help&nbsp;<span class="badge badge-light"><i class="fa-solid fa-circle-question"></i></span></button>
      	<button type="button" class="btn btn-secondary" onclick="window.location='index.php?url=theme_example/index_page_function/index/&theme_name=example&post_datatable=example_datatable'">Example&nbsp;<span class="badge badge-light"><i class="fa-solid fa-dungeon"></i></span></button>
      	<button type="button" class="btn btn-dark" onclick="history.back()">Back</button>
	</div>
</div>
<script>
function openFixedButton() {
  document.getElementById("fixedButton").style.display = "block";
}
function closeFixedButton() {
  document.getElementById("fixedButton").style.display = "none";
}
</script>