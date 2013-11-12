<?
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// APS Verify API
// Author : Riza
//
// When your customer checkout and post data data MyShortCart, then MyShortCart will verified the request by sent some params (point 2.1)
// The communication data will be done on background, so your customer will not see the process.
// On this step, you just need to reply to MyShortCart by echo "Continue" if the request is valid from MyShortCart or echo "Stop" if the request invalid.
// Please do the validation, follow some stuff on point 2.1, 2,2, 2.3 etc.
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//1. Database connections
//Please fill in your database detail on this file : 
include("dbconnect.php"); 
dbconnect();

// 2. Process
// 2.1 Retrieve Parameters to variables 
$transidmerchant = $_POST["TRANSIDMERCHANT"];
$totalamount = $_POST["AMOUNT"];
$storeid = $_POST["STOREID"];

//if ($_SERVER['REMOTE_ADDR'] == '103.10.128.14') { // IP address of Myshortcart

// 2.2 Cross check with MYSHORTCART Database Table
// $true = 1 : transaction found, 0 : transaction not found
$sql = "select id, totalamount from MYSHORTCART where transidmerchant = ".$transidmerchant." and totalamount = ".$totalamount." and trxstatus = 'Requested'";
$qsql = mysql_query($sql);

if ($qsql) {
	$num_rows = mysql_num_rows($qsql);
	if ($num_rows > 0) $true = 1;
}
// 2.3 Update trxstatus and starttime then send Response to  MYSHORTCART
$time=date("Y-m-d H:i:s");
if ($true == 1) {
	$sql1 = "UPDATE MYSHORTCART set trxstatus='Verified', starttime = '".$time."' where transidmerchant = '".$transidmerchant."'";
	$qsql = mysql_query($sql1);
	if ($qsql) $response = "Continue";
	else $response="Stop";
} 
echo $response;

/*}else {
	$sql1 = "UPDATE MYSHORTCART set trxstatus = 'FAILED - INJECTION DETECTED', starttime = '".$time."' where transidmerchant = '".$transidmerchant."'";
	$qsql = mysql_query($sql1);
	echo "Stop";
}*/

// 3. Close Database Connection
dbdisconnect();
?>
