<?php echo backend_class::style("sidebars"); ?>
<section id="rightsidenotification" class="rightsidenotification">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNotification()"><span class="closestyle">&times;</span></a>
  <div class="flex-shrink-0 p-3 bg-white">
	<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
	  <span class="fs-5 fw-semibold">Notification </span>
	</a>
<?php
$framework_notification_datatable = controller::$staticData->get("framework_notification_datatable", array("type" => "admin"));
if($framework_notification_datatable){
	foreach($framework_notification_datatable as $framework_notification_datatable_key => $framework_notification_datatable_value){
?>
	<div class="alert alert-warning alert-dismissible fade show" role="alert">
		<button class="btn btn-dark"><i class="<?php echo $framework_notification_datatable_value["font_icon"]; ?>"></i></button><br />
		<strong><?php echo $framework_notification_datatable_value["title"]; ?></strong><br />
		<small><?php echo $framework_notification_datatable_value["subject"]; ?></small>
		<small><?php echo vendor_date_class::new_date($framework_notification_datatable_value["date"]); ?></small>
		<a href="<?php echo $framework_notification_datatable_value["link"]; ?>"><p><?php echo $framework_notification_datatable_value["description"]; ?></p></a>
		<button onclick="window.location='<?php echo BASE_URL."admin_notification_class/admin_notification_delete_function/&page_url=".vendor_code_class::base64url_encode($_SERVER["REQUEST_URI"])."&notification_id=".$framework_notification_datatable_value["id"]; ?>'" type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</div>
<?php
	}
}else{}
?>
  </div>
</section>
<?php echo backend_class::script("sidebars"); ?>