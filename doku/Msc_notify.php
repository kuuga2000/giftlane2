<?
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// APS Notify API
// Author : Riza
//
// After your customer fill up their Payment Information (Credit / Debit) we will procced to bank. And after receiving result from bank, we will forward
// the result to Merchant. MyShortCart posting some params while this notify process. Please see 2.1 below.
// The communication data will be done on background, so your customer will not see the process.
// On this step, you just need to reply to MyShortCart by echo "Continue" if the request is valid from MyShortCart or echo "Stop" if the request invalid.
// Please do the validation, follow some stuff on point 2.1, 2,2, 2.3 etc.
// On thing that you need to remember, please do some adjustment if needed. An example : If you need to send an email to your customer after they success payment,
// send them an email on this step. Please see on 2.4
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//1. Database connections
//Please fill in your database detail on this file : 
include("dbconnect.php"); 
require_once('phpmailer/class.phpmailer.php');
dbconnect();

// 2. Process
// 2.1 Retrieve Parameters to variables 
$transidmerchant = $_POST["TRANSIDMERCHANT"];
$totalamount = $_POST["AMOUNT"];
$result = strtoupper($_POST["RESULT"]); // Result can be (Success or Fail)

//if ($_SERVER['REMOTE_ADDR'] == '103.10.128.14') { // IP address of Myshortcart

// 2.2 Cross check with MYSHORTCART Database Table
// $true = 1 : transaction found, 0 : transaction not found
$sql = "select id, totalamount from MYSHORTCART where transidmerchant = '".$transidmerchant."' and totalamount = '".$totalamount."' and trxstatus='Verified'";
$qsql = mysql_query($sql);

if ($qsql) {
	$num_rows = mysql_num_rows($qsql);
	if ($num_rows > 0) $true = 1;
}

// 2.3 Update trxstatus and starttime then send Response to  MYSHORTCART
$time=date("Y-m-d H:i:s");
if ($true == 1) {
	
	if($result == 'SUCCESS'){ 
	
		$sql1 = "UPDATE  MYSHORTCART set trxstatus='".$result."', starttime='".$time."' where transidmerchant='".$transidmerchant."'";	
		
		$getOrder = "SELECT order_id FROM oc_doku_transaction WHERE transaction_id = ".$transidmerchant." ";
		$resOrders = mysql_query($getOrder) or die('error in getting orders');
		
		while($orders = mysql_fetch_assoc($resOrders))
		{
			$getTotal = "SELECT total FROM oc_order WHERE order_id = ".(int)$orders['order_id']." ";
			$resTotal = mysql_query($getTotal) or die('error getting total');
			$total = mysql_fetch_assoc($resTotal);
			
			$SQL = "INSERT INTO oc_order_customer_payment set order_id = ".(int)$orders['order_id'] .", customer_id = '', payment_to = 'doku',payment_from= 'doku',account_name= 'doku',total_amount= '".$total['total']."',payment_date= NOW(), status ='confirm' ";
			
			mysql_query($SQL);
			
			mysql_query("UPDATE oc_order SET payment_code = 'doku' , payment_method =  'doku' WHERE  order_id = ".(int)$orders['order_id'] ."") or die(mysql_error());
			
			$smtpUsername = 'eluminous_sse22@eluminoustechnologies.com';
			$smtpPassword = 'eluminous900';
			$smtpHost = 'smtp.gmail.com';
			$smtpPort = '465';
			//$smtpFromEmail = $adminDetail['email'];
			$smtpFromName = 'Giftlane Admin';
			
			$html = "Dear admin";
			$html .= '<br><br>';
			$html .= "Order Id: ".$orders['order_id']." has been confirmed";
			$html .= "<br><br>Thanks You<br>Giftlane";
			
			$mail = new PHPMailer;

			$mail->IsSMTP();                                      // Set mailer to use SMTP
			$mail->Host = $smtpHost;  // Specify main and backup server
			$mail->Port=$smtpPort; 
			$mail->SMTPAuth = true;                               // Enable SMTP authentication
			$mail->Username = $smtpUsername;       // SMTP username
			$mail->Password = $smtpPassword;                           // SMTP password
			$mail->SMTPSecure = 'ssl';                            // Enable encryption, 'ssl' also accepted

			$mail->From = $smtpUsername;
			$mail->FromName = $smtpFromName;
			$mail->IsHTML(true); 	                       // Set email format to HTML

			$mail->Subject = 'Giftlane - Order '.$orders['order_id'].' Confirmed.';
			$mail->Body    = $html;
			$mail->AltBody = $html;
			$mail->AddAddress($smtpUsername,$smtpFromName);  // Add a recipient
			
			$mail->Send();
		}
		
		
		// 2.4 IMPORTANT!!! : Maybe you will do anything else ex : send mail to your cust.
	}else{ 
		$sql1 = "UPDATE  MYSHORTCART set trxstatus='".$result."', starttime='".$time."' where transidmerchant='".$transidmerchant."'";
	}
	$qsql = mysql_query($sql1);
	if ($qsql) $response="Continue";
	else $response="Stop";
} else $response="Stop";
echo $response;
/*} else {
$sql1 = "UPDATE  MYSHORTCART set trxstatus = 'FAILED - INJECTION DETECTED', starttime='".$time."' where transidmerchant='".$transidmerchant."'";
	$qsql = mysql_query($sql1);
	echo "Stop";
}*/
// 3. Close Database Connection
dbdisconnect();
?>
