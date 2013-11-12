<?php
// This is standard php open connection using MySql Database.
// If you are using PHP Framework, such as CI, CakePHP, Zend or even another CMS please adjust the connection stuff.

function dbconnect() {
	$server = 'localhost';
	$user = 'root';
	$password = 'H9nbK9210';
	$db = 'giftlane';
	
  	$link = mysql_connect($server,$user,$password) or die('Could not connect to server.' );
  	mysql_select_db($db, $link) or die('Could not select database.');
}

function dbdisconnect() {
	$server = 'localhost';
	$user = 'root';
	$password = 'H9nbK9210';
	$db = 'giftlane';
	
  	mysql_connect($server,$user,$password);
    mysql_select_db($db);
    mysql_close();
}
?>
