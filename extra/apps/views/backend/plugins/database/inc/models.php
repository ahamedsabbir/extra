<div class="modal fade create_datatable" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="container p-3">
				<form action="<?php echo BASE_URL.'plugins_database_class/datatable_submit_function/index/'; ?>" method="POST">
				  <div class="form-group">
					<label for="">Name</label>
					<input type="text" name="name" class="form-control"/>
				  </div>
				  <div class="form-group">
					<label for="">SQL</label>
					<textarea class="form-control" id="" name="sql" value="" rows="5" ></textarea>
				  </div>
				  <button type="submit" value="" name="submit" class="form-control btn btn-primary">Save</button>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="modal fade database_setup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="container p-3">
				<div class="row d-flex justify-content-center">
					<div class="col-md-6">
						<h1 class="text-center">Database Setup</h1>
						<form action="<?php echo BASE_URL.'plugins_database_class/database_update_function/index/'; ?>" method="POST">
						  <div class="form-group">
							<label for="db_host">Database Host</label>
							<input type="text" class="form-control" id="db_host" placeholder="<?php echo $data_value->db_host; ?>" name="db_host" value="<?php echo $data_value->db_host; ?>">
						  </div>
						  <div class="form-group">
							<label for="db_name">Database Name</label>
							<input type="text" class="form-control" id="db_name" placeholder="<?php echo $data_value->db_name; ?>" name="db_name" value="<?php echo $data_value->db_name; ?>">
						  </div>
						  <div class="form-group">
							<label for="db_user">Database User</label>
							<input type="text" class="form-control" id="db_user" placeholder="<?php echo $data_value->db_user; ?>" name="db_user" value="<?php echo $data_value->db_user; ?>">
						  </div>
						  <div class="form-group">
							<label for="db_password">Database Password</label>
							<input type="password" class="form-control" id="db_password" placeholder="<?php echo $data_value->db_password; ?>" name="db_password" value="<?php echo $data_value->db_password; ?>">
						  </div>
						  <button type="submit" class="form-control btn btn-primary" name="submit">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>