<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_merchant; ?></td>
            <td><input type="text" name="myshortcart_merchant" value="<?php echo $myshortcart_merchant; ?>" />
              <?php if ($error_merchant) { ?>
              <span class="error"><?php echo $error_merchant; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_security; ?></td>
            <td><input type="text" name="myshortcart_security" value="<?php echo $myshortcart_security; ?>" />
              <?php if ($error_security) { ?>
              <span class="error"><?php echo $error_security; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_tokoweb; ?></td>
            <td><input type="text" name="myshortcart_tokoweb" value="<?php echo $myshortcart_tokoweb; ?>" />
              <?php if ($error_paypal) { ?>
              <span class="error"><?php echo $error_paypal; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_invoice; ?></td>
            <td><input type="text" name="myshortcart_inv_tokoweb" value="<?php echo $myshortcart_inv_tokoweb; ?>" />
              <?php if ($error_inv_paypal) { ?>
              <span class="error"><?php echo $error_inv_paypal; ?></span>
              <?php } ?></td>
          </tr>
          <!--<tr>
            <td><?php echo $entry_callback; ?></td>
            <td><textarea cols="40" rows="5"><?php echo $callback; ?></textarea></td>
          </tr>
          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="myshortcart_total" value="<?php echo $myshortcart_total; ?>" /></td>
          </tr>-->
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="myshortcart_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $myshortcart_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="myshortcart_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $myshortcart_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="myshortcart_status">
                <?php if ($myshortcart_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="myshortcart_sort_order" value="<?php echo $myshortcart_sort_order; ?>" size="1" /></td>
          </tr>
         </table>
      </form>
   
       <div class="dashboard-heading"><?php echo $url_title; ?></div>
             <div class="dashboard-content">
               <div class="content">
                 <table class="form">
                    <tr>
                        <td>Verify </td>
                        <td>
                            <input type="text" value="<?php echo $url_verify ?>" size="150" />
                        </td>
                    </tr>
                    <tr>
                        <td>Notify </td>
                        <td>
                            <input type="text" value="<?php echo $url_notify ?>" size="150" />
                        </td>
                    </tr>
                    <tr>
                        <td>Redirect </td>
                        <td>
                            <input type="text" value="<?php echo $url_redirect ?>" size="150" />
                        </td>
                    </tr>
                    <tr>
                        <td>Cancel </td>
                        <td>
                            <input type="text" value="<?php echo $url_cancel ?>" size="150" />
                        </td>
                    </tr>
                    <tr>
                        <td>Failed </td>
                        <td>
                            <input type="text" value="<?php echo $url_failed ?>" size="150" />
                        </td>
                    </tr>
                </table>
              </div>    
        </div>  
   </div>    
  </div>
</div>
<?php echo $footer; ?> 