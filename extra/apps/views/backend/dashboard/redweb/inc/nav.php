<nav class="container navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Redweb Dashboard</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
		<div class="collapse navbar-collapse" id="main_nav">
			<ul class="navbar-nav">	
				<li class="nav-item">
				<li>
			</ul>
			<ul class="navbar-nav ms-auto py-2">
				<li class="nav-item">
					<form class="d-flex me-3" role="form" action="<?php echo BASE_URL.'dashboard_redweb_search_class/index_page_function/loop/'; ?>" method="POST" enctype="multipart/form-data">
						<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</li>
			</ul>
		</div>
	</div>
</nav>