<div class="container">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
		<a class="navbar-brand" href="#"><?php echo $theme_name; ?></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item">
			  <a class="nav-link active" aria-current="page" href="#">Home</a>
			</li>
			<li class="nav-item dropdown">
			  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				Option
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				
<?php
$files = glob('extra/apps/views/themes/'.$theme_name.'/app/content/*.php', GLOB_BRACE);
foreach($files as $file) {
  $file_loop = basename($file, ".php");
  echo "<li><a class='dropdown-item' href='index.php?url=content/index_page_function/$file_loop/&theme_name=$theme_name'><i class='fa-brands fa-uncharted'></i> $file_loop</a></li>";
}
?>
                <hr />
                <li><button class="btn" data-bs-toggle="modal" data-bs-target="#insertElementModal"><i class="fa-solid fa-plus"></i> xml Element</button></li>
                <hr />
                <li><button class="btn" data-bs-toggle="modal" data-bs-target="#addContentModal"><i class="fa-solid fa-file-lines"></i> Add Content</button></li>
                <li><button class="btn" data-bs-toggle="modal" data-bs-target="#insertFieldModal"><i class="fa-solid fa-diagram-project"></i> Add Project</button></li>
			  </ul>
			</li>
			<li class="nav-item">
			  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
			</li>
		  </ul>
		  <form class="d-flex">
			<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		  </form>
		</div>
	  </div>
	</nav>
</div>