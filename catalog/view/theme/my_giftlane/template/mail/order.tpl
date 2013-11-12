<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $title; ?></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000;">
<div style="width: 680px;"><a href="<?php echo $store_url; ?>" title="<?php echo $store_name; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $store_name; ?>" style="margin-bottom: 20px; border: none;" /></a>
	 <p style="margin-top: 0px; margin-bottom: 10px;"><?php echo $customerName; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_greeting; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;">Your order will be dispatched soon, so please review the details below and make sure your shipping address and order are correct.</p>
  
  <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
    <thead>
      <tr>
        <?php if ($shipping_address) { ?>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">Shipping</td>
        <?php } ?>
		<td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">Billing</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <?php if ($shipping_address) { ?>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $shipping_address; ?></td>
        <?php } ?>
		 <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $payment_address; ?></td>
      </tr>
    </tbody>
  </table>
  
  
  <?php if ($customer_id) { ?>
<!--  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_link; ?></p>-->
  <p style="margin-top: 0px; margin-bottom: 10px;"><a href="<?php echo $link; ?>">Order detail</a></p>
  <?php } ?>
  <?php if ($download) { ?>
 <!-- <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_download; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><a href="<?php echo $download; ?>"><?php echo $download; ?></a></p>-->
  <?php } ?>
  <p style="margin-top: 0px; margin-bottom: 20px;">If you have any questions regarding your order, please reply to this email so that we have your full order details. </p>
  <p style="margin-top: 0px; margin-bottom: 20px;">For further information on our services or on how to use our website, please refer to the <a href="http://giftlane.co/howitworks">giftlane.co/howitworks</a> on our website, or send an email to our Customer Service Team at hello@giftlane.co</p>
  <p style="margin-top: 0px; margin-bottom: 20px;">Warmest Regards,</p>
  <p style="margin-top: 0px; margin-bottom: 20px;">Giftlane Co</p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><u>IMPORTANT NOTE:</u><br>
	For payment through CREDIT CARD, we need 1x24 hours to process/authorize your payment.<br>
	Please note that no amount is charged on your credit card up to this point. We'll send you an invoice once the payment is successful.
  </p>
</div>
</body>
</html>
