<?php echo $header; ?>

<div id="content">
	<div class="box-heading">MY ACCOUNT</div>
	<div class="myAc">
		<div class="leftBar leftBar_sm">
			<?php echo $column_left; ?>
		</div>
		<div class="rightBox rightBox_bg">
			<div class="secsion1">	
				<h1 class="rbtitle">ORDERS #<?php echo $order_id.' - '.strtoupper($orderStatus); ?></h1>
				<div class="abut_ordr_txt"><b>About This Order</b></div>
				<div class="date_ordr_txt">Order Date: <?php echo $date_added; ?></div>
				<div class="secsion secsion2">
					<ul>
						<li>
							<label>Billing Information</label>
							<?php echo $payment_address; ?><br />
						</li>
						<li>
						<label>Shipping Method</label>
						<?php echo $shipping_method; 
						
						?>
						
						</li>
					</ul>
				</div>
				<div class="secsion secsion3">
					<ul>
						<li>
						<label>Shipping Information</label>
						<?php echo $shipping_address; ?>
						</li>
						<li>
						<label>Payment Method</label>
						<?php if ($payment_method) { 
							if(strtolower($payment_method)==strtolower('Transfer Bank MANDIRI')){
							echo $payment_method."<br>125-00-1166065-1
							<br>
							A.N<br>
							Felicia
							";
						}elseif(strtolower($payment_method)==strtolower('Transfer Bank BCA')){
							echo $payment_method."<br>0658-211-181
							<br>
							A.N<br>
							Felicia
							";
							
						}
						
						} ?>
						</li>
					</ul>
				</div>	
				<div class="orderInfo">
					<h2>Items You Ordered </h2>
						<table class="cart_table" style="width: 100%; margin-left: -10px" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
							<th class="cart_tbl_ttl">PRODUCT</th>
							<th class="cart_tbl_ttl">QTY</th>
							<th class="cart_tbl_ttl">PRICE</th>
							<th class="cart_tbl_ttl">TOTAL</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($products as $product) { ?>
							<tr>
							<td class="left" style="width: 250px"><b><?php echo strtoupper($product['name']); ?></b>
							<?php if(isset($product['manufaturerName']) && $product['manufaturerName'] != '') { ?>
							<br /> <small style="text-transform: uppercase"><?php echo $product['manufaturerName']; ?></small>
							<?php } ?>	
							<?php if(isset($product['color']) && $product['color'] != '') { ?>
							<div style="margin-top: 10px"></div>
							<small style="text-transform: uppercase"><?php echo 'color: '.$product['color']; ?></small>
							<?php } ?>
							<?php if(isset($product['size']) && $product['size'] != '') { ?>
							<br> <small style="text-transform: uppercase"><?php echo 'size: '.$product['size']; ?></small>
							<?php } ?>	
							</td>
							<td><?php echo $product['quantity']; ?></td>
							<td><?php echo $product['price']; ?></td>
							<td><?php echo $product['total']; ?></td>
							</tr>
							<?php } ?>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="4" style="border-top: 2px solid #DDD8B5">&nbsp;</td>
							</tr>
							<?php foreach ($totals as $total) { ?>
							<tr>
								<td colspan="2"></td>
								<td class=""><?php if($total['code'] == 'sub_total' || $total['code'] == 'total' ) {  echo '<b>'. str_replace('-','',$total['title']).'</b>'; } else { echo str_replace('-','',$total['title']); } ?></td>
								<td class="">IDR <?php echo  number_format($total['value'],0,',','.'); ?></td>
								<?php if ($products) { ?>
								<?php } ?>
							</tr>
							<?php } ?>
						</tfoot>
					</table>															
				</div>
			</div>
			<a href="index.php?route=account/order" style="text-decoration: underline">Back to my order</a>	 
		</div>
	</div>
</div>
<?php echo $footer; ?> 