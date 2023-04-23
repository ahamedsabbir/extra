<?php include(backend_class::sys("security")); ?>
<!doctype html>
<html class="no-js" lang="">
<?php
if(isset($framework_admin_datatable)){
	foreach($framework_admin_datatable as $framework_admin_datatable_key => $framework_admin_datatable_value){
?>
<head>
	<meta charset="utf-8">
	<title><?php echo siteinfo_class::$title; ?></title>
	<meta name="description" content="<?php echo siteinfo_class::$description; ?>">
	<meta name="keywords" content="<?php echo siteinfo_class::$keywords; ?>">
	<meta name="author" content="<?php echo siteinfo_class::$author; ?>"> 
	<meta name="copyright" content="">
	<link rel="apple-touch-icon" href="<?php echo vendor_file_class::get_file(siteinfo_class::$icon); ?>">
	<?php echo backend_class::style("side_nav"); ?>
  	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" rel="stylesheet">
	<!------ Include the above in your HEAD tag ---------->
<style>
body{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 50%;
    height: 50%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}  
</style>
</head>
<body>
	<?php include(backend_class::inc("right_side_notification")) ?>
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="<?php echo session_class::get("admin_photo"); ?>" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <?php echo session_class::get('admin_name'); ?>
                                    </h5>
                                    <h6>
                                        Web Developer and Designer
                                    </h6>
                                    <p class="proile-rating">RANKINGS : 
<?php 
if(isset($framework_level_datatable)){
	foreach($framework_level_datatable as $framework_level_datatable_key => $framework_level_datatable_value){
		if($framework_level_datatable_value["sn"] == $framework_admin_datatable_value['level']){
?>
										<span><?php echo $framework_level_datatable_value["level"]; ?>/10</span>
<?php
		}
	}
}
?>
                          
                          </p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Timeline</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo BASE_URL."admin_profile_class/index_page_function/profile_edit/"; ?>">Edit Profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo BACKEND_HOME;?>"><span style="color=red;">PRO</span> Deshboard</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                      	<a class="profile-edit-btn" href="#" onclick="openNotification()"><i class="fa-solid fa-bell"></i></a>
						<a class="profile-edit-btn" href="<?php echo BASE_URL."admin_crowd_class/signout_function/"; ?>">Log Out</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
					<div class="row">
						<div class="col-md-12 text-center">
							<h1><a href="<?php echo BASE_URL.$framework_admin_datatable_value['deshboard']; ?>">Personal Deshboard</a></h1>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
							<a class="btn btn-primary" href="<?php echo BASE_URL.$framework_admin_datatable_value['deshboard']; ?>">GO to Deshboard</a>
						</div>
					</div>
					<hr />
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
								<div class="row">
									<div class="col-md-6">
										<label>User Id</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_admin_datatable_value['id']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Name</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_admin_datatable_value['name']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Email</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_admin_datatable_value['email']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Phone</label>
									</div>
									<div class="col-md-6">
										<p><?php echo $framework_admin_datatable_value['mobile']; ?></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Profession</label>
									</div>
									<div class="col-md-6">
										<p>Web Developer and Designer</p>
									</div>
								</div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
  </body>
<?php
	}
}
?>
  	<?php echo backend_class::script("side_nav"); ?>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</html>