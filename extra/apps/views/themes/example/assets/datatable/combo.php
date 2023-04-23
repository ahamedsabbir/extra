<?php	
$this->get_data_array["framework_admin_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_admin_datatable", array("status" => 1));
$this->get_data_array["framework_user_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_user_datatable", array("status" => 1));
$this->get_data_array["framework_visitor_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_visitor_datatable", array("status" => 1));
$this->get_data_array["framework_block_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_block_datatable", array("status" => 1));
$this->get_data_array["all_post"] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable);
$this->get_data_array[$this->post_datatable] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable, array('status' => 1));
$this->get_data_array["framework_category_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_category_datatable", array("datatable" => $this->post_datatable));
$this->get_data_array["framework_group_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_group_datatable", array("datatable" => $this->post_datatable));
$this->get_data_array["framework_list_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_list_datatable", array("datatable" => $this->post_datatable));
$this->get_data_array["framework_brand_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_brand_datatable", array("datatable" => $this->post_datatable));
$this->get_data_array["framework_notification_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_notification_datatable", array("type" => "admin"));
$this->get_data_array["framework_chat_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));
$this->get_data_array["framework_advertise_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_advertise_datatable");
$this->get_data_array["unread_count"] = $this->model_array["count_db_class"]->count_db_function("framework_contact_datatable", array('status' => 0));
$this->get_data_array["framework_watch_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_watch_datatable");
$this->get_data_array["framework_reach_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_reach_datatable");
$this->get_data_array["total_post_count"] = $this->model_array["count_db_class"]->count_db_function("redweb_datatable");
$this->get_data_array["total_visitor_count"] = $this->model_array["count_db_class"]->count_db_function("framework_visitor_datatable");
$this->get_data_array["total_watch_count"] = $this->model_array["count_db_class"]->count_db_function("framework_watch_datatable");
$this->get_data_array["total_reach_count"] = $this->model_array["count_db_class"]->count_db_function("framework_reach_datatable");
?>