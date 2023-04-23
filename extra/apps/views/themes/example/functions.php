<?php
function loopDesign($post_datatable){
	global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	if(isset($post_datatable) AND $post_datatable != null){
		foreach($post_datatable as $post_datatable_key => $post_datatable_value){
			include(theme_class::helper("post_helper_code"));
			echo <<<HTML
<div class="col-md-4 py-2">
	<div class="card border-0">
		<div class="text-center">
			<img src="$thumbnail" class="card-img-top" alt="$title" style="width:200px; height:200px;">
		</div>
		<div class="card-body">
			<h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
			<p class="card-text">$description_short</p>
		</div>
		<div class="card-body">
			<a href="$single_link" class="card-link">Open</a>
			<a href="$update_link" class="card-link">Update</a>
			<a href="$delete_link" class="card-link">delete</a>
		</div>
	</div>
</div>
HTML;
		}
	}
}
function singleDesign($post_datatable){
    global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	if(isset($post_datatable) AND $post_datatable != null){
		foreach($post_datatable as $post_datatable_key => $post_datatable_value){
			include(theme_class::helper("post_helper_code"));
			echo <<<HTML
<div class="col-md-12 py-2">
	<div class="card" style="">
		<div class="text-center">
			<img src="$thumbnail" class="card-img-top" alt="$title" style="width:500px; height:400px;">
		</div>
	  <div class="card-body">
		<h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
		<p class="card-text">$description</p>
	  </div>
	  <ul class="list-group list-group-flush">
		<li class="list-group-item">Keywords: $keywords_string</li>
		<li class="list-group-item" onclick="window.location='$admin_link'" style="cursor: pointer;" >Author Name: $admin_name</li>
		<li class="list-group-item" onclick="window.location='$user_link'" style="cursor: pointer;" >Author Name: $user_name</li>
		<li class="list-group-item" onclick="window.location='$category_link'" style="cursor: pointer;" >Category Name: $category_name</li>
		<li class="list-group-item">Date : $created</li>
		<li class="list-group-item">
			<a href="" class="card-link">comment $comment_count</a>
			<a href="" class="card-link">reply $reply_count</a>
		</li>
		<li class="list-group-item">
			<a href="$like_link" class="card-link">$like_icon like $liked_count</a>
			<a href="$unlike_link" class="card-link">$unlike_icon unlike $unliked_count</a>
			<a href="$most_watch_link" class="card-link"><i class="fa-solid fa-eye"></i> watch $watched_count</a>
			<a href="$watch_link " class="card-link"><i class="fa-solid fa-eye"></i> watch $watched_count</a>
		</li>
		<li class="list-group-item">
			<a href="$cart_link" class="card-link">Cart</a>
			<a href="$cart_action_link" class="card-link">$cart_icon</a>
		</li>
		<li class="list-group-item">
			<a href="$favorite_link" class="card-link">Favorite</a>
			<a href="$favorite_action_link" class="card-link">$favorite_icon</a>
		</li>
	  </ul>
	  <div class="card-body">
		<a href="$single_link" class="card-link">Open</a>
		<a href="$delete_link" class="card-link">delete</a>
		<a href="$update_link" class="card-link">Update</a>
	  </div>
	</div>
</div>
HTML;
		}
	}
}
function asideDesign($post_datatable){
    global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	if(isset($post_datatable) AND $post_datatable != null){
		foreach($post_datatable as $post_datatable_key => $post_datatable_value){
			include(theme_class::helper("post_helper_code"));
			echo <<<HTML
<div class="card" style="width:10rem;">
  <img src="$thumbnail" class="card-img-top" alt="$title">
  <div class="card-body">
    <h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
    <p class="card-text">$description</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Keywords: $keywords_string</li>
    <li class="list-group-item" onclick="window.location='$admin_link'" style="cursor: pointer;" >Author Name: $admin_name</li>
    <li class="list-group-item" onclick="window.location='$user_link'" style="cursor: pointer;" >Author Name: $user_name</li>
    <li class="list-group-item" onclick="window.location='$category_link'" style="cursor: pointer;" >Category Name: $category_name</li>
    <li class="list-group-item">Date : $date</li>
    <li class="list-group-item">
		<a href="$liked_count" class="card-link">like $liked_count</a>
		<a href="$unliked_count" class="card-link">unlike $unliked_count</a>
		<a href="$most_watch_link" class="card-link">watch $watched_count</a>
	</li>
  </ul>
  <div class="card-body">
    <a href="$single_link" class="card-link">Open</a>
    <a href="$delete_link" class="card-link">delete</a>
    <a href="$update_link" class="card-link">Update</a>
  </div>
</div>
HTML;
		}
	}
}
function favoriteDesign($post_datatable){
	global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	foreach($framework_favorite_datatable as $framework_favorite_datatable_key => $framework_favorite_datatable_value){
		if(isset($post_datatable) AND $post_datatable != null){
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($framework_favorite_datatable_value["cookie_id"] == cookie_class::id() AND $framework_favorite_datatable_value["post_id"] == $post_datatable_value["id"]){
					include(theme_class::helper("post_helper_code"));
					echo <<<HTML
<div class="col-md-4 py-2">
	<div class="card border-0">
		<div class="text-center">
			<img src="$thumbnail" class="card-img-top" alt="$title" style="width:200px; height:200px;">
		</div>
		<div class="card-body">
			<h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
			<p class="card-text">$description_short</p>
		</div>
		<div class="card-body">
			<a href="$single_link" class="card-link">Open</a>
			<a href="$update_link" class="card-link">Update</a>
			<a href="$delete_link" class="card-link">delete</a>
		</div>
	</div>
</div>
HTML;
				}
			}
		}
	}
}
function watchDesign($post_datatable){
	global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	foreach($framework_watch_datatable as $framework_watch_datatable_key => $framework_watch_datatable_value){
		if(isset($post_datatable) AND $post_datatable != null){
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($framework_watch_datatable_value["visitor_id"] == cookie_class::get("visitor_id") AND $framework_watch_datatable_value["post_id"] == $post_datatable_value["id"]){
					include(theme_class::helper("post_helper_code"));
					echo <<<HTML
<div class="col-md-4 py-2">
	<div class="card border-0">
		<div class="text-center">
			<img src="$thumbnail" class="card-img-top" alt="$title" style="width:200px; height:200px;">
		</div>
		<div class="card-body">
			<h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
			<p class="card-text">$description_short</p>
		</div>
		<div class="card-body">
			<a href="$single_link" class="card-link">Open</a>
			<a href="$update_link" class="card-link">Update</a>
			<a href="$delete_link" class="card-link">delete</a>
		</div>
	</div>
</div>
HTML;
				}
			}
		}
	}
}
function cartDesign($post_datatable){
	global $theme_name, $theme_class, $framework_category_datatable, $framework_admin_datatable, $framework_admin_datatable, $framework_reach_datatable, $framework_comment_datatable, $framework_reply_datatable, $framework_favorite_datatable, $framework_cart_datatable, $framework_watch_datatable;
	foreach($framework_cart_datatable as $framework_cart_datatable_key => $framework_cart_datatable_value){
		if(isset($post_datatable) AND $post_datatable != null){
			foreach($post_datatable as $post_datatable_key => $post_datatable_value){
				if($framework_cart_datatable_value["cookie_id"] == cookie_class::id() AND $framework_cart_datatable_value["post_id"] == $post_datatable_value["id"]){
					include(theme_class::helper("post_helper_code"));
					echo <<<HTML
<div class="col-md-4 py-2">
	<div class="card border-0">
		<div class="text-center">
			<img src="$thumbnail" class="card-img-top" alt="$title" style="width:200px; height:200px;">
		</div>
		<div class="card-body">
			<h5 class="card-title" onclick="window.location='$single_link'" style="cursor: pointer;">$title</h5>
			<p class="card-text">$description_short</p>
		</div>
		<div class="card-body">
			<a href="$single_link" class="card-link">Open</a>
			<a href="$update_link" class="card-link">Update</a>
			<a href="$delete_link" class="card-link">delete</a>
		</div>
	</div>
</div>
HTML;
				}
			}
		}
	}
}
function categoryLoop($datatable){
	if(isset($datatable) AND $datatable != null){
      	echo "<ul>";
		foreach($datatable as $datatable_key => $datatable_value){
          	$name = $datatable_value["name"];
			echo "<li>$name</li>";
		}
      	echo "</ul>";
	}
}
?>