<?php
$fileUrl = __FILE__;
$FileName = basename($fileUrl, ".php");
?>
<!doctype html>
<html lang="en">
  <head>
	<?php include(theme_class::source("app/content/inc/head.php")); ?>
  </head>
  <body class="">
	<?php include(theme_class::source("app/content/inc/models.php")); ?>
	<?php include(backend_class::inc("report")); ?>
	<?php include(backend_class::inc("newForm")); ?>
	<?php include(theme_class::source("app/content/inc/header.php")); ?>
	  <main class="py-4">
		   <div class="container">
				<div class="row">
					  <div class="col-md-12 col-lg-12">
						<?php echo session_class::ontime("alert"); ?>
						<form class="needs-validation" action="<?php echo BASE_URL.'content/content_update_function/index/&theme_name='.$theme_name; ?>" method="POST" enctype="multipart/form-data"  onsubmit="chackText()">
							<div class="row g-3">
<?php
$xml = simplexml_load_file($content);
foreach($xml->content as $content){
	if($content["status"] == true){
		$nav_icon = vendor_code_class::base64url_decode($content->nav_icon);
		$nav_icon_field = file_input_function("nav_icon", $nav_icon, $nav_icon);
		
		$nav_sologan = vendor_code_class::base64url_decode($content->nav_sologan);
		$nav_sologan_field = text_input_function("nav_sologan", $nav_sologan, $nav_sologan); 
		
		$banner_video = vendor_code_class::base64url_decode($content->banner_video);
		$banner_video_field = file_input_function("banner_video", $banner_video, $banner_video);
		
		$about_center = vendor_code_class::base64url_decode($content->about_center);
		$about_center_field = textarea_input_function("about_center", $about_center, $about_center);
		
		$contact_us = vendor_code_class::base64url_decode($content->contact_us);
		$contact_us_field = textarea_input_function("contact_us", $contact_us, $contact_us);
		
		$popular_courses = vendor_code_class::base64url_decode($content->popular_courses);
		$popular_courses_field = textarea_input_function("popular_courses", $popular_courses, $popular_courses);
		
		$stay_in_touch = vendor_code_class::base64url_decode($content->stay_in_touch);
		$stay_in_touch_field = text_input_function("stay_in_touch", $stay_in_touch, $stay_in_touch);
		
		$payment_header = vendor_code_class::base64url_decode($content->payment_header);
		$payment_header_field = text_input_function("payment_header", $payment_header, $payment_header);
		
		$payment_title = vendor_code_class::base64url_decode($content->payment_title);
		$payment_title_field = text_input_function("payment_title", $payment_title, $payment_title);
		
		$courses_header = vendor_code_class::base64url_decode($content->courses_header);
		$courses_header_field = text_input_function("courses_header", $courses_header, $courses_header);
		
		$courses_title = vendor_code_class::base64url_decode($content->courses_title);
		$courses_title_field = text_input_function("courses_title", $courses_title, $courses_title);
		
		$courses_video = vendor_code_class::base64url_decode($content->courses_video);
		$courses_video_field = file_input_function("courses_video", $courses_video, $courses_video);
		
		echo <<<DOCUMENT

<h2 class="text-center">NAV Edit</h2>
<hr />
$nav_icon_field
$nav_sologan_field

<h2 class="text-center">Banner Edit</h2>
<hr />
$banner_video_field

<h2 class="text-center">Courses Edit</h2>
<hr />
$courses_header_field
$courses_title_field

<h2 class="text-center">Courses Video Edit</h2>
<hr />
$courses_video_field

<h2 class="text-center">Payment Edit</h2>
<hr />
$payment_header_field
$payment_title_field


<h2 class="text-center">Footer Edit</h2>
<hr />
$about_center_field
$contact_us_field
$popular_courses_field
$stay_in_touch_field
DOCUMENT;
        submit_input_function("submit", "update");
	}
}
?>
							</div>
						</form>
					  </div>
				</div>
		   </div>
	  </main>
  </body>
  <?php include(theme_class::source("app/content/inc/foot.php")); ?>
</html>