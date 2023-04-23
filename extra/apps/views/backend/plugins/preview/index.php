<!doctype html>
<html class="no-js" lang="en">
	<head>
		
	</head>
	<body>
		<main>
<?php
$image = array("png", "jpg", "jpeg");
$video = array("mp4", "3gp", "mpeg");
$text = array("txt", "css", "js");
$doc = array("docx", "doc");
$Unsupport = array("exe", "dad", "ini", "apk");
if(in_array($_GET["extention"], $image)){
?>
			<div class="d-flex justify-content-center">
				<a href="<?php echo $_GET["src"]; ?>">
				  <img src="<?php echo $_GET["src"]; ?>">
				</a>
			</div>
			<div data-src="<?php echo $_GET["src"]; ?>" style="background-image:url(<?php echo $_GET["src"]; ?>)">			
<?php
}elseif(in_array($_GET["extention"], $video)){
?>
			<div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2">
				<div class="ratio ratio-16x9 text-center mt-5 mb-4">
					<iframe class="embed-responsive-item"  src="<?php echo $_GET["src"]; ?>" style="max-width: 100%;height: 100%;" allowfullscreen></iframe>
				</div>
			</div>
<?php
}elseif(in_array($_GET["extention"], $text)){
?>
			<iframe id="textdocument" src="<?php echo $_GET["src"]; ?>" style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%; height:100%; border:2px solid black; margin:0; padding:0; overflow:hidden; z-index:999999;" scrolling="auto" >Your browser doesn't support iFrames.</iframe>

<script>
var frame = document.getElementById('textdocument');
    frame.onload = function () {
        var body = frame.contentWindow.document.querySelector('body');
        body.style.color = 'red';
        body.style.fontSize = '18px';
        body.style.lineHeight = '20px';
    };
</script>



<?php
}elseif(in_array($_GET["extention"], $doc)){
?>
			<iframe src='https://view.officeapps.live.com/op/embed.aspx?src=<?php echo $_GET["src"]; ?>' width='1366px' height='623px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>
<?php
}else{
?>
<style>
.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
</style>
<div class="center">
	<h1><?php echo strtoupper($_GET["extention"]); ?> File Not  Support.</h1>
</div>
<?php
}
?>
		</main>
	</body>

</html>