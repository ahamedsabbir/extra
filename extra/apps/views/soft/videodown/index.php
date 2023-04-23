<html lang="en" class="h-100">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Download YouTube video</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<?php echo soft_class::style("layout"); ?>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h2 class="text-center">Download YouTube Video</h2>
		</div>
		<div class="col-lg-12">
			<form action="app.php?url=app_videodown/index_page_function/index/" method="POST" class="formSmall">	
				<div class="input-group">
					<input type="text" class="form-control" name="video_link" placeholder="https://www.youtube.com/watch?v=5cpIZ8zHHXw" <?php if(isset($_POST['video_link'])) echo "value='".$_POST['video_link']."'"; ?>>
					<span class="input-group-btn">
						<button type="submit" name="submit" id="submit" class="btn btn-primary">Go!</button>
					</span>	
				</div>	
			</form>
		</div>
	</div>
</div>
 <pre><?php print_r($formats); ?></pre>
<pre><?php print_r($adaptiveFormats); ?></pre>
	<main>
<div class="container">
    <div class="row formSmall">
        <div class="col-lg-3">
            <img src="<?php echo isset($thumbnail) ? $thumbnail : " "; ?>" style="max-width:100%">
        </div>
        <div class="col-lg-9">
            <h2><?php echo isset($video_title) ? $video_title : " "; ?></h2>
            <p><?php //echo str_split(isset($short_description) ? $short_description : " ", 1000)[0]; ?></p>
        </div>
    </div>
<?php 
if(!empty($formats)): 
	if(@$formats[0]->url == ""): ?>
	<div class="card formSmall">
		<div class="card-header">
			<strong>This video is currently not supported by our downloader!</strong>
			<small><?php 
			$signature = "https://example.com?".$formats[0]->signatureCipher;
						parse_str( parse_url( $signature, PHP_URL_QUERY ), $parse_signature );
						$url = $parse_signature['url']."&sig=".$parse_signature['s'];
				   ?>
			</small>
		</div>
	</div>
<?php 
		die();
	endif;
	endif;
if (isset($formats)): 
?>
        <div class="card formSmall">
            <div class="card-header">
                <strong>With Video & Sound</strong>
            </div>
            
            <div class="card-body">
                <table class="table table-hover">
                    <tr class="active">
                        <td>Type</td>
                        <td>Quality</td>
                        <td>Resolution</td>
                        <td>Action</td>
                    </tr>
<?php              
foreach($formats as $format):
if(@$format->url == ""){
    $signature = "https://example.com?".$format->signatureCipher;
    parse_str( parse_url( $signature, PHP_URL_QUERY ), $parse_signature );
    $video_url = $parse_signature['url']."&sig=".$parse_signature['s'];
}else{
    $video_url = $format->url;
}
?>
                        <tr>
                            <td>
                                <i><?php if($format->mimeType) echo explode(";",explode("/",$format->mimeType)[0])[0]; else echo "Unknown";?></i>
                                <i><?php if($format->mimeType) echo explode(";",explode("/",$format->mimeType)[1])[0]; else echo "Unknown";?></i>
                            </td>
                            <td><?php if($format->quality) echo $format->quality; else echo "Unknown"; ?></td>
                            <td><?php if($format->height AND $format->width) echo $format->height."p * ".$format->width."p"; else echo "mp3"; ?></td>
                            
                            <td>
                                <a href="<?php echo $video_url; ?>"><button type="button" class="btn btn-primary"><i class="fas fa-door-open"></i></button></a>
                               <a href="extra/apps/views/softs/ydownload/downloader.php?link=<?php print urlencode($video_url)?>&title=<?php print urlencode($video_title)?>&
                            type=<?php if($video->mimeType){echo explode(";",explode("/",$video->mimeType)[1])[0]; }else{echo "mp4";}?>"> <button type="button" class="btn btn-primary"><i class="fas fa-cloud-download-alt"></i></button></a>  
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
        
        <!-- Your code here for additional formats -->
        <div class="card formSmall">
		<div class="card-header">
			<strong>Audio Only</strong>
		</div>
		<div class="card-body">
			<table class="table table-hover">
				<tr class="active">
					<td>Type</td>
					<td>Channels</td>
					<td>Bitrate</td>
					<td>Action</td>
				</tr>
				<?php foreach ($adaptiveFormats as $video) :?>
					<?php
					try{
						$video_url = $video->url;
					}catch(Exception $e){
						$signature = $video->signatureCipher;
						parse_str( parse_url( $signature, PHP_URL_QUERY ), $parse_signature );
						$video_url = $parse_signature['url'];
					}
					if(explode(";",explode("/",$video->mimeType)[0])[0] == "audio"){
					?>
					<tr>
						<td>
							<i><?php if(@$video->mimeType) echo explode(";",explode("/",$video->mimeType)[0])[0]; else echo "Unknown"; ?></i>
						</td>
						
						
						<td><?php if(@$video->audioChannels) echo $video->audioChannels; else echo "Unknown";?></td>
						<td><?php if(@$video->bitrate) echo $video->bitrate; else echo "";?></td>
						<td>
							<a href="<?php echo $video_url; ?>"><button type="button" class="btn btn-primary"><i class="fas fa-door-open"></i></button></a>
                               <a href="extra/apps/views/softs/ydownload/downloader.php?link=<?php print urlencode($video_url)?>&title=<?php print urlencode($video_title)?>&
                            type=<?php if($video->mimeType){echo explode(";",explode("/",$video->mimeType)[1])[0]; }else{echo "mp4";}?>"> <button type="button" class="btn btn-primary"><i class="fas fa-cloud-download-alt"></i></button></a> 
						</td>
					</tr>
<?php 
                    }
endforeach;
endif;
?>
			</table>
		</div>
	</div>
</div>
	</main>
</body>
</html>