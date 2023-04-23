<style>
.dropdown-submenu {
  position: relative;
}

.dropdown-submenu a::after {
  transform: rotate(-90deg);
  position: absolute;
  right: 6px;
  top: .8em;
}

.dropdown-submenu .dropdown-menu {
  top: 0;
  left: 100%;
  margin-left: .1rem;
  margin-right: .1rem;
}
</style>
<!-- began xml nav zero -->
<?php
$xml = simplexml_load_file("extra/apps/views/themes/$theme_folder/assets/xml/nav.xml");
$nav_element_array = vendor_nav_class::make_nav_array($xml, "blog");
for($zero=1;$zero<=count($nav_element_array);$zero++){
	$zero_id = $nav_element_array[$zero]["id"];
	$zero_name = $nav_element_array[$zero]["name"];
	$zero_title = $nav_element_array[$zero]["title"];
	$zero_href = $nav_element_array[$zero]["href"];
	$zero_target = $nav_element_array[$zero]["target"];
	$zero_font_icon = $nav_element_array[$zero]["font_icon"];
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<a class="navbar-brand" href="#"><?php echo $zero_name; ?></a>
		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				 <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdownMenuButton2fhdy56" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Option</a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2fhdy56">
					  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_loop_class/index_page_function/loop/&theme_name=blog&post_datatable=blog_datatable'; ?>">All Post</a>
					  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_viewed_class/index_page_function/viewed/&theme_name=blog&post_datatable=blog_datatable'; ?>">Most Watched</a>
					  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_reach_class/index_page_function/reach/&theme_name=blog&post_datatable=blog_datatable'; ?>">Most Reached</a>
					  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_history_class/index_page_function/history/&theme_name=blog&post_datatable=blog_datatable'; ?>">History</a>
					  <a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_favorite_class/index_page_function/favorite/&theme_name=blog&post_datatable=blog_datatable'; ?>">Favorites
						<span class="badge bg-danger"><?php //echo $favorite_rows_count; ?></span>
					  </a>
					</div>
				 </li>
					
					
<!-- began xml nav one -->
<?php
		for($one=1;$one<=count($nav_element_array[$zero])-6;$one++){
				$one_id = $nav_element_array[$zero][$one]["id"];
				$one_name = $nav_element_array[$zero][$one]["name"];
				$one_title = $nav_element_array[$zero][$one]["title"];
				$one_href = $nav_element_array[$zero][$one]["href"];
				$one_target = $nav_element_array[$zero][$one]["target"];
				$one_font_icon = $nav_element_array[$zero][$one]["font_icon"];
				if($nav_element_array[$zero][$one] != null){
?>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $one_name; ?></a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<li>
						<div class="d-grid gap-2 col-6 mx-auto">
							<h6>Two</h6>
						</div>
					</li>
<?php
				for($two=1;$two<=count($nav_element_array[$zero][$one])-6;$two++){
						$two_id = $nav_element_array[$zero][$one][$two]["id"];
						$two_name = $nav_element_array[$zero][$one][$two]["name"];
						$two_title = $nav_element_array[$zero][$one][$two]["title"];
						$two_href = $nav_element_array[$zero][$one][$two]["href"];
						$two_target = $nav_element_array[$zero][$one][$two]["target"];
						$two_font_icon = $nav_element_array[$zero][$one][$two]["font_icon"];
						if($nav_element_array[$zero][$one][$two]!= null){
?>
						<li class="dropdown-submenu">
							<a class="dropdown-item dropdown-toggle" href="#"><?php echo $two_name; ?></a>
							<ul class="dropdown-menu">
							<li>
								<div class="d-grid gap-2 col-6 mx-auto">
									<h6>Three</h6>
								</div>
							</li>
<?php
						for($three=1;$three<=count($nav_element_array[$zero][$one][$two])-6;$three++){
								$three_id = $nav_element_array[$zero][$one][$two][$three]["id"];
								$three_name = $nav_element_array[$zero][$one][$two][$three]["name"];
								$three_title = $nav_element_array[$zero][$one][$two][$three]["title"];
								$three_href = $nav_element_array[$zero][$one][$two][$three]["href"];
								$three_target = $nav_element_array[$zero][$one][$two][$three]["target"];
								$three_font_icon = $nav_element_array[$zero][$one][$two][$three]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three]!= null){
?>
								<li class="dropdown-submenu">
									<a class="dropdown-item dropdown-toggle" href="#"><?php echo $three_name; ?></a>
									<ul class="dropdown-menu">
										<li>
											<div class="d-grid gap-2 col-6 mx-auto">
												<h6>Four</h6>
											</div>
										</li>
<?php		
							for($four=1;$four<=count($nav_element_array[$zero][$one][$two][$three])-6;$four++){
								$four_id = $nav_element_array[$zero][$one][$two][$three][$four]["id"];
								$four_name = $nav_element_array[$zero][$one][$two][$three][$four]["name"];
								$four_title = $nav_element_array[$zero][$one][$two][$three][$four]["title"];
								$four_href = $nav_element_array[$zero][$one][$two][$three][$four]["href"];
								$four_target = $nav_element_array[$zero][$one][$two][$three][$four]["target"];
								$four_font_icon = $nav_element_array[$zero][$one][$two][$three][$four]["font_icon"];
								if($nav_element_array[$zero][$one][$two][$three][$four]!= null){
?>
									<li><a class="dropdown-item" href="#"><?php echo $four_name; ?></a></li>
<?php
								}else{}
							}//four for
?>
</ul></li>
<?php
						}else{}
					}//three for
?>
</ul></li>
<?php
				}else{}
			}//two for
?>
</ul></li>
<?php
		}else{}
	}//one for
?>
<!-- end xml nav one -->



<!-- began Category -->
<li class="nav-item dropdown">
	<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
	<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	<li>
		<div class="d-grid gap-2 col-6 mx-auto">
			<h6>Category</h6>
		</div>
	</li>
<?php
if(isset($framework_category_datatable)){
	foreach($framework_category_datatable as $framework_category_datatable_key => $framework_category_datatable_value){
?>
	<li class="dropdown-submenu">
		<a class="dropdown-item dropdown-toggle" href="<?php echo BASE_URL.'theme_blog_category_class/index_page_function/category/&theme_name=blog&post_datatable=blog_datatable&category_id='.$framework_category_datatable_value['id']; ?>" ><?php echo $framework_category_datatable_value["name"]; ?>
		<span class="badge bg-danger"><?php echo vendor_category_class::category_count_function($all_post, $framework_category_datatable_value["id"]); ?></span></a>
		<ul class="dropdown-menu">
		<li>
			<div class="d-grid gap-2 col-6 mx-auto">
				<h6>Group</h6>
			</div>
		</li>
<?php
		if(isset($framework_group_datatable)){
			foreach($framework_group_datatable as $framework_group_datatable_key => $framework_group_datatable_value){
				if($framework_category_datatable_value["id"] ==  $framework_group_datatable_value["category_id"]){
?>
		<li class="dropdown-submenu">
			<a class="dropdown-item dropdown-toggle" href="<?php echo BASE_URL.'theme_blog_group_class/index_page_function/group/&theme_name=blog&post_datatable=blog_datatable&group_id='.$framework_group_datatable_value['id']; ?>"><?php echo $framework_group_datatable_value["name"]; ?>
			<span class="badge bg-danger"><?php echo vendor_category_class::group_count_function($all_post, $framework_group_datatable_value["id"]); ?></span></a>
			<ul class="dropdown-menu">
				<li>
					<div class="d-grid gap-2 col-6 mx-auto">
						<h6>List</h6>
					</div>
				</li>
<?php
					if(isset($framework_list_datatable)){
						foreach($framework_list_datatable as $framework_list_datatable_key => $framework_list_datatable_value){
							if($framework_group_datatable_value["id"] == $framework_list_datatable_value["group_id"]){
?>
				<li><a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_list_class/index_page_function/list/&theme_name=blog&post_datatable=blog_datatable&list_id='.$framework_list_datatable_value['id']; ?>"><?php echo $framework_list_datatable_value["name"]; ?>
						<span class="badge bg-danger"><?php echo vendor_category_class::list_count_function($all_post, $framework_list_datatable_value["id"]); ?></span>
					</a>
				</li>								
<?php
							}
						}
					}
?>
			</ul></li>
<?php
				}
			}
		}
?>
	</ul></li>
<?php
	}
}
?>
	</ul>
</li>
<!-- end Category -->




<!-- began Brand -->
					
					  <li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLinkBrand345tdfs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  Brand
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLinkBrand345tdfs"> 
<?php 
if(isset($framework_brand_datatable)){
	foreach($framework_brand_datatable as $framework_brand_datatable_key => $framework_brand_datatable_value){
?>							
					<a class="dropdown-item" href="<?php echo BASE_URL.'theme_blog_brand_class/index_page_function/brand/&theme_name=blog&post_datatable=blog_datatable&brand_id='.$framework_brand_datatable_value['id']; ?>"><?php echo $framework_brand_datatable_value["name"]; ?></a>
<?php
	}
}
?>
						</div>
					  </li>
					
					
					
<!-- end Brand -->
					<?php array_class::get("frontendMenu"); ?>
					<li class="nav-item"><a class="nav-link" href="<?php echo BASE_URL."theme_portfolio/index_page_function/index/&theme_name=portfolio&post_datatable=portfolio_datatable"; ?>">About</a></li>
			</ul>
			
			
<!-- began left site -->
			<ul class="navbar-nav ms-auto">
				
<?php if(cookie_class::get('admin_login') == true){?>
					  <li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdownMenuBrandButton21342342334" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo cookie_class::get('user_name'); ?></a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuBrandButton21342342334">
						  <a class="dropdown-item" href="<?php echo BASE_URL.'user_profile_class/index_page_function/profile/'; ?>">Profile</a>
						  <a class="dropdown-item" href="<?php echo BASE_URL.'user_crowd_class/signout_function/sign-out/'; ?>">Sign Out</a>
						</div>
					 </li>
				      <li class="nav-item">
						<img class="navbar-brand" style="width:40px; height:40px; border-radius:50%;" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="<?php echo cookie_class::get("user_photo"); ?>" alt=""/>
					  <li>
<?php }else{ ?>
					 <li class="nav-item dropdown">
						<a class="nav-link" href="#" id="dropdownMenuBrandButton2134234" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">User Option</a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuBrandButton2134234">
						  <a class="dropdown-item" href="<?php echo BASE_URL.'user_crowd_class/index_page_function/sign-out/'; ?>">sign in</a>
						  <a class="dropdown-item" href="<?php echo BASE_URL.'user_crowd_class/index_page_function/sign-up/'; ?>">Sign Up</a>
						</div>
					 </li>
					<li class="nav-item">
						<img class="img-thumbnail" id="" style="width:40px; height:40px;" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="icon.png" alt="" />
					<li>

<?php }?>
			</ul>
<!-- end left site -->
	</div>
</nav>
<?php	
}
?>