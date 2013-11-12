<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div id="content">
 <div class="box-heading"><?php //echo $heading_title; ?><?php echo $firstname.' '.$lastname ?></div>
 <div class="myAc">
 	<div class="leftBar leftBar_sm">
	<?php echo $column_left; ?>
	</div>
	
	 <div class="rightBox rightBox_bg">
    	<div class="secsion" style="width:700px;">
        	<h1>Hello, <?php echo $firstname?></h1>
            <p>From your account dashboard, you have the ability to view a snapshot of<br /> your recent account activity and update your account information.</p>
            <ul>
            	<li>
                	<label>Personal Details</label>
                    <?php echo $firstname.' '.$lastname;?><br />
					<?php  if($email!="") echo $email.'<br />';?>
                    <?php if($custtelephone!=""&& $custtelephone!=0) echo 'T:'.$custtelephone;?>
                    <span>(<a href="<?php echo $accountEdit;?>">edit</a>)</span>
                </li>
            </ul>
        </div>
        <div class="secsion" style="width:700px;">
        	 <ul>
            	<li>
                	<label>Billing Information</label>
                   	<?php echo $billing_firstname.' '.$billing_lastname;?><br />
                    <?php  if($address_1!="") echo $address_1.'<br />';?>
                    <?php  if($address_2!="") echo $address_2.'<br />';?>
                    <?php  if($city!="") echo $city.' '.$postcode.'<br />';?>
                    <?php  if($country!="") echo $country.'<br />';?>
                     <?php if($telephone!="" && $telephone!=0) echo 'T:'.$telephone;?>
                    <span>(<a href="<?php echo $addressEdit;?>">edit</a>)</span>
                </li>
                <li>
                	<label>Shipping Information</label>
                   	<?php echo $shipping_firstname.' '.$shipping_lastname;?><br />
                    <?php  if($shipping_address_1!="") echo $shipping_address_1.'<br />';?>
                    <?php  if($shipping_address_2!="") echo $shipping_address_2.'<br />';?>
                    <?php  if($shipping_city!="") echo $shipping_city.' '.$shipping_postcode.'<br />';?>
                    <?php  if($shipping_country!="") echo $shipping_country.'<br />';?>
                     <?php if($shipping_telephone!="" && $shipping_telephone!=0) echo 'T:'.$shipping_telephone;?>
                    <span>(<a href="<?php echo $addressEdit;?>">edit</a>)</span>
                </li>
            </ul>
        </div>
        <div class="secsion" style="width:700px;">
		<div id="subscibemessageCheck" class="success_sm" style="display:none;"></div>
        	 <h2>Newsletter Subscription</h2>
             <div class="subscrib">
             <div class="skin skin-minimal">
				
                 <input tabindex="5" type="checkbox" id="newsSubscribe" name="newsSubscribe"<?php if($newsletters==1) echo 'checked="checked"'?>>
                 <span class="tick">Subscribe to our newsletter</span>
                  <span>To get the latest on sales, new promotions, and many more.</span>
             </div>
             </div>
        </div>
        <div class="orderHistory">
             <h2>Order History</h2>
			 <?php if (count($customerOrderDetails)) {
					 ?>
             	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <th>Date</th>
                     <th>Order No.</th>
                     <th>Shipped to</th>
                     <th>Status</th>
					  <th>&nbsp;</th>
                  </tr>
				  
		            	 <?php foreach ($customerOrderDetails as $customerOrder) { ?>
						 <tr>
						 <?php $order_date=date('d/m/Y',strtotime($customerOrder['date_added']));?>
		                    <td><?php echo $order_date;?></td>
		                    <td style="text-decoration:underline;"><a title="click to view detail order" href="index.php?route=account/order/info&order_id=<?php echo $customerOrder['order_id']; ?>"><?php echo $customerOrder['order_id']; ?></td>
		                    <td><?php echo $customerOrder['shipping_firstname'].' '.$customerOrder['shipping_lastname']; ?></td>
		                    <td>
							
							<?php if($customerOrder['status'] != 'Pending')
									{ 
										echo $customerOrder['status'];
									}
								   else if($customerOrder['paymentStatus'] == '')
								   {
								   		echo 'Not confirm';
								   }	
								   else
								   {
								   	 echo 'Confirm';
								   }
							?>
								
							</td>
							<td style="text-decoration:underline"><?php if($customerOrder['paymentStatus'] == ''){?><a title="click to confirm payment" href="<?php echo $confirmOrder ?>&order_id=<?php echo $customerOrder['order_id']; ?>">CONFIRM</a><?php }else{ echo '&nbsp;'; } ?></td>
		                 </tr>
				 <?php } ?>
                  
                </table>
                <span>(<a href="<?php echo $allOrder;?>">view all</a>)</span>
				<?php }  else { ?>
		  				<span style="color: #000000;!important">You have no purchase history.</span>
		  <?php } ?>
			</div>
    </div>
 </div>
<script language="javascript">
$(document).ready(function() {
/*$('#newsSubscribe').checked(function() {
			
				   alert('hi');
				}
				);*/

	//$( "input[type=checkbox]" ).on( "click", countChecked );		
	$('#newsSubscribe').on('ifChecked', function(event){
		var data={subscribe:1};
	   $.ajax({
        type:'GET',
        url:'index.php?route=account/account/newssubscribe',
        dataType:'html',
        data:data,
        success:function(html){
			$("#subscibemessageCheck").show();
            $("#subscibemessageCheck").html(html);   
			//$('#subscibemessageCheck').delay(1500).fadeOut();          
        }
    })
	});
	$('#newsSubscribe').on('ifUnchecked', function(event){
		var data={subscribe:0};
	   $.ajax({
        type:'GET',
        url:'index.php?route=account/account/newssubscribe',
        dataType:'html',
        data:data,
        success:function(html){
			$("#subscibemessageCheck").show();
            $("#subscibemessageCheck").html(html); 
			//$('#subscibemessageCheck').delay(1500).fadeOut();            
        }
    })
	});
	
	$('#newsSubscribe').iCheck({
    checkboxClass: 'icheckbox_minimal',
    radioClass: 'iradio_minimal',
    increaseArea: '20%'
  });	
});

</script>
 <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 

<script type="text/javascript">
$(document).ready(function() {
$('#minimal-checkbox-1').click (function ()
{
var thisCheck = $(this);
if (thischeck.is (':checked'))
{
// Do stuff
}
});});
</script>