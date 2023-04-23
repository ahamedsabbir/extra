<!doctype html>
<html class="no-js" lang="">
<?php
if(isset($framework_user_datatable)){
	foreach($framework_user_datatable as $framework_user_datatable_key => $framework_user_datatable_value){
?>
<head>
	<link rel="stylesheet" href="extra/resources/framework/bootstrap-5.0.2/css/bootstrap.min.css">	
</head>
<body>
<header>
</header>	
 <main class="py-5">
   <?php include(backend_class::inc("models", $plugins_type, $plugins)); ?>
	<div class="container emp-profile">
                <div class="row">
                    <div class="col-md-3">
                        <div class="profile-img">
                            <img src="<?php echo $framework_user_datatable_value['photo']; ?>" alt="" style="width:200px; height:200px;"/>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="profile-head">
                                    <h5><?php echo cookie_class::get('name'); ?></h5>
                                    <h6>Web Developer and Designer</h6>
									<span class="proile-rating"><b>Survey: </b><?php echo $framework_user_datatable_value['survey']; ?></span>
                                    <p class="proile-rating">Warning : Be care full for any change if you not kno</p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
								<li class="nav-item">
                                    <a class="btn" href="#" data-bs-toggle="modal" data-bs-target="#surveyupdate">Survey</a>
                                </li>
								<li class="nav-item">
                                    <a class="btn" href="<?php echo FRONTEND_HOME;?>">Home</a>
                                </li>
                              	<li class="nav-item">
                                    <a class="btn" href="<?php echo BASE_URL.'theme_redweb_insert_class/index_page_function/insert';?>">Upload</a>
                                </li>
                              	<li class="nav-item">
                                    <a class="btn" href="<?php echo BASE_URL.'theme_redweb_loop_class/author_loop_page/loop'; ?>">All Post</a>
                                </li>
                              	<li class="nav-item">
                                    <a class="btn" href="<?php echo BASE_URL.'user_crowd_class/signout_function/sign-out/'; ?>">Sign Out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="<?php echo BASE_URL.'user_profile_class/index_page_function/profile_edit/'; ?>"><button class="profile-edit-btn" >Edit Profile</button></a>
                    </div>
                </div>
				
                <div class="row">
                    <div class="col-md-3">
						
					</div>
                    <div class="col-md-9">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
								<div class="row">
									<div class="col-md-6">
										<label>User ID</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_user_datatable_value['id']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Name</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_user_datatable_value['name']; ?></p>
									</div>
								</div>
                              	<div class="row">
									<div class="col-md-6">
										<label>Unique ID</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_user_datatable_value['unique_id']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Email</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_user_datatable_value['email']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Phone</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_user_datatable_value['mobile']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Level</label>
									</div>
									<div class="col-md-6">
<?php 
if(isset($framework_level_datatable)){
	foreach($framework_level_datatable as $framework_level_datatable_key => $framework_level_datatable_value){
		if($framework_level_datatable_value["sn"] == $framework_user_datatable_value['level']){
?>
										<p><?php echo $framework_level_datatable_value["level"]; ?></p>
<?php
		}
	}
}
?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>          
	</div>  
</main> 	
		<?php include backend_class::inc('footer'); ?>
	</body>
	<script src="extra/resources/framework/jquery-ui-1.13.1/external/jquery/jquery.js" ></script>
	<script src="extra/resources/framework/jquery-ui-1.13.1/jquery-ui.js"></script>
	<script src="extra/resources/framework/bootstrap-5.0.2/js/bootstrap.min.js"></script>
<?php
	}
}
?>
</html>