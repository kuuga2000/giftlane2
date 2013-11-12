<?php echo $header; ?>
<div id="content">
<div class="header2">
   	 
        <!--Categories -->
        <div class="categories">
		<?php if (count($categories1)) {
			$cat_cnt=1;
			 ?>
        	<ul class="subCata">
            	 <?php 
				 foreach ($categories1 as $category) { 
				    if($cat_cnt < 6) {
				 ?>
			      <li><a href="<?php echo $category['href']; ?>" id="list"<?php 
				  if($mainCat==$category['category_id']) echo "class='isActive'";
				  else
				  if($subCat==$category['category_id'])
				  echo "class='isActive'";?>><?php echo $category['name']; ?></a>
				  <?php
				  $strSytleCat = "";
				 
				 if(count($category['children']) == 0) 
				  {
						$strSytleCat = "style='border-top:none; border-bottom:none;'";
				  }
						 
				   if($mainCat==$category['category_id']) 
					{
						if($strSytleCat == '')
						{
							$strSytleCat= "style='display:block'";
						}
						else
						{
							$strSytleCat = "style='display:block;border-top:none; border-bottom:none;'";
						}
						
					}
							  
				  ?>
				  <div class="cat1dropdown" <?PHP echo $strSytleCat; ?> >
                        <div style="display:table; width:960px; z-index:12;">
						 <ul style="float: left;" class="Dropdownul">
				  <?php 
				  $subcat_cnt=1;
				  foreach ($category['children'] as $subcategory) { 
				  
				 
				  if($subcat_cnt < 6) {?>
				  <li><a href="<?php echo $subcategory['href']; ?>" <?php if($subCat==$subcategory['category_id']) echo "class='isActive1'";?>><?php echo $subcategory['name']; ?></a></li>
				 <?php  
				   } 
				   else
				   { ?>
				  	<li class="all"><a href="<?php echo $allCategory.'&path='.$category['category_id']; ?>">All</a></li>
				 <?php  break;}	
				   
				   $subcat_cnt++;}?>
				  </ul></div>
                     </div>
				  </li>
			      <?php }
				  else
				  { ?>
				  	<!--<li class="all"><a href="<? echo $allCategory;?>">All</a></li>-->
				 <?php  break;}				  
				  $cat_cnt++; } ?>   
				  <!--<li class="all"><a href="<? echo $allCategory;?>">All</a></li>-->
				  <li class="all"><a href="<? echo $this->url->link('product/category/allc');?>">All</a></li>
            </ul>
			<?php 	} 
			else
			{
				
			}
			?>
			 
        </div>
    </div>
	
  <div class="product-info">
  	<span class="brk" style="height:60px;"></span>
    <?php if ($thumb || $images) { ?>
    <!-- Left section for images-->
    <div class="left_pro" style="width:350px">
      <?php if ($thumb) { ?>
      <div class="image" style="width:300px;">
		<div class="imgdet image1">
			<img style="width:300px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
			<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><div class="ImageZoomed"></div></a>
		</div>
		<?php if ($images) { $im = 2; ?>
			<?php foreach ($images as $image) { ?>
		<div class="imgdet image<?php echo $im; ?>" style="display:none;">
			<img style="width:300px;" src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
			<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><div class="ImageZoomed"></div></a>
		</div>
			<?php $im++; } ?>
		<?php } ?>
		
      </div>
      <?php } ?>
      <?php if ($images) { $im = 1; ?>
	  <!--footer-->
	  <div class="image-additional">
		 <?php if ($thumb) { ?>
		 <a href="#" title="<?php echo $heading_title; ?>" class="colorboxshow" style="padding:10px;width:90px;" data-id="<?php echo $im; ?>"><img style="width:100px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
		 <?php $im++; } ?>
        <?php foreach ($images as $image) { ?>
        <a href="#" title="<?php echo $heading_title; ?>" class="colorboxshow" style="padding:10px;width:90px;" data-id="<?php echo $im; ?>"><img style="width:100px;" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        <?php $im++; } ?>
      </div>
	  <!--end footer-->
      <?php } ?>
    </div>
    <?php } ?>
    <!-- right section for images-->
    <div class="right_det">
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($manufacturer) { ?>
      <!--<span><?php echo $text_manufacturer; ?></span>-->
      <div class="manufacturer"><?php echo $manufacturer; ?></div>
      <?php } ?>
      <!--<div class="description">
        <?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>-->
		 <div class="options">
		<?php if(count($colors) > 0) { ?>
		<div id="option-1" class="option mycustomecolor" style="position: relative ">
		
			<select class="color" name="color" >
			  <option value="">Select</option>
	            <?php foreach ($colors as $option) { ?>
	            <option value="<?php echo $option['color']; ?>"><?php echo $option['color']; ?></option>
	            <?php } ?>
	          </select>
			  
		</div>
		<div id="option-2" class="option mycustomesize" style="position: relative ">
		
			<select class="size" name="size" >
			  <option value="">Select</option></select>
			  
		</div>
		<?php } ?>
				<div class="cart">
		         <!-- <input type="text" name="quantity" id="productQuantity" size="2" placeholder="QTY" value=""  onkeypress ="return keyRestrict(event,'0123456789');"  maxlength="3" />-->
				  <div class="relet mycustomeqty">
				 <?php if($maxQty==0 || $maxQty=='')
					 { ?>
					 	 <div class="missQuestion_ttl" style="color:red">Sorry, this product is out of stock</div>
			   <?php } 
					 else { ?>
				  <select name="quantity" id="productQuantity" class="">
				  	<option value="">QTY</option>
					 <?php for($qty=1; $qty<=$maxQty; $qty++) { ?>
		          					<option value="<?php echo $qty ?>"><?php echo $qty; ?></option>
		                    			<?php  } ?>
				</select>
				<?php } ?>
				</div>
		          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
		          
		        <?php  if ($minimum > 1) { ?>
		        <div class="minimum"><?php echo $text_minimum; ?></div>
		        <?php } ?>
		      </div>
		</div>
	
      <?php if ($price && ($maxQty!=0)) { ?>
      <div class="price"><?php //echo $text_price; ?>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
        <br />
        <?php //if ($tax) { ?>
        <!--<span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />-->
        <?php //} ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php }  ?>
	<?php if($maxQty!=0) { ?>
      <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="comButton"  />
      <div class="desc_prod"><?php echo $description; ?> </div>
	 <?php } ?> 
	  </div>
  </div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <!-- <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>-->
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content top_border2" style="clear: both">
  	<span class="title1">YOU MIGHT ALSO LIKE</span>
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <ul>
        <li>
          <?php if ($product['thumb']) { ?>
          <a href="<?php echo $product['href']; ?>">
          <div class="pro_hover"></div>
          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
          <?php } ?>
          <div class="proDetial">
            <div class="proLeft">
              <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if ($product['price']) { ?>
              <span class="brandName">
              <a href="javascipt:void(0);">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                <?php } ?>
                </a>
              </span>
              <?php } ?>
              <?php if ($product['rating']) { ?>
              <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
              <?php } ?>
            </div>
            <div class="proRight"> <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a> </div>
          </div>
        </li>
      </ul>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
</div>

<div id="missProductPopup">
	  <div class="missQuestion">
        <div class="missQuestion_ttl">Sorry, this product is out of stock</div>
        <a href="javascript:void(0)" id="goBack" onclick="javascipt:goback(missProductPopup);" class="malFemButton">Go Back</a> <span class="or">- or -</span> <a href="<?php echo $gohome;?>" onclick="" class="malFemButton" id="skipThisStep">Go Home</a></div>
    </div>
	
<div id="missQtyPopup">
      <div class="missQuestion">
        <div class="missQuestion_ttl">Please add valid quantity of product.</div>
        <a href="javascript:void(0)" id="goBack" onclick="javascipt:goback(missQtyPopup);" class="malFemButton">Go Back</a> <span class="or">- or -</span> <a href="<?php echo $gohome;?>" onclick="" class="malFemButton" id="skipThisStep">Go Home</a></div>
    </div>
    
<div id="addCartPopup">
        <div class="addCartPopup_ttl">Item Added to Your Cart.</div>
        <div class="lft_img"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
        </div>
        <div class="rgt_spec">
        <a href="" style="color:#3c3c3b"><strong><?php echo $heading_title;?></strong></a><br>
                            <small class="cart_brand"><?php if ($manufacturer) { echo $manufacturer; } ?></small>
                            <div>
                                <small><span id="colorDiv"></span></small><br>
                                <small><span id="sizeDiv"></span></small><br>
                                <small>qty : <span id="qtyDiv"></span></small>
                              </div>
        <a href="<?php echo $myCartWrapper;?>" id="mycart" onclick="" class="comButton" style="margin-top:10px;">CUSTOMIZE WRAPPING</a><a href="<?php echo $myCartShip;?>" onclick="" class="comButton" style="margin-top:10px;" id="">VIEW YOUR CART</a>
        </div>
        <div id="cboxClose" style="float: left;">close</div>
</div>		
	<!--<img src=http://localhost/giftlane2/image/cache/data/den-500x500.jpg height=500 width=500 id=image>-->
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
	$('.colorboxshow').on('click', function(e){
		e.preventDefault();
		$('.imgdet').hide();
		datashow = $(this).attr('data-id');
		$('.imgdet.image'+datashow).show();
	});
});
//--></script> 
<script type="text/javascript"><!--

function updateQuantity(productOption)
{
    productOption = $('.size').val();
	product_id = '<?php echo $product_id; ?>';
	//if(productOption != '')
	//{
		color = $('.color').val()
			$.ajax({
		url: 'index.php?route=product/product/getProductOptionQunatity&option=' + productOption+"&color="+color+"&product_id="+product_id,
		/*dataType: 'json',*/
		beforeSend: function() {
			$('.size').after('<span class="wait" style="position: absolute;left: 265px;">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(res) {
			quantityDropdown = '<select name="quantity" id="productQuantity" class=""><option value="">QTY</option>';
			if(res > 0)
			{
				for(i=1; i<=res;i++)
				{
	          		quantityDropdown += '<option value="'+i+'">'+i+'</option>';                    			
				 $('#button-cart').show();
				 $('.outofstockmsg').hide();
				}
			}
			else
			{
				if(productOption != '')
				{
					$('.outofstockmsg').remove();
				 $('.price').before('<div style="clear:both; margin:30px 0 0px 0;text-align: left;color:red" class="missQuestion_ttl outofstockmsg">Sorry, this product is out of stock</div>');
				 $('#button-cart').hide();
				}
				/**/
			}
			quantityDropdown += '</select>';
				$('.mycustomeqty').html('');
				$('.mycustomeqty').html(quantityDropdown);
				$('#productQuantity').selectbox();
				
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
	//}

}

function updateSize(productOption)
{
	//if(productOption != '')
	//{
		product_id = '<?php echo $product_id; ?>';
	$.ajax({
		url: 'index.php?route=product/product/getProductSize&option=' + productOption+'&product_id='+product_id,
		dataType: 'json',
		beforeSend: function() {
			$('.color').after('<span class="wait" style="position: absolute;left: 142px;">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(res) {
			$('.mycustomesize').html(res['sizeOptions']);
			$('.size').selectbox({
					onChange: function (val, inst){
							updateQuantity()
						}
				});
			quantity = res['quantity'];
			quantityDropdown = '<select name="quantity" id="productQuantity" class=""><option value="">QTY</option>';
			if(quantity > 0)
			{
				for(i=1; i<=quantity;i++)
				{
	          		quantityDropdown += '<option value="'+i+'">'+i+'</option>';
				}
				 $('#button-cart').show();
				 $('.outofstockmsg').hide();
				
			}
			else
			{
				/* $('.outofstockmsg').remove();
				 $('.price').before('<div style="clear:both; margin:30px 0 0px 0;text-align: left" class="missQuestion_ttl outofstockmsg">Sorry, this product is out of stock</div>');
				 $('#button-cart').hide();*/
			}
			
			quantityDropdown += '</select>';
			$('.mycustomeqty').html('');
			$('.mycustomeqty').html(quantityDropdown);
			$('#productQuantity').selectbox();
			
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
	//}
}
$('#button-cart').bind('click', function() {
	if($('#productQuantity').val()== '' || $('#productQuantity').val() < 1)
	{
		$('#missQtyPopup').show();
		$('.overlay').show();
		return false;
	}
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		/*data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),*/
		data: {
			color: $('.color').val(),
			size: $('.size').val(),
			quantity: $('#productQuantity').val(),
			product_id :  '<?php echo $product_id ?>'
		},
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
				
				if(json['error']['stock'])
				{
					//alert(json['error']['stock']);
					$('#missProductPopup').show();
					$('.overlay').show();
				}
			} 
			
			if (json['success']) {
				/*$('#notification').html('<div class="success" style="display: none;">' + '<div style="float:left">' + json['success'] + '</div>'+ '<div style="float:right"><img src="catalog/view/theme/default/image/close.png" alt="X" class="close" style="cursor:pointer;" /></div> </div>');*/				
				/*$('#addProductPopup').show();*/
				$('.success').fadeIn('slow');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			
				if($('.color option:selected').html())
				{
				 	$('#colorDiv').html("Color: "+$('.color').val());	
				}
				if($('.size option:selected').html())
				{
					$('#sizeDiv').html("Size: "+$('.size').val());
				}				
				$('#qtyDiv').html($('#productQuantity').val());
				$('#addCartPopup').show();
				$('.overlay').show();
			}	
		}
	});
	$('#cboxClose').live('click', function() {
		$('#addCartPopup').hide();
		$('.overlay').hide();
			});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
function goback(id)
{
	$(id).hide();
	$('#productQuantity').attr('placeholder',"");
	$('#productQuantity').focus();
	$('.overlay').hide();
}

//--></script> 
<script type="text/javascript"><!--
//$('#tabs a').tabs();
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
/*	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});*/
	
	/*$('.color').selectbox({classHolder:'customeColor'});
	$('.size').selectbox({classHolder:'customeSize'});*/
	$('.color').selectbox({
		onChange: function (val, inst){
				//loadGreetings(<?php echo $product['product_id']; ?>);
				updateSize(val)
			}
	});
	$('.size').selectbox({
		onChange: function (val, inst){
				updateQuantity(val)
			}
	});
	$('#productQuantity').selectbox();
});
//--></script> 
<?php if ($chained_options) { ?>
<script type="text/javascript"><!--
<?php foreach ($chained_options as $chained_option) { ?>
$('#option-<?php echo $chained_option['child']; ?>').chained('#option-<?php echo $chained_option['parent']; ?>');
<?php } ?>
//--></script>
<?php } ?>
<?php echo $footer; ?>