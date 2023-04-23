<?php
$this->model->get("framework_admin_datatable", array("status" => 1));
$this->model->get("framework_user_datatable", array("status" => 1));
$this->get_data_array["theme_datatable"] = $this->model_array["select_db_class"]->select_db_function($this->theme_datatable, array("id" => 1, "status" => 1));
$this->model->all("framework_level_datatable", array("status" => 1));

/*category->group->list*/
$this->model->get("framework_category_datatable", array("datatable" => $this->post_datatable, "status" => 1));
$this->model->get("framework_group_datatable", array("datatable" => $this->post_datatable, "status" => 1));
$this->model->get("framework_list_datatable", array("datatable" => $this->post_datatable, "status" => 1));
/*brand*/
$this->model->get("framework_brand_datatable", array("datatable" => $this->post_datatable, "status" => 1));
	


$this->model->get("framework_visitor_datatable", array("status" => 1));
$this->model->get("framework_block_datatable", array("status" => 1));
$this->model->get("framework_chat_datatable", array("datatable" => $this->post_datatable, "visitor_id" => cookie_class::get("visitor_id")));

$this->model->get("framework_notification_datatable", array("type" => "user"));
$this->model->all("framework_advertise_datatable");



$this->get_data_array["framework_favorite_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_favorite_datatable");
$this->get_data_array["framework_watch_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_watch_datatable");
$this->get_data_array["framework_cart_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_cart_datatable");
$this->get_data_array["framework_reach_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_reach_datatable");
$this->get_data_array["framework_comment_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_comment_datatable");
$this->get_data_array["framework_reply_datatable"] = $this->model_array["select_db_class"]->select_db_function("framework_reply_datatable");
/*
*theme datatable start after this line.
*
*/
$this->get_data_array["all_post"] = $this->model_array["select_db_class"]->select_db_function($this->post_datatable);
$this->model->get($this->post_datatable, array("status" => 1));
/*
*theme datatable start after this line.
*
*/
$this->get_data_array["job_news"] = $this->model_array["select_db_class"]->select_db_function("samojugc_news_datatable", array("category_id" => 67), "ID DESC", 1, 10);
/*
*theme datatable start after this line.
*
*/
$this->get_data_array["job_news"] = $this->model_array["select_db_class"]->select_db_function("samojugc_news_datatable", array("category_id" => 67), "ID DESC", 1, 10);
?>