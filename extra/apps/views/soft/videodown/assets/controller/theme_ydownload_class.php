<?php
class theme_ydownload_class extends frontend_ydownload_controller_class{
  	public $primary_datatable;
  	public $secondary_datatable;
  	public $tertiary_datatable;
	public $quaternary_datatable;
	public function __construct(){
		parent::__construct();
		$this->primary_datatable = $this->get_data_array["primary_datatable"] = "ydownload_datatable";
	}
	public function index_page_function($page, $array_key = false, $array_value = false){
		/*if(isset($_POST['submit']) AND  $_POST['submit'] == "download"){
			$video_link = $_POST['video_link'];
			preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $video_link, $match);
			$video_id =  $match[1];
			$youtube_download_object = $this->methods_load_object_array->methods_load_function("youtube_download_class");
			$video = json_decode($youtube_download_object->getVideoInfo($video_id));			
			$get_data_array["formats"] = $video->streamingData->formats;
			$get_data_array["adaptiveFormats"] = $video->streamingData->adaptiveFormats;
			$get_data_array["thumbnails"] = $video->videoDetails->thumbnail->thumbnails;
			$get_data_array["video_title"] = $video->videoDetails->title;
			$get_data_array["short_description"] = $video->videoDetails->shortDescription;
			$get_data_array["thumbnail"] = end($get_data_array["thumbnails"])->url;
		}*/
		$this->view_load_object_arrays->view_load_functions(theme_class::page($page), $this->get_data_array);
	}
	public function __destruct(){}
}
?>