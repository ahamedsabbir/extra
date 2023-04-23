<?PHP
function replyDesign(){
	global $theme_name, $theme_class, $comment_id, $post_id, $framework_user_datatable, $framework_comment_datatable, $framework_reply_datatable;
?>
<div class="py-2">
	<div class="container">
		<?php replyInsert($post_id, $comment_id); ?>
<?php
if($framework_reply_datatable){
	foreach($framework_reply_datatable as $framework_reply_key => $framework_reply_value){
			$reply_id = $framework_reply_value["id"];
			$reply = $framework_reply_value['reply'];
			$date = $framework_reply_value['date'];
			$reply_user_id = $framework_reply_value['user_id'];
			$post_id = $framework_reply_value['post_id'];
			$comment_id = $framework_reply_value['comment_id'];
			foreach($framework_user_datatable as $framework_user_key => $framework_user_value){	
				$user_name = $framework_user_value['name'];
				$user_photo = $framework_user_value['photo'];
				$user_id = $framework_user_value['id'];
				$user_level = $framework_user_value['level'];
				if($reply_user_id == $user_id){
?>
		<div class="py-1">
			<div class="card p-3 py-2 bg-info">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user d-flex flex-row align-items-center"> 
						<span>
							<img src="<?php echo $user_photo; ?>" width="30" class="user-img rounded-circle d-none">
							<small style="color:white; font-weight:500;" class="font-weight-bold"> <?php echo strtoupper($user_name); ?> </small><br />
							<span style="font-size:20px;"><small class="font-weight-bold"><?php echo $reply; ?></small></span>
						</span>
					</div>
                </div>
                <div class="action d-flex justify-content-between mt-2 align-items-center">
                    <div>
<?php
if($framework_user_value["id"] == cookie_class::get("user_id")){
	
?>
					<?php replyInsert($reply_id, $comment_id); ?>
					<a class="btn btn-info" href="#" data-bs-toggle="modal" data-bs-target="#editreply<?php echo $reply_id; ?>">Edit</a>
					<?php replyUpdate($reply_id, $comment_id, $framework_reply_value); ?>
					<a class="btn btn-info" href="<?php echo BASE_URL.'post_reply_class/delete_reply_function/single/&post_id=$post_id&comment_id=$comment_id&reply_id=$reply_id'; ?>">Delete</a>
<?php
}
?>
					</div>
                    <div class="icons align-items-center"> 
					<small><?php echo vendor_date_class::format_date($date); ?></small>
<?php
for($i=0;$i<$user_level;$i++){
?>
	<i class="fa fa-star text-warning"></i>
<?php		
}
?>				
					</div>
                </div>
            </div>
<?php
			}
		}
	}
}
?>
		</div>
	</div>
</div>
<?php
}
replyDesign();
?>
