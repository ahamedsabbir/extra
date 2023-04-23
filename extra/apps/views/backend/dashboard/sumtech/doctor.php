<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Dashboard Template · Bootstrap v5.0</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap5.min.css" rel="stylesheet">
  </head>
  <body>
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Sumtech</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="<?php echo BACKEND_HOME; ?>">Home</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <main class="py-3">
      <table id="example" class="table table-striped table-bordered nowrap" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Mobile</th>
                <th>Division</th>
                <th>District</th>
              	<th>Police Station</th>
              	<th>Designation</th>
                <th>Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
<?php
if($doctor_datatable != null){
  foreach($doctor_datatable as $doctor_datatable_key => $doctor_datatable_value){
    $id = $doctor_datatable_value["id"];
?>
          <tr>
                <td><?php echo $doctor_datatable_value["name"]; ?></td>
                <td><?php echo $doctor_datatable_value["mobile"]; ?></td>
                <td><?php echo $doctor_datatable_value["division"]; ?></td>
                <td><?php echo $doctor_datatable_value["district"]; ?></td>
                <td><?php echo $doctor_datatable_value["police_station"]; ?></td>
                <td><?php echo $doctor_datatable_value["designation"]; ?></td>
                <td><?php echo vendor_date_class::new_date($doctor_datatable_value["date"]); ?></td>
                <td>
                  <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                    <div class="btn-group" role="group">
                      <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        Option
                      </button>
                      <ul class="dropdown-menu" aria-lasumtechdby="btnGroupDrop1">
<?php
    if($doctor_datatable_value["status"] == 0){
?>  
                        <li><a class="dropdown-item" href="index.php?url=dashboard_sumtech/doctor_approve_function/doctor/&doctor_id=<?php echo $id; ?>">Approve</a></li>
<?php
    }else{
?>
                        <li><a class="dropdown-item" href="index.php?url=dashboard_sumtech/doctor_unapprove_function/doctor/&doctor_id=<?php echo $id; ?>">Unapprove</a></li>
<?php
    }     
?>
                        <li><a class="dropdown-item" href="index.php?url=dashboard_sumtech/doctor_delete_function/doctor/&doctor_id=<?php echo $id; ?>">Delete</a></li>
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
    <?php include(backend_class::inc("footer")); ?>
  </body>
  	<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>	
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
