<?php
$db="testing_doku";
$connect=mysql_connect("localhost","testing_doku","pwddoku")or die("error connection");
mysql_select_db("$db",$connect) or die ("error select DB");
        

        if($_GET['TRANSIDMERCHANT']) {
        $order_number = $_GET['TRANSIDMERCHANT'];
        
	} 
else { $order_number = 0; }
    $totalamount = $_GET['AMOUNT'];
    $words    = $_GET['WORDS'];
    $statustype = $_GET['STATUSTYPE'];
    $response_code = $_GET['RESPONSECODE'];
    $approvalcode   = $_GET['APPROVALCODE'];
    $status         = $_GET['RESULTMSG'];
    $paymentchannel = $_GET['PAYMENTCHANNEL'];
    $paymentcode = $_GET['PAYMENTCODE'];
    $session_id = $_GET['SESSIONID'];
    $bank_issuer = $_GET['BANK'];
    $cardnumber = $_GET['MCN'];
    $payment_date_time = $_GET['PAYMENTDATETIME'];
    $verifyid = $_GET['VERIFYID'];
    $verifyscore = $_GET['VERIFYSCORE'];
    $verifystatus = $_GET['VERIFYSTATUS'];

// Basic SQL

	$sql = "select transidmerchant,totalamount from DOKU where transidmerchant='".$order_number."'and trxstatus='Requested'";
	$checkout = mysql_fetch_array(mysql_query($sql));
	// echo "sql : ".$sql;
	$hasil=$checkout['transidmerchant'];
	$amount=$checkout['totalamount'];



// Custom Field

	if (!$hasil) {

	  echo 'Stop1';

	} else {

		if ($status=="SUCCESS") {
                   $sql = "UPDATE DOKU SET trxstatus='Success', words='$words', statustype='$statustype', response_code='$response_code', approvalcode='$approvalcode',
		         trxstatus='$status', payment_channel='$paymentchannel', paymentcode='$paymentcode', session_id='$session_id', bank_issuer='$bank_issuer', creditcard='$cardnumber',
			 payment_date_time='$payment_date_time', verifyid='$verifyid', verifyscore='$verifyscore', verifystatus='$verifystatus',  where transidmerchant='$order_number'";
        // echo "sql : ".$sql;
		$result = mysql_query($sql) or die ("Stop2");
		  
		} else {
 
 		  $sql = "UPDATE DOKU set trxstatus='Failed' where transidmerchant='".$order_number."'";

		  $result = mysql_query($sql) or die ("Stop3");
 
 
		}
		echo 'Continue';
	
	}
	
	mysql_close();
?>