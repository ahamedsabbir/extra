<?php
$this->get_data_array["post_id"] = $post_id = isset($_REQUEST['post_id']) ? $_REQUEST['post_id'] : false;
$this->get_data_array[$this->primary_datatable] = $this->model_array["select_db_class"]->select_db_function($this->primary_datatable, array("id" => $post_id, "id" => $post_id, "status" => 1));
siteinfo_class::post_info_set($this->get_data_array[$this->primary_datatable]);
?>