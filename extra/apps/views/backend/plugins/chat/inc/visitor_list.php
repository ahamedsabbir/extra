<style>
.rightsidenotification {
 display: none;
 height: 100%;
 width: 360px;
 position: fixed;
 z-index: 1;
 top: 0;
 left: 0;
 background-color: black;
 overflow-x: hidden;
 transition: 0.10s;
}
.rightsidenotification .closebtn {
	color: #ea0000;
	position: absolute;
	top: 5px;
	right: 25px;
	color: #ea0000;
	font-size: 30px;
	font-weight: bold;
}
</style>
<section id="rightsidenotification" class="rightsidenotification">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNotification()"><span class="closestyle">&times;</span></a>
  <div class="flex-shrink-0 p-3 bg-white">
	<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">	  <span class="fs-5 fw-semibold">Chat List</span></a>
	
<ul class='list-unstyled'>
<?php
if(isset($framework_visitor_datatable)){
	foreach($framework_visitor_datatable as $framework_visitor_datatable_key => $framework_visitor_datatable_value){
?>
<li>
 <button onclick="window.location='<?php echo BASE_URL.'plugins_chat_class/index_page_function/achat/&visitor_id='.$framework_visitor_datatable_value["id"]; ?>'" type="button" class="btn">
  <?php echo $framework_visitor_datatable_value["env_user"]; ?> <span class="badge bg-secondary"><?php echo vendor_date_class::natural($framework_visitor_datatable_value["date"]); ?></span>
 </button>
</li>
<?php
	}
}
?>
    </ul>
  </div>
</section>
<script>
function openNotification() {
  document.getElementById("rightsidenotification").style.display = "block";
}
function closeNotification() {
  document.getElementById("rightsidenotification").style.display = "none";
}
</script>