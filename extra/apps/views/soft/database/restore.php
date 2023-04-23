<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'dbpass';
$dbname = 'test';
$output = "D:/backup/test.sql";
exec("D:/xampp/mysql/bin/mysqldump --opt -h $dbhost -u $dbuser -p $dbpass $dbname > $output");
echo "Backup complete!";
?>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'dbpass';
$dbname = 'test';
$output = "D:/restore/test.sql";
exec("D:/xampp/mysql/bin/mysql --opt -h $dbhost -u $dbuser -p $dbpass $dbname < $output");
echo "Restore complete!";
?>