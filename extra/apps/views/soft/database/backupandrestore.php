<?php
$dbhost = '127.0.0.1';
$dbuser = 'root';
$dbpass = '';
$dbname = 'mvc_database';


   $conn = mysql_connect($dbhost, $dbuser, $dbpass);

   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }

   $table_name = "employee";
   $backup_file  = "/tmp/employee.sql";
   $sql = "SELECT * INTO OUTFILE '$backup_file' FROM $table_name";

   mysql_select_db('test_db');
   $retval = mysql_query( $sql, $conn );

   if(! $retval ) {
      die('Could not take data backup: ' . mysql_error());
   }

   echo "Backedup  data successfully\n";

   mysql_close($conn);



?>
<?php
/*$dbhost = '127.0.0.1';
$dbuser = 'root';
$dbpass = '';
$dbname = 'mvc_database';
$output = "D:/restore/test.sql";
exec("D:/xampp/mysql/bin/mysql --opt -h $dbhost -u $dbuser -p $dbpass $dbname < $output");
echo "Restore complete!";*/
?>