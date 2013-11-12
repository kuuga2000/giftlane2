 <a name="result" id="result"></a>
<?php if(count($products) > 0) { ?>
	<ul>
		<?php foreach($products AS $product) { ?>
	    	<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['image']; ?>" width="300" height="240" alt="pro" /></a>
	        	<div class="proDetial">
	            	<div class="proLeft">
	               		<a href="#"><?php echo $product['name']; ?></a>
	                    <span class="brandName"><a href="#"><?php echo $product['manufacturer']; ?></a></span>
	                </div>
	              <div class="proRight"><?php echo $product['price']; ?></div>
	            </div>
	        </li>
		<?php } ?>	
   </ul>
<?php }else{ ?>
<div class="displayBox">
  <div class="productBx">
  	<ul>
		<li>
			No Results found...
		</li>
	</ul>
		
  </div>
</div>
<?php } ?>

<script class="secret-source">
   showViewMore = '<?php echo $showViewMore ?>';
   if(showViewMore == 0)
   {
   		$('.suggestion').css('display','none');
   }
   else
   {
   	$('.suggestion').css('display','block');
   }
</script>