<header class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">Database</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	  <span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	  <ul class="navbar-nav mr-auto">
		<li class="nav-item dropdown">
		  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			Menu
		  </a>
		  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			<a class="dropdown-item" href="#" data-toggle="modal" data-target=".create_datatable">Create Table</a>
			<a class="dropdown-item" href="#" data-toggle="modal" data-target=".database_setup">Database Setup</a>
			<div class="dropdown-divider"></div>
			<a class="dropdown-item" href="<?php echo address_class::request_method("plugins_database_class", "datatable_query_function", "datatable", false, false, "&sql=BACKUP DATABASE '{$data_value->db_name}' TO DISK = 'C:\testing.bak'"); ?>">Backup</a>
			<a class="dropdown-item" href="<?php echo address_class::request_method("plugins_database_class", "datatable_query_function", "datatable", false, false, "&sql=LOAD DATA INFILE 'framework_contact_datatable.sql' INTO TABLE framework_contact_datatable"); ?>">Restor</a>
		  </div>
		</li>
		<li class="nav-item">
		  <a class="nav-link" href="<?php echo address_class::request_method("plugins_database_class", "backup_function", "database", false, false); ?>">
			Backup
		  </a>
		</li>
	  </ul>
		<?php echo report_class::chack_report(); ?>
	</div>
		<a style="color:red;" class="" href="<?php echo BASE_URL.'Backend'; ?>"><i class="fa-solid fa-circle-xmark"></i>&nbsp;</a>
  </nav>
</header>