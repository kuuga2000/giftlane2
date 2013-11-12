<?
///////////////////////////////////////////////////////////////////////////////////
// APS Redirecting API
// Author : Riza
//
// On this part, after customer finished their purchase and then completed proses on MyShortCart they will redirect back to Merchant Side.
// MyShortCart will pointed the URL to this file by sent some information mentioned on point 2.1 below.
//////////////////////////////////////////////////////////////////////////////////


// 1. Database connections
// Please fill in your database detail on this file : 
include("dbconnect.php"); 
dbconnect();

// 2. Process
// 2.1 Retrieve Parameters to variables 
$transidmerchant = $_POST["TRANSIDMERCHANT"]; // is an unique order number 
$transdate = $_POST["TRANSDATE"]; // is a date of transaction
$ptype = $_POST["PTYPE"]; // it can be, CreditCard or Dokupay or another Channel Payment Existing on MyShortCart
$totalamount = $_POST["AMOUNT"]; // is amount of transaction
$result = strtoupper($_POST["RESULT"]); // is the result of transaction. It can be "Success" or "Fail"
$statuscode = $_POST["STATUSCODE"]; // is the approval code from Bank (Only if your customer pay using Credit Card)
$session_id = $_POST["EXTRAINFO"]; // is an extra information that have been sent on REQUEST PAYMENT. It is something like SESSION ID, use this if you need some return value that will not be changed starting from you are sending request until result page. 


if ($_SERVER['REMOTE_ADDR'] == '103.10.128.14') { // IP address of Myshortcart
	// 2.2 Cross check with MYSHORTCART Database Table
	// $true = 1 : transaction found, 0 : transaction not found
	$sql = "select id, totalamount from MYSHORTCART where transidmerchant = '".$transidmerchant."' and totalamount = '".$totalamount."'";
	$qsql = mysql_query($sql);
	
	if ($qsql) {
		$num_rows = mysql_num_rows($qsql);
		if ($num_rows > 0) $true = 1;
	}
	// 2.3 Update trxstatus and starttime then send Response to  MYSHORTCART
	$time=date("Y-m-d H:i:s");
	if ($true == 1) {
		if($result == 'SUCCESS'){// Maybe redirect your customer to your "THANK YOU PAGE"  
			$sql1 = "UPDATE MYSHORTCART set session_id='".$session_id."', response_code = '".$statuscode."', ptype = '".$ptype."', finishtime='".$time."' where transidmerchant='".$transidmerchant."'";		
			$qsql = mysql_query($sql1);
			header('http://eluminousdev.com/giftlane/index.php?route=checkout/success/'); // REDIRECT THE CUSTOMER TO "THANK YOU PAGE" (IF you have it)
			
		}else{ // Maybe redirect your customer to your "FAILURE PAGE / OR ASK THEM TO TRY AGAIN" 
			$sql1 = "UPDATE MYSHORTCART set session_id='".$session_id."', response_code = '".$statuscode."', finishtime='".$time."' where transidmerchant='".$transidmerchant."'";
			$qsql = mysql_query($sql1);
			header('http://eluminousdev.com/giftlane/index.php?route=checkout/fail'); // REDIRECT THE CUSTOMER TO "FAILURE PAGE" (IF you have it)
		}
	} 
	else {
		header('http://eluminousdev.com/giftlane/index.php?route=checkout/fail'); // REDIRECT THE CUSTOMER TO "ERROR PAGE" (IF you have it)
	}
} else {
	header('http://eluminousdev.com/giftlane/index.php?route=checkout/fail'); // REDIRECT THE CUSTOMER TO "ERROR PAGE" (IF you have it)
}
// 3. Close Database Connection
dbdisconnect();
?>
