<!doctype html>
<html class="no-js" lang="en">
<?php
if($product_datatable){
	foreach($product_datatable as $product_datatable_key => $product_datatable_value){
?>
	<head>
		<meta charset="utf-8">
		<title><?php echo siteinfo_class::$title; ?></title>
		<meta name="description" content="<?php echo strip_tags(siteinfo_class::$description); ?>">
		<meta name="author" content="<?php echo siteinfo_class::$author; ?>">
		<meta name="keywords" content="<?php echo siteinfo_class::$keywords; ?>">
		<meta name="generator" content="Hugo 0.84.0">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="manifest" href="site.webmanifest">
		<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="extra/resources/framework/fontawesom-6.1.1/css/all.min.css">
<style>
.card_admin{
	width:60px;
}
</style>
	</head>
	<body>
	<?php include backend_class::inc("models", $plugins); ?>
		<main>
		  <div class="album py-5 bg-light">
			<div class="container">
				<div class="row g-3">			  
				<div class="col">
				  <div class="card shadow-sm">	
					<div class="card-header">
						<small class="text-muted"><?php echo vendor_date_class::format_date($product_datatable_value['date']); ?></small>
					</div>
					<div class="text-center" style="margin-top:20px; margin-left:10px; margin-right:10px;">
					  <img src="<?php echo $product_datatable_value['thumbnail']; ?>" class="rounded img-thumbnail" alt="..." width="100%">
					</div>
					<div class="card-body">
					  <h1 class="card-text"><?php echo $product_datatable_value["title"]; ?></h1>
					  <span><?php echo $product_datatable_value["description"]; ?></span>
					  <div class="d-flex justify-content-between align-items-center">
						<div class="btn-group">
						  <a href="<?php echo BASE_URL.'publish_liking_class/like_submit_function/'.$product_datatable_value['id']; ?>">
							  <button class="btn">
								<i class="far fa-thumbs-up"></i> 
								<?php echo vendor_reach_class::like_count_function($framework_reach_datatable, $product_datatable_value["id"]); ?>
							  </button>
						  </a>
							 <a href="<?php echo BASE_URL.'publish_liking_class/unlike_submit_function/'.$product_datatable_value['id']; ?>">
							  <button class="btn">
							  <i class="far fa-thumbs-down"></i> 
							  <?php echo vendor_reach_class::unlike_count_function($framework_reach_datatable, $product_datatable_value["id"]); ?>
							  </button>
							 </a>
							 <button class="btn">
							<i class="far fa-eye"></i>
							<?php echo vendor_reach_class::watch_count_function($framework_watch_datatable, $product_datatable_value["id"]); ?>
							</button>
						</div>
<?php 
foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_value){
	if($framework_admin_datatable_value["id"] == $product_datatable_value["admin_id"]){
?>
							<img class="img-thumbnail card_admin" src="<?php echo $framework_admin_datatable_value["photo"] ; ?>" alt="<?php echo $framework_admin_datatable_value["name"] ; ?>"/>
<?php
	}
}
?>
					  </div>
					</div>
				  </div>
					<div class="card-footer">
<?php 
if(cookie_class::get('user_id') == $product_datatable_value["admin_id"]){
?>
					  <a href="<?php echo BASE_URL.'publish_post_class/update_page_function/'.$product_datatable_value['id']; ?>" class="btn btn-primary">
						<i class="fas fa-edit"></i>						
					  </a>
					  <a href="<?php echo BASE_URL.'publish_post_class/delete_post_function/'.$product_datatable_value['id']; ?>" class="btn btn-danger">
						<i class="fas fa-trash-alt"></i>
					  </a>
<?php 
} 
?>
					  <a href="<?php echo BASE_URL.'publish_favorite_class/favorite_function/'.$product_datatable_value['id']; ?>" class="btn btn-primary">
						<i class="far fa-plus"></i>
					  </a>
<?php 
if(cookie_class::get("admin_login") != null){
?>
			 <a class="btn btn-primary" href="#" data-bs-toggle="modal" data-bs-target="#insertcomment">Comment</a>			 
<?php 
}
?>
					</div>
				</div>
				</div>
			</div>
			</div>
			 <section class="py-2">
				<div class="container">
<?php
if($framework_comment_datatable AND $framework_user_datatable){
	foreach($framework_comment_datatable as $framework_comment_datatable_key => $framework_comment_datatable_value){
			foreach($framework_user_datatable as $framework_user_datatable_key => $framework_user_datatable_value){
				if($framework_user_datatable_value['id'] == $framework_comment_datatable_value['user_id']){
?>
		<section>
			<div class="card p-3 py-1 bg-primary">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user d-flex flex-row align-items-center"> 
						<span>
							<img src="<?php echo $framework_user_datatable_value['photo']; ?>" width="20" class="user-img">
							<small style="color:white; font-weight:500;" class="font-weight-bold"> <?php echo strtoupper($framework_user_datatable_value['name']); ?> </small>
							<small class="font-weight-bold"><?php echo $framework_comment_datatable_value['comment']; ?></small>
							<small class="font-weight-bold"><a style="color:black;" href="#" data-bs-toggle="modal" data-bs-target="#insertreply"><i class="fas fa-reply"></i></a></small>
						</span>
					</div>
                </div>
					<div class="action d-flex justify-content-between mt-2 align-items-center">
						<div>
<?php
if($framework_user_datatable_value["id"] == cookie_class::get("user_id")){
	
?>
					<small><a style="color:black;" href="<?php echo BASE_URL.'publish_comment_class/delete_comment_function/'.$framework_comment_datatable_value['id']."/&product_datatable_id=".$product_datatable_value['id']; ?>"><i class="fas fa-edit"></i></a></small>
					<small><a style="color:black;" href="<?php echo BASE_URL.'publish_comment_class/delete_comment_function/'.$framework_comment_datatable_value['id']."/&product_datatable_id=".$product_datatable_value['id']; ?>"><i class="fas fa-trash-alt"></i></a></small>
<?php
}
?>
					</div>
						<div class="icons align-items-center"> 
							<small><?php echo vendor_date_class::format_date($framework_comment_datatable_value['date']); ?></small>
<?php
	for($i=0;$i<$framework_user_datatable_value['level'];$i++){
?>
	<i class="fa fa-star text-warning"></i>
<?php		
	}
?>
					
					
						</div>
					</div>
				</div>
			</section>
			 <section class="py-2">
				<div>
<?php
if($framework_reply_datatable){
	foreach($framework_reply_datatable as $framework_reply_datatable_key => $framework_reply_datatable_value){
			foreach($framework_user_datatable as $framework_user_datatable_reply_key => $framework_user_datatable_reply_value){	
				if($framework_reply_datatable_value["user_id"] == $framework_user_datatable_reply_value['id']){
?>
	<div class="row d-flex justify-content-center" style="margin-bottom:10px;">
		<div class="col-md-1 col-xs-1"></div>
		<div class="col-md-11 col-xs-11">
			<div class="card p-3 py-2 bg-info">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user d-flex flex-row align-items-center"> 
						<span>
							<img src="<?php echo $framework_user_datatable_reply_value['photo']; ?>" width="20" class="user-img">
							<small style="color:white; font-weight:500;" class="font-weight-bold"> <?php echo strtoupper($framework_user_datatable_reply_value['name']); ?> </small>
							<small class="font-weight-bold"><?php echo $framework_reply_datatable_value['reply']; ?></small>
							<small class="font-weight-bold"><a style="color:black;" href="#" data-bs-toggle="modal" data-bs-target="#insertreply"><i class="fas fa-reply"></i></a></small>
						</span>
					</div>
                </div>
                <div class="action d-flex justify-content-between mt-2 align-items-center">
                    <div>
<?php
if($framework_user_datatable_reply_value["id"] == cookie_class::get("user_id")){
	
?>
					<small><a style="color:black;" href="<?php echo BASE_URL.'publish_reply_class/delete_reply_function/'.$framework_reply_datatable_value['id'].'/&post_id='.$product_datatable_value['id'].'&comment_id='.$framework_comment_datatable_value['id']; ?>"><i class="fas fa-edit"></i></a></small> 
					<small><a style="color:black;" href="<?php echo BASE_URL.'publish_reply_class/delete_reply_function/'.$framework_reply_datatable_value['id'].'/&post_id='.$product_datatable_value['id'].'&comment_id='.$framework_comment_datatable_value['id']; ?>"><i class="fas fa-trash-alt"></i></a></small> 
<?php
}
?>
					</div>
                    <div class="icons align-items-center"> 
					<small><?php echo vendor_date_class::format_date($framework_reply_datatable_value['date']); ?></small>
<?php
for($i=0;$i<$framework_user_datatable_value['level'];$i++){
?>
	<i class="fa fa-star text-warning"></i>
<?php		
}
?>				
					</div>
                </div>
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
			 </section>
<?php
			}
		}
	}
}
?>
				</div>
			 </section>
			 <?php include backend_class::inc("pagenation"); ?>
		</main>
				<section class="py-2">
			<div class="container">
				<div class="row">
				
<?php
if($relevant_post){
	foreach($relevant_post as $relevant_post_key => $relevant_post_value){	
		if($relevant_post_value["id"] != $product_datatable_value["id"]){
?>
			<div class="card col-md-3">
				<div class="card-header">
					<a href="<?php echo BASE_URL.'publish_single_class/index_page_function/'.$relevant_post_value['id']; ?>">
						<img src="<?php echo $relevant_post_value['thumbnail']; ?>" class="card-img-top" alt="" style="height:220px;">
					</a>
				 </div>
			    <div class="card-body">
					  <p class="card-text"><?php echo vendor_string_class::text_shorten($relevant_post_value["title"], 100); ?></p>
					  <div class="d-flex justify-content-between align-items-center">
						<div class="btn-group">
						  <a href="<?php echo BASE_URL.'publish_liking_class/like_submit_function/'.$relevant_post_value['id']; ?>">
							  <button class="btn">
								<i class="far fa-thumbs-up"></i> 
								<?php echo vendor_reach_class::like_count_function($framework_reach_datatable, $relevant_post_value["id"]); ?>
							  </button>
						  </a>
							 <a href="<?php echo BASE_URL.'publish_liking_class/unlike_submit_function/'.$relevant_post_value['id']; ?>">
							  <button class="btn">
							  <i class="far fa-thumbs-down"></i> 
							  
							  <?php echo vendor_reach_class::unlike_count_function($framework_reach_datatable, $relevant_post_value["id"]); ?>
							  </button>
							 </a>
							 <button class="btn">
							<i class="far fa-eye"></i>
							<?php echo vendor_reach_class::watch_count_function($framework_watch_datatable, $relevant_post_value["id"]); ?>
							</button>
							<a href="<?php echo BASE_URL.'publish_index_class/favorites_function/'.$relevant_post_value['id']; ?>">
							  <button class="btn"><i class="far fa-plus"></i></button>
							</a>
						</div>
					  </div>
			    </div>
			</div>
<?php
		}
	}
}
?>	
				</div>
			</div>
		</section>
		<?php include backend_class::inc("footer"); ?>
		<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
<?php
	}
}
?>
	</body>
</html>
