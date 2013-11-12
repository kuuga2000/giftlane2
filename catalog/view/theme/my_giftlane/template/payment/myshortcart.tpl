<form action="<?php echo $action; ?>" method="post">
  <input type=hidden name="BASKET" value="<?php echo $data_product  ;?>">
  <input type=hidden name="STOREID" value="<?php echo $ap_merchant ;?>">
  <input type=hidden name="TRANSIDMERCHANT" value="<?php echo $tranidmercant ;?>">
  <input type=hidden name="AMOUNT" value="<?php echo $ap_amount  ;?>">
  <input type=hidden name="URL" value="<?php echo $ap_tokoweb ;?>">
  <input type=hidden name="WORDS" value="<?php echo $words ;?>">
  <input type=hidden name="CNAME" value="<?php echo $allname  ;?>">
  <input type=hidden name="CEMAIL" value="<?php echo $email  ;?>">
  <input type=hidden name="CWPHONE" value="<?php echo $telephone  ;?>">
  <input type=hidden name="CHPHONE" value="<?php echo $fax  ;?>">
  <input type=hidden name="CMPHONE" value="<?php echo $telephone  ;?>">
  <input type=hidden name="CCAPHONE" value="<?php echo $telephone  ;?>">
  <input type=hidden name="CADDRESS" value="<?php echo $payment_address_1 . $payment_address_2  ;?>">
  <input type=hidden name="CZIPCODE" value="<?php echo $payment_postcode  ;?>">
  <input type=hidden name="BIRTHDATE" value="0000-00-00">  
  <div class="buttons">
    <div class="right">
        <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
    </div>
  </div>
</form>
