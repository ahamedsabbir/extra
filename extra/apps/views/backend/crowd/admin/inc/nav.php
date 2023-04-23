<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
	<form class="d-flex" action="index.php?url=admin_manage_class/search_page_function/search" method="post">
	  <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search" value="<?php echo session_class::get("search") != null ? session_class::get("search") : ""; ?>">
	  <button class="btn btn-outline-success" type="submit">Search</button>
	</form>
  </div>
</nav>