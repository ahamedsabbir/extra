<?php
$server = $_SERVER;
$env = $_ENV;
$post = $_POST;
$gets = $_GET;
$files = $_FILES;
$cookie = $_COOKIE;
$session = $_SESSION;
$globals = $GLOBALS;
function varibleTest($data){
  if(gettype($data) == "array"){
    print_r($data);
  }else{
    echo $data;
  }
}
//varibleTest($globals);
//getenv('USERNAMES');
//echo $_ENV["USERNAMES"];
?>
