<?php
function commentInsert($post_id){
	global $theme_name;
	$link = BASE_URL."theme_".$theme_name."_comment_class/insert_comment_function/comment/&post_id=$post_id";
	echo $models = <<<TEXT
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#insertcomment$post_id" data-whatever="@mdo">Comment</button>
<div class="modal fade" id="insertcomment$post_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Submit Your Comment.</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="comment"></textarea>
		  </div>
		  <button type="submit" class="btn btn-primary" name="submit" value="insert">Submit</button>
		</form>
	  </div>
	</div>
  </div>
</div>
TEXT;
}
function commentUpdate($post_id, $comment){
	global $theme_name;
	$comment_id = $comment["id"];
	$comment_comment = $comment["comment"];
	$link = BASE_URL.'theme_redweb_comment_class/edit_comment_function/comment/&post_id='.$post_id.'&comment_id='.$comment_id;
	echo $models = <<<TEXT
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit$comment_id" data-whatever="@mdo">Edit</button>
<div class="modal fade" id="edit$comment_id" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
	  <div class="modal-header">
		<h5 class="modal-title" id="staticBackdropLabel">Edit Your Comment.</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	  </div>
	  <div class="modal-body">
		<form action="$link" method="POST">
		  <div class="mb-3">
			<textarea class="form-control" id="comment" name="comment">$comment_comment</textarea>
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