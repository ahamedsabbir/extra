<?php
class videodown extends soft_videodown_controller_class{
	public function __construct(){
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "videodown_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		if(isset($_POST['submit'])){
			$video_link = $_POST['video_link'];
			preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $video_link, $match);
			echo $video_id =  $match[1];
			$video = json_decode($this->method_array["youtube_class"]->getVideoInfo($video_id));			
          	$get_data_array["formats"] = $video->streamingData->formats;
			$get_data_array["adaptiveFormats"] = $video->streamingData->adaptiveFormats;
			$get_data_array["thumbnails"] = $video->videoDetails->thumbnail->thumbnails;
			$get_data_array["video_title"] = $video->videoDetails->title;
			$get_data_array["short_description"] = $video->videoDetails->shortDescription;
			$get_data_array["thumbnail"] = end($get_data_array["thumbnails"])->url;
		}
		$this->view_load_object_arrays->view_load_functions(soft_class::page("index"), $this->get_data_array, $this->read_data_array, $page);
	}
	public function __destruct(){}
}
?>