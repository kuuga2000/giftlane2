<?php

/*$order_number = $_GET['TRANSIDMERCHANT'];
$purchase_amt = $_GET['AMOUNT'];
$status_code = $_GET['STATUSCODE'];
$words = $_GET['WORDS'];
$paymentchannel = $_GET['PAYMENTCHANNEL'];
$session_id = $_GET['SESSIONID'];
$paymentcode = $_GET['PAYMENTCODE'];
*/


$order_number = 10141;
$purchase_amt = 10000;
$mallId = '1644120706';
$session_id = session_id();
$paymentcode = "";
$paymentchannel  = "01";
$status_code = $_GET['STATUSCODE'];
$words = sha1 ($purchase_amt + 0 + $purchase_amt + $order_number );


$strActionURL = "http://103.10.129.17/Suite/Receive";

$dokuform="<form name=\"param_pass\" id=\"param_pass\" method=\"post\" action='$strActionURL'>\n"; //example redirect link

$dokuform.="<input name=\"order_number\" type=\"hidden\" id=\"order_number\" value=\"$order_number\">\n";
$dokuform.="<input name=\"amount\" type=\"hidden\" id=\"order_number\" value=\"$purchase_amt\">\n";
$dokuform.="<input name=\"status_code\" type=\"hidden\" id=\"order_number\" value=\"$status_code\">\n";
$dokuform.="<input name=\"words\" type=\"hidden\" id=\"order_number\" value=\"$words\">\n";
$dokuform.="<input name=\"payment_channel\" type=\"hidden\" id=\"order_number\" value=\"$paymentchannel\">\n";
$dokuform.="<input name=\"session_id\" type=\"hidden\" id=\"order_number\" value=\"$session_id\">\n";
$dokuform.="<input name=\"payment_code\" type=\"hidden\" id=\"order_number\" value=\"$paymentcode\">\n";

$dokuform.="</form>\n";
$dokuform.="<script language=\"JavaScript\" type=\"text/javascript\">";
$dokuform.="document.getElementById('param_pass').submit();";
$dokuform.="</script>";

//FIREFOX FIX
$redirect_url = str_replace('&amp;', '&', $redirect_url);

?>
<body>
<? print $dokuform; ?>
<noscript>
If you are not redirected please <a href="<?php echo $redirect_url; ?>">click here</a> to confirm your order.
</noscript>
</body>