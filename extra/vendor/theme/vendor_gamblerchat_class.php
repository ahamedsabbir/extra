<?php
class vendor_gamblerchat_class{
	public static function admin_reply_function($datatable, $visitor_id){
		if(isset($datatable)){
			foreach($datatable as $datatable_key => $datatable_value){
				if( $visitor_id == $datatable_value["visitor_id"]){
					$chat = $datatable_value["chat"];
					if(is_file($chat)){
						$chat = "<a href='$chat'>File Send</a>";
					}
					$pc_user = $datatable_value["pc_user"];
					$date = vendor_date_class::new_date($datatable_value["date"]);
					if($pc_user == "admin"){
					echo $data = <<<TEXT
<li>
			<div class="direct-chat-msg right text-end">
				<div class="direct-chat-info clearfix">
						<span class="direct-chat-name pull-right">$pc_user</span> <span class="direct-chat-timestamp pull-right">$date</span> 
					</div> 
					<img class="direct-chat-img" src="https://img.icons8.com/color/36/000000/administrator-female.png" alt="message user image">
				<div class="direct-chat-text">$chat</div>
			</div>
</li>						
TEXT;
			}else{	
echo $data = <<<TEXT
<li>
			<div class="direct-chat-msg left">
				<div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">$pc_user</span> <span class="direct-chat-timestamp pull-left">23 Jan 5:37 pm</span> </div> <img class="direct-chat-img" src="https://img.icons8.com/office/36/000000/administrator-male.png" alt="message user image">
				<div class="direct-chat-text">$chat</div>
			</div>
</li>
TEXT;
				}
			}
		}
	}
}
	public static function user_reply_function($datatable){
		if(isset($datatable)){
			foreach($datatable as $datatable_key => $datatable_value){
				$chat = $datatable_value["chat"];
				if(is_file($chat)){
					$chat = "<a href='$chat'>File Send</a>";
				}
				$pc_user = $datatable_value["pc_user"];
				$date = vendor_date_class::new_date($datatable_value["date"]);
				if($datatable_value["pc_user"] == "admin"){
echo $data = <<<TEXT
<li>
			<div class="direct-chat-msg left">
				<div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-left">$pc_user</span> <span class="direct-chat-timestamp pull-left">23 Jan 5:37 pm</span> </div> <img class="direct-chat-img" src="https://img.icons8.com/office/36/000000/administrator-female.png" alt="message user image">
				<div class="direct-chat-text">$chat</div>
			</div>
</li>
TEXT;
				}else{
echo $data = <<<TEXT
<li>
			<div class="direct-chat-msg right text-end">
				<div class="direct-chat-info clearfix"> <span class="direct-chat-name pull-right">$pc_user</span> <span class="direct-chat-timestamp pull-right">$date</span> </div> <img class="direct-chat-img" src="https://img.icons8.com/color/36/000000/administrator-male.png" alt="message user image">
				<div class="direct-chat-text">$chat</div>
			</div>
</li>
TEXT;
				}
			}
		}	
	}
}
?>