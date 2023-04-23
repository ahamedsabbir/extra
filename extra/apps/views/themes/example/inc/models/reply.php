<?php
function replyInsert($post_id, $comment_id){
	global $theme_name;
	$link = BASE_URL."theme_".$theme_name."_reply_class/insert_reply_function/comment/&post_id=$post_id&comment_id=$comment_id";
	echo $models = <<<TEXT
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#insertreply$comment_id" data-whatever="@mdo">Reply</button>
<div class="modal fade" id="insertreply$comment_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Submit Your Reply.</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="reply"></textarea>
		  </div>
		  <button type="submit" class="btn btn-primary" name="submit" value="insert">Submit</button>
		</form>
	  </div>
	</div>
  </div>
</div> 
TEXT;
}
function replyUpdate($post_id, $comment_id, $reply){
	global $theme_name;
	$reply_id = $reply["id"];
	$reply_reply = $reply["reply"];
	$link = BASE_URL.'theme_redweb_reply_class/edit_reply_function/reply/&post_id='.$post_id.'&comment_id='.$comment_id.'&reply_id='.$reply_id;
	echo $models = <<<TEXT
<div class="modal fade" id="editreply$reply_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">edit Your Reply.</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="reply">$reply_reply</textarea>
		  </div>
		  <button type="submit" class="btn btn-primary" name="submit" value="update">Edit</button>
		</form>
	  </div>
	</div>
  </div>
</div> 
TEXT;
}
?>