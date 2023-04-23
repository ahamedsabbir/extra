<?php
function commentDesign(){
	global $theme_name, $theme_class, $post_id, $framework_user_datatable, $framework_comment_datatable, $framework_reply_datatable;
?>
<div class="py-2">
	<div class="container">
		<?php commentInsert($post_id); ?>
<?php
	if($framework_comment_datatable != null AND $framework_user_datatable != null){
		foreach($framework_comment_datatable as $framework_comment_key => $framework_comment_value){
			$comment_id = $GLOBALS['comment_id'] = $framework_comment_value["id"];
			foreach($framework_user_datatable as $framework_user_key => $framework_user_value){
				if($framework_comment_value["user_id"] == $framework_user_value['id']){
?>
<div class="py-1">
<div class="card p-3 py-1 bg-primary"> 
	<div class="d-flex justify-content-between align-items-center">
		<div class="user d-flex flex-row align-items-center"> 
			<span>
				<img src="<?php echo $framework_user_value['photo']; ?>" width="30" class="user-img rounded-circle d-none">
				<small style="color:white; font-weight:500;" class="font-weight-bold"> <?php echo strtoupper($framework_user_value['name']); ?> </small><br />
				<span style="font-size:20px;"><small class="font-weight-bold"><?php echo $framework_comment_value['comment']; ?></small></span>
			</span>
		</div>
	</div>
	<div class="action d-flex justify-content-between mt-2 align-items-center">
		<div> 
		<a class="btn btn-primary" href="<?php echo BASE_URL.$theme_class.'_comment_class/index_page_function/comment/&post_id='.$post_id.'&comment_id='.$framework_comment_value['id']; ?>">Total Reply  <?php echo vendor_reply_class::reply_count($framework_reply_datatable, $framework_comment_value['id']); ?></a>
		
<?php
if($framework_user_value["id"] == cookie_class::get("user_id")){
	
?>
					<?php replyInsert($post_id, $framework_comment_value['id']); ?>
					<?php commentUpdate($post_id, $framework_comment_value); ?>
					<a class="btn btn-primary" href="<?php echo BASE_URL.'theme_redweb_comment_class/delete_comment_function/single/&post_id='.$redweb_datatable_value['id'].'&comment_id='.$framework_comment_datatable_value['id']; ?>">Delete</a>
<?php
}
?>
					</div>
                    <div class="icons align-items-center"> 
						<small><?php echo vendor_date_class::format_date($framework_comment_value['date']); ?></small>
<?php
	for($i=0;$i<$framework_user_value['level'];$i++){
?>
	<i class="fa fa-star text-warning"></i>
<?php		
	}
?>
			</div>
		</div>
	</div>	
</div>
<?php
				}
			}
		}
	}else{
		echo "comment none";
	}
?>
	</div>
</div>
<?php
}
commentDesign();
?>






