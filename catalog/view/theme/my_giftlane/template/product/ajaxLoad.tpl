<ul>
<?php foreach ($products as $product) { //echo $this->costumwrap($product['product_id']); ?>
                	<?php //if($this->costumwrap($product['product_id'])!="FALSE"){?>
					
					<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt=" <?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
					 <?php } //}?>
</ul>					 
<script type="text/javascript">
	showViewmore = '<?php echo $showViewmore; ?>';
	if(showViewmore == 0)
	{
		$('.suggestion').css('display','none');
	}
</script>					 