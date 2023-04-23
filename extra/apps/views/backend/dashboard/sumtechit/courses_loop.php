<!doctype html>
<html class="no-js" lang="">
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap5.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
	<body>
      <header class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
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
      </header>
      <section class="container">
        <div class="p-5 mb-4 rounded-3">
          <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">Custom jumbotron</h1>
            <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p>
            <button class="btn btn-primary btn-lg" type="button" onclick="window.location='<?php echo BASE_URL."dashboard_sumtechit/index_page_function/courses_insert/"; ?>'">Course Insert</button>
          </div>
        </div>
      </section>
      <main class="container">
		<table id="example" class="table table-striped nowrap" style="width:100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Heading</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                
<?php
if($sumtechit_course_datatable != null){
	foreach($sumtechit_course_datatable as $sumtechit_course_key => $sumtechit_course_value){
		$id = $sumtechit_course_value["id"];
		$open = BASE_URL."theme_sumtechit/single_courses_function/courses/&post_id=$id";
		$update = BASE_URL."dashboard_sumtechit/single_courses_function/courses_update/&post_id=$id";
		$delete = BASE_URL."dashboard_sumtechit/courses_delete_function/courses_loop/&post_id=$id";
?>
                  <tr>  
					<td><?php echo $sumtechit_course_value["name"]; ?></td>
                    <td><?php echo $sumtechit_course_value["type"]; ?></td>
                    <td><?php echo $sumtechit_course_value["heading"]; ?></td>
                    <td>
                      <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <div class="btn-group" role="group">
                          <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            Action
                          </button>
                          <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                            <li><a class="dropdown-item" href="<?php echo $open; ?>">Open</a></li>
                            <li><a class="dropdown-item" href="<?php echo $update; ?>">Update</a></li>
                            <li><a class="dropdown-item" href="<?php echo $delete; ?>">Delete</a></li>
                          </ul>
                        </div>
                      </div>
                  	</td>
				</tr>
<?php
	}
}
?>             
            </tbody>
        </table>
      </main>
		<?php include(backend_class::inc("footer")) ?>
	</body>
  	<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/js/bootstrap.bundle.min.js" ></script>
  	<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" ></script>
  	<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js" ></script>
  	<script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js" ></script>
  	<script src="https://cdn.datatables.net/responsive/2.3.0/js/responsive.bootstrap5.min.js" ></script>
  <script>
$(document).ready(function() {
    $('#example').DataTable( {
        responsive: {
            details: {
                display: $.fn.dataTable.Responsive.display.modal( {
                    header: function ( row ) {
                        var data = row.data();
                        return 'Details for '+data[0]+' '+data[1];
                    }
                } ),
                renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
                    tableClass: 'table'
                } )
            }
        }
    } );
} );
  </script>
</html>