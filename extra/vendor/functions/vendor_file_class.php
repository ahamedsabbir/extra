<?php
class vendor_file_class{
	public static function upload($file_name, $folder_link = null){
		if(!file_exists($folder_link)){
			mkdir($folder_link, 0777, true);
			return($folder_link."/".$file_name);
		}else{
			return($folder_link."/".$file_name);
		}
	}
	public static function get($file_link = null){
		if(file_exists($file_link)){
			return $file_link;
		}else{
			$file_array = explode(".", $file_link);
			$last_element = end($file_array);
			switch ($last_element){
				case "png":
					return("icon.png");
				break;
				case "jpg":
					return("icon.png");
				break;
				case "mp4":
					return("icon.png");
				break;
				case "3gp":
					return("icon.png");
				break;
				case "mp3":
					return("icon.png");
				break;
				case "pdf":
					return("icon.png");
				break;
				case "zip":
					return("icon.png");
				break;
				case "rar":
					return("icon.png");
				break;
				case "docs":
					return("icon.png");
				break;
				case "html":
					return("icon.png");
				break;
				default:
					return("icon.png");
			}
		}	
	}
	public static function get_file($file_link = null){
		if(file_exists($file_link)){
			return $file_link;
		}else{
			return("icon.png");
		}	
	}	
	public static function convert_memory($data){
    	if ($data >= 1073741824){
            $data = number_format($data / 1073741824, 2) . ' GB';
        }elseif ($data >= 1048576){
            $data = number_format($data / 1048576, 2) . ' MB';
        }elseif ($data >= 1024){
            $data = number_format($data / 1024, 2) . ' KB';
        }elseif ($data > 1){
            $data = $data . ' B';
        }elseif ($data == 1){
            $data = $data . ' B';
        }else{
            $data = '0 size';
        }
        return $data;
    }
}
?>