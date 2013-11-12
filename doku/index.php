<html>
<?PHP 
include("dbconnect.php"); 
dbconnect();

$dokuform = "";

$ammount = '75000.00';
#$hashKey = '3CSF2T5QX6VG';
$hashKey = 'V25MX6LRD7U8';
$tranidmercant = rand(1000,100000);
$words = sha1(trim($ammount).trim($hashKey).trim($tranidmercant));
//sha1('75000.00'.'3CSF2T5QX6VG'.'000001');
//$words

mysql_query('INSERT INTO MYSHORTCART(starttime,trxstatus,totalamount,transidmerchant) VALUES(NOW(), \'Requested\', '.$ammount.','.$tranidmercant.') ') or die(mysql_error());

?>

<form NAME="order" id="order" METHOD="POST" action="https://apps.myshortcart.com/payment/request-payment/"  >
<input type="hidden" name="BASKET" value="Gold,70000.00,1,70000.00;Administration fee,5000.00,1,5000.00">
<input type="hidden" name="STOREID" value="00221190">
<input type="hidden" name="TRANSIDMERCHANT" value="<?php echo $tranidmercant ?>">
<input type="hidden" name="AMOUNT" value="<?php echo $ammount; ?>">
<input type="hidden" name="URL" value="http://eluminousdev.com/giftlane/">
<input type="hidden" name="WORDS" value= "<?php echo $words; ?>">
<input type="hidden" name="CNAME" value="Mayur Sharma">
<input type="hidden" name="CEMAIL" value="eluminous_tl5@eluminoustechnologies.com">
<input type="hidden" name="CWPHONE" value="0210000011">
<input type="hidden" name="CHPHONE" value="0210980901">
<input type="hidden" name="CMPHONE" value="081298098090">
<input type="hidden" name="CCAPHONE" value="02109808009">
<input type="hidden" name="CADDRESS" value="Jl. Jendral Sudirman Plaza Asia Office Park Unit 3">
<input type="hidden" name="CZIPCODE" value="12345">
<input type="hidden" name="BIRTHDATE" value="1985-01-17">
</form> 

<script type='text/javascript'>
	document.getElementById("order").submit();
</script
<body>

<noscript>
If you are not redirected please <a href="<?php echo $redirect_url; ?>">click here</a> to confirm your order.
</noscript>
</body>
</html>