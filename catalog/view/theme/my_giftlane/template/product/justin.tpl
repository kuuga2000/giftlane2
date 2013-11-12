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
				# echo "<pre>";print_r($categories1); exit;
				 foreach ($categories1 as $category) { 
				    if($cat_cnt < 6) {
				 ?>
			      <li><a href="<?php echo $category['href']; ?>" id="list"<?php 
				  if($mainCat==$category['category_id']) echo "class='isActive'";?>><?php echo $category['name']; ?></a>
				  <?PHP 
				  $strSytleCat = "";
				  if(!count($category['children'])) 
				  {
				  	$strSytleCat = "style='border-top:none; border-bottom:none;'";
					
				  }
				  
				  if($mainCat==$category['category_id'] && count($category['children']) > 0) 
				  {
				  	$strSytleCat= "style='display:block'";
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
				  
				 <?php  break;}				  
				  $cat_cnt++; } ?>                           
				  <li class="all"><a href="index.php?route=product/justin&type=all" <?php if(isset($allActive) && $allActive == 1) { ?>class="isActive"<?php } ?> >All</a></li>
            </ul>
			<?php 	} 
			else
			{
				
			}
			?>
			 
        </div>
      
        
    </div>

  <?php if ($products) { ?>
    <div id="showproduct" class="displayBox">
        	<span class="brk"></span>
            <div class="productBx" >
           <!-- <h1><?php echo $heading_title; ?></h1>-->
		   <div style="clear: both;"></div>
		   <ul >
			 <?php
			 $count = 1;
			  foreach ($products as $product) { 
			  if($count == 1)
			  {
			  ?>
			  <li style="width: 940px; min-height: 400px"><a href="<?php echo $product['href']; ?>"><div class="pro_hover" style="width: 940px; min-height: 400px"></div><img style="height: 400px" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial" style="width: 940px" >
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
			  <?php	
			  }else if( $count == 2)
			  {
			  ?>
			  <li style="width: 620px; min-height: 590px"><a href="<?php echo $product['href']; ?>"><div class="pro_hover" style="width: 620px; min-height: 590px"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="height: 540px" /></a>
                    	<div class="proDetial" style="width: 620px;margin-top: 37px;">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
			  <?php	
			  }else{
			  	?>
				<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
				<?php
			  }
			  $count++;
			 } ?>
		</ul>
      </div>
	  <div class="suggestion"><a href="javascript:void(0)" onclick="updateSuggestions()">MORE SUGGESTIONS</a></div>
        </div>
  <div class="pagination"><?php //echo $pagination; ?></div>
  <?php } ?></div>
   <?php if (!$categories1 && !$products) { ?>
  <div class="no_product"><?php echo $text_empty; ?></div>
  <?php } ?>  
   <?php if (!$products) { ?>
  <div class="no_product"><?php echo $text_empty; ?></div><?php } ?>
<script type="text/javascript">
var page = 1;
var limit = 6;
var category_id = '';
var showViewmore = '<?php echo $showViewmore; ?>';
if(showViewmore == 0)
	{
		$('.suggestion').css('display','none');
	}
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		//$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		//$.totalStorage('display', 'grid');
	}
}

view = '';//$.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}

function updateSuggestions()
{
	page = page + 1
	path = '<?php echo $categoryId ?>';
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'" style="float:left; width:100%;"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('index.php?route=product/justin/ajaxSearch&from=justin&page='+page+'&limit='+limit+'&path='+path);
	
}

function updateCategorySuggestions()
{
	//alert('<?php echo $searchCatUrl?>');
	page = page + 1
	path = '<?php echo $path ?>';
	$('#showcategory .displayBox .productBx').append('<div id="searchDiv_'+page+'"></div>');
	$('#showcategory .displayBox .productBx #searchDiv_'+page).load('<?php echo $searchCatUrl?>&page='+page+'&limit='+limit+'&path='+path);
	
}

function showAllCategories()
{
	$('#showproduct').hide();
	$('#showcategory').show();
}
</script> 

  </div>
<?php echo $footer; ?>