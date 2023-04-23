<?php
$this->get_data_array[$this->primary_datatable] = $this->model_array["pagenation_db_class"]->pagenation_select_db_function($this->primary_datatable, array("status" => 1), "ID DESC", $this->pageno, vendor_pagenation_class::$loop_item);
?>