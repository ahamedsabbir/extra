<?php
class database_class extends PDO{
	public function __construct($dsn, $user_name, $password){
		parent::__construct($dsn, $user_name, $password);
	}
/*******************************************************************************
* database select function
*******************************************************************************/
    public function select_database_function($sql, $data_array = array()){
        $stmt = $this->prepare($sql);
		if(isset($data_array)){
			foreach($data_array as $key => $value){
				$stmt->bindValue($key, $value);
			}
		}
        $stmt->execute();
        return $stmt->fetchAll();
    }
/*******************************************************************************
* database row function
*******************************************************************************/
    public function count_database_function($sql, $data_array = array()){
        $stmt = $this->prepare($sql);
		if(isset($data_array)){
			foreach($data_array as $key => $value){
				$stmt->bindValue($key, $value);
			}
		}
        $stmt->execute();
        return $stmt->rowCount();
    }
/*******************************************************************************
* database insert function
*******************************************************************************/
	public function insert_database_function($sql, $insert_data){
			$stmt = $this->prepare($sql);
			foreach($insert_data as $key => $value){
				$stmt->bindValue(":".$key, $value, PDO::PARAM_STR);
			}
			return $stmt->execute();
		}
/*******************************************************************************
* database update function
*******************************************************************************/
    public function update_database_function($sql, $update_data_array, $update_by = false){
        $stmt = $this->prepare($sql);
        foreach($update_data_array as $key => $value) {
            $stmt->bindValue(":{$key}", $value);
        }
									if($update_by == true){
										foreach($update_by as $key => $value) {
            $stmt->bindValue(":{$key}", $value, PDO::PARAM_STR);
        	}
									}
        return $stmt->execute();
    }
/*******************************************************************************
* database delete function.
*******************************************************************************/
	public function remove_database_function($sql, $delete_by){
		$stmt = $this->prepare($sql);
	    foreach($delete_by as $key => $value) {
            $stmt->bindValue(":{$key}", $value);
        }
		return $stmt->execute();
    }

/*******************************************************************************
* model এ sql দেওয়া লাগে না।
*******************************************************************************/
	public function query_database_function($sql, $type = false){
		$stmt = $this->prepare($sql);
		if($type == "read"){
		    $stmt->execute();
		    return $stmt->fetchAll();
		}elseif($type == "count"){
		    $stmt->execute();
		    return $stmt->rowCount();
		}else{
		    return $stmt->execute();
		}
	}
	public function query_execute_function($sql){
		$stmt = $this->prepare($sql);
		$stmt->execute();
	}
  	public function query_count_function($sql){
		$stmt = $this->prepare($sql);
		$stmt->execute();
		return $stmt->rowCount();
	}
  	public function query_read_function($sql){
		$stmt = $this->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll();
	}
}
?>

