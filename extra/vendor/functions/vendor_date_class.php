<?php
class vendor_date_class{
	public static function format_date($date){
        $date1 = strtr($date, '/', '-');
		return date('d/m/y g:ia', strtotime($date1));
	}
	public static function only_date($date){
        $date = strtr($date, '/', '-');
		return date('j-m-y', $date);
	}
	public static function chat_date($date){
        $date1 = strtr($date, '/', '-');
		return date(' g:i a', strtotime($date1));
	}
	public static function new_date($date){
        $date1 = strtr($date, '/', '-');
		return date('j F g:i a', strtotime($date1));
	}
	public static function natural($date){
        $date1 = strtr($date, '/', '-');
		return date('d/m/Y g:i a', strtotime($date1));
	}
	public static function banglaDate($enDate){
		$search_array = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", ":", ",");
		$replace_array = array("১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০", "জানুয়ারী", "ফেব্রুয়ারী", "মার্চ", "এপ্রিল", "মে", "জুন", "জুলাই", "আগষ্ট", "সেপ্টেম্বার", "অক্টোবার", "নভেম্বার", "ডিসেম্বার", "শনিবার", "রবিবার", "সোমবার", "মঙ্গলবার", "বুধবার", "বৃহস্পতিবার", "শুক্রবার", ":", ",");
		$result = str_replace($search_array, $replace_array, $enDate);
		return $result;
	}
}

