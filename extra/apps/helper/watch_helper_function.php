<?php
$watch_data_array = array(
	"datatable" => "example_datatable",
	"post_id" => $post_id,
	"visitor_id" => cookie_class::get("visitor_id"),
	"status" => 1
);
$insert_watch = $this->model_array['insert_db_class']->insert_db_function("framework_watch_datatable", $watch_data_array);
$watch_count = $this->model_array["count_db_class"]->count_db_function("framework_watch_datatable", array("datatable" => "example_datatable", "post_id" => $post_id, "status" => 1));
$update_watch = $this->model_array['update_db_class']->update_db_function("example_post_datatable", array("watched" => $watch_count), array("id" => $post_id));
?>