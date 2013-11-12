<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div id="content">
<div class="box-heading">MY ACCOUNT</div>
 <div class="myAc">
 	<div class="leftBar leftBar_sm">
	<?php echo $column_left; ?>
	</div>
	 <div class="rightBox rightBox_bg">
	 <h1 class="rbtitle" style="width:700px; padding-left:20px; margin-bottom:18px;">ORDERS</h1>
		
		<div class="orderHistory">
		<h2>Order History</h2>
		<?php if ($orders) { ?>
             	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <th>Date</th>
                     <th>Order No.</th>
                     <th>Shipped to</th>
                     <th>Status</th>
					 <th>&nbsp;</th>
                  </tr>
		 
		  <?php foreach ($orders as $order) { ?>
						 <tr>
						 	<td><?php echo $order['date_added'];?></td>
		                    <td style="text-decoration:underline;"> <a title="click to view detail order" href="index.php?route=account/order/info&order_id=<?php echo $order['order_id']; ?>"><?php echo $order['order_id']; ?></a></td>
		                    <td><?php echo $order['shipping_name'];?></td>
		                    <td>
								<?php 
									 if($order['status'] != 'Pending')
										{ 
											echo $order['status'];
										}
									   else if($order['paymentStatus'] == '')
									   {
									   		echo 'Not confirm';
									   }	
									   else
									   {
									   	 echo 'Confirm';
									   }
								  ?>
								</td>
							<td style="text-decoration:underline;"><?php if($order['paymentStatus'] == ''){?><a title="click to confirm payment" href="<?php echo $confirmOrder ?>&order_id=<?php echo $order['order_id']; ?>">CONFIRM</a><?php }else{ echo '&nbsp;'; } ?></td>
		                 </tr>
				 <?php }  ?>
                  
                </table>
		  
		  <div style="margin-left:220px;margin-top:40px;"><?php echo $pagination; ?></div>
		  <?php } else { ?>
		  <span style="color: #000000;float: none;!important">You have no purchase history.</span>
		  <?php } ?>
		  </div>
  		</div>
	
  </div>
  <?php //echo $content_bottom; ?></div>
<?php echo $footer; ?>