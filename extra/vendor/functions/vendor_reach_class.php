<?php
class vendor_reach_class{
	public static function reach_function($data){
		if ($data >= 1073741824){
            $data = number_format($data / 1073741824, 2) . 'G';
        }elseif ($data >= 1048576){
            $data = number_format($data / 1048576, 2) . 'M';
        }elseif ($data >= 1024){
            $data = number_format($data / 1024, 2) . 'K';
        }elseif ($data > 1){
            $data = $data . 'B';
        }elseif ($data == 1){
            $data = $data . 'B';
        }else{
            $data = '0 size';
        }
        return $data;
	}	public static function watch_count_function($watch, $id){
		if($watch){
			$count = 0;
			foreach($watch as $watch_key => $watch_value){
				if($watch_value['post_id'] == $id){
					$count++;
				}
			}
			return $count;
		}
	}	public static function like_count_function($liking, $id){
		if($liking){
			$count = 0;
			foreach($liking as $liking_key => $liking_value){
				if($liking_value['post_id'] == $id AND $liking_value['status'] == 1){
					$count++;
				}
			}
			return $count;
		}
	}
	public static function unlike_count_function($liking, $id){
		if($liking){
			$count = 0;
			foreach($liking as $liking_key => $liking_value){
				if($liking_value['post_id'] == $id AND $liking_value['status'] == 0){
					$count++;
				}
			}
			return $count;
		}
	}
}