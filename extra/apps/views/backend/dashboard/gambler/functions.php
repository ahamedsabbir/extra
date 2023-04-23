<?php
function profile($gambler_datatable_value, $ticket_datatable){
$user_id = $gambler_datatable_value["user_id"];
$mobile = $gambler_datatable_value["mobile"];
$email = $gambler_datatable_value["email"];
$birth_date = $gambler_datatable_value["birth_date"];
$total = $gambler_datatable_value["total"];
$bet = $gambler_datatable_value["bet"];
$ticket = "";
if($ticket_datatable != null){
	foreach($ticket_datatable as $ticket_datatable_key => $ticket_datatable_value){
		if($ticket_datatable_value["user_id"] == $user_id AND $ticket_datatable_value["status"] == 1){
			$ticket .= $ticket_datatable_value["unique_id"].", ";
		}
	}
}
$ticket = trim($ticket, ", ");
		$text = <<<HTML
<!-- Modal -->
<div class="modal fade" id="profile$user_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">$user_id</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

<ul class="list-group">
  	<li class="list-group-item">$user_id</li>
  	<li class="list-group-item">$mobile</li>
 	 <li class="list-group-item">$email</li>
  	<li class="list-group-item">$birth_date</li>
  	<li class="list-group-item">
<button type="button" class="btn" data-toggle="modal" data-target="#submoney$user_id" data-whatever="@getbootstrap" data-dismiss="modal" aria-label="Close">-</button>
$total
<button type="button" class="btn" data-toggle="modal" data-target="#addmoney$user_id" data-whatever="@getbootstrap" data-dismiss="modal" aria-label="Close">+</button>
</li>
			<li class="list-group-item">
$bet
<button type="button" class="btn" data-toggle="modal" data-target="#buyticket$user_id" data-whatever="@getbootstrap" data-dismiss="modal" aria-label="Close">+</button>
</li>
<li class="list-group-item">$ticket</li>
</ul>




      </div>
    </div>
  </div>
</div>
HTML;
echo add_money($user_id);
echo buy_ticket($user_id);
echo sub_money($user_id);
		return $text;
}


function add_money($user_id){
$link = "index.php?url=dashboard_gambler_update_class/add_money_function/gambler/&user_id=$user_id";
$text = <<<HTML
<div class="modal fade" id="addmoney$user_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Money On $user_id</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="$link" method="post">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Taka:</label>
            <input type=" number" class="form-control" id="recipient-name" name="taka">
          </div>
												<button type="submit" class="btn btn-success">Update</button>
        </form>
      </div>
    </div>
  </div>
</div>
HTML;
		return $text;
}




function sub_money($user_id){
$link = "index.php?url=dashboard_gambler_update_class/sub_money_function/gambler/&user_id=$user_id";
$text = <<<HTML
<div class="modal fade" id="submoney$user_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sub Money On $user_id</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="$link" method="post">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Taka:</label>
            <input type=" number" class="form-control" id="recipient-name" name="taka">
          </div>
												<button type="submit" class="btn btn-success">Update</button>
        </form>
      </div>
    </div>
  </div>
</div>
HTML;
		return $text;
}


function buy_ticket($user_id){
$link = "index.php?url=dashboard_gambler_update_class/buy_ticket_function/gambler/&user_id=$user_id";
$text = <<<HTML
<div class="modal fade" id="buyticket$user_id" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Money On $user_id</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="$link" method="post">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Write Ticket No:</label>
            <input type=" number" class="form-control" id="recipient-name" name="ticket">
          </div>
												<button type="submit" class="btn btn-success">Update</button>
        </form>
      </div>
    </div>
  </div>
</div>
HTML;
		return $text;
}







?>