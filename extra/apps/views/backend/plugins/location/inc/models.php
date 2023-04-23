<div class="modal fade" id="countryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLongTitle">Country</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">EN</th>
              <th scope="col">BN</th>
            </tr>
          </thead>
          <tbody>
<?php
if($framework_country_datatable != null){
  foreach($framework_country_datatable as $framework_country_datatable_key => $framework_country_datatable_value){
    $id = $framework_country_datatable_value["id"];
    $en = $framework_country_datatable_value["en_name"];
    $bn = $framework_country_datatable_value["bn_name"];
	echo <<<TEXT
<tr>
  <th scope="row">$id</th>
  <td>$en</td>
  <td>$bn</td>
</tr>
TEXT;
  }
}
?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>



<div class="modal fade" id="subdistrictModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLongTitle">Sub District</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">District ID</th>
              <th scope="col">EN</th>
              <th scope="col">BN</th>
            </tr>
          </thead>
          <tbody>
<?php
if($framework_subdistrict_datatable != null){
  foreach($framework_subdistrict_datatable as $framework_subdistrict_datatable_key => $framework_subdistrict_datatable_value){
    $id = $framework_subdistrict_datatable_value["id"];
    $district_id = $framework_subdistrict_datatable_value["district_id"];
    $en = $framework_subdistrict_datatable_value["en_name"];
    $bn = $framework_subdistrict_datatable_value["bn_name"];
    if($framework_district_datatable != null){
  		foreach($framework_district_datatable as $framework_district_datatable_key => $framework_district_datatable_value){
          if($framework_district_datatable_value["id"] == $district_id){
              $district_en_name = $framework_district_datatable_value["en_name"];
              $district_bn_name = $framework_district_datatable_value["bn_name"];
          }
        }
    } 
	echo <<<TEXT
<tr>
  <th scope="row">$id</th>
  <th class="text-center">$district_bn_name</th>
  <td>$en</td>
  <td>$bn</td>
</tr>
TEXT;
  }
}
?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>




<div class="modal fade" id="policeStationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLongTitle">Police Station</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">District</th>
              <th scope="col">EN</th>
              <th scope="col">BN</th>
            </tr>
          </thead>
          <tbody>
<?php
if($framework_policestation_datatable != null){
  foreach($framework_policestation_datatable as $framework_policestation_datatable_key => $framework_policestation_datatable_value){
    $id = $framework_policestation_datatable_value["id"];
    $district_id = $framework_policestation_datatable_value["district_id"];
    $en = $framework_policestation_datatable_value["en_name"];
    $bn = $framework_policestation_datatable_value["bn_name"];
    if($framework_district_datatable != null){
  		foreach($framework_district_datatable as $framework_district_datatable_key => $framework_district_datatable_value){
          if($framework_district_datatable_value["id"] == $district_id){
              $district_en_name = $framework_district_datatable_value["en_name"];
              $district_bn_name = $framework_district_datatable_value["bn_name"];
          }
        }
    }    
	echo <<<TEXT
<tr>
  <th scope="row">$id</th>
  <th class="text-center">$district_bn_name</th>
  <td>$en</td>
  <td>$bn</td>
</tr>
TEXT;
           		  
  	}
}
?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>