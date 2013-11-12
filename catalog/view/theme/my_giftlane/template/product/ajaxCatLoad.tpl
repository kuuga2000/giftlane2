 <?php foreach ($categories1 as $category) { ?>
            	<ul>
                	<li><a href="<?php echo $category['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $category['thumb']; ?>" title="<?php echo $$category['name']; ?>" alt="<?php echo $category['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                <span class="brandName"></span>
                            </div>
                          <div class="proRight"><?php //echo $product['price']; ?></div>
                        </div>
                    </li>
					 </ul>
					 <?php } ?>
<script type="text/javascript">
	showViewmore = '<?php echo $showViewmore; ?>';
	if(showViewmore == 0)
	{
		$('.suggestion').css('display','none');
	}
</script>