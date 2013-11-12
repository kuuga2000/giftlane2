<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of myshortcart
 *
 * @author HP
 */

// Heading
$_['heading_title']      = 'myShortCart';

// Text 
$_['text_payment']       = 'Payment';
$_['text_success']       = 'Success: You have modified myshortcart account details!';
$_['text_myshortcart']	     = '<a onclick="window.open(\'https://myshortcart.com\');"><img src="view/image/payment/myshortcart.png" alt="myshortcart" title="myshortcart" style="border: 1px solid #EEEEEE;" /><br /></a>';
      
// Entry
$_['entry_merchant']     = 'Store ID :';
$_['entry_security']     = 'Shared Key';
$_['entry_tokoweb']      = 'URL Your Web';
$_['entry_invoice']      = 'Order ID (jika menggunakan prefix, Ex: NPR-)';
$_['entry_callback']     = 'Alert URL:<br /><span class="help">This has to be set in the myshortcart control panel. You will also need to check the "IPN Status" to enabled.</span>';
$_['entry_total']        = 'Total:<br /><span class="help">The checkout total the order must reach before this payment method becomes active.</span>';
$_['entry_order_status'] = 'Order Status:';
$_['entry_geo_zone']     = 'Geo Zone:';
$_['entry_status']       = 'Status:';
$_['entry_sort_order']   = 'Sort Order:';

// Error
$_['error_permission']   = 'Warning: You do not have permission to modify payment myShortCart!';
$_['error_merchant']     = 'Store ID Required!';
$_['error_security']     = 'Shared Key Code Required!';

// URL
$_['url_title']          = 'URL to myShortCart';
$_['url_verify']         = 'http://yourweb.com/index.php?route=payment/myshortcart/myverify';
$_['url_notify']         = 'http://yourweb.com/index.php?route=payment/myshortcart/mynotify';
$_['url_redirect']       = 'http://yourweb.com/index.php?route=payment/myshortcart/myredirect';
$_['url_cancel']         = 'http://yourweb.com/index.php?route=payment/myshortcart/mycancel';
$_['url_failed']         = 'http://yourweb.com/index.php?route=payment/myshortcart/myfailed';

?>
