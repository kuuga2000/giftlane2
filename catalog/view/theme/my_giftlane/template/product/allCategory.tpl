<? /*foreach($allproduct as $r):
			echo $r['model'];
		endforeach;*/
?>
<?php echo $header; ?>
<div id="content">
<div class="header2">
   	 
        <!--Categories -->
        <div class="categories">
		<?php if (count($categories2)) {
			$cat_cnt=1;
			 ?>
        	<ul class="subCata">
            	 <?php foreach ($categories2 as $category) { 
				    if($cat_cnt < 6) {
				 ?>
			      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				  <div class="cat1dropdown">
                        <div style="display:table; width:960px; z-index:12;">
						 <ul style="float: left;" class="Dropdownul">
				  <?php 
				  $subcat_cnt=1;
				  foreach ($category['children'] as $subcategory) { 
				  if($subcat_cnt < 6) {?>
				  <li><a href="<?php echo $subcategory['href']; ?>"><?php echo $subcategory['name']; ?></a></li>
				 <?php  
				   } 
				   else
				   { ?>
				  	<li><a href="<?php echo $allCategory.'&path='.$category['category_id']; ?>">All</a></li>
				 <?php  break;}	
				   
				   $subcat_cnt++;}?>
				  </ul></div>
                     </div>
				  </li>
			      <?php }
				  else
				  { ?>
				  	<!--<li class="all"><a class="isActive" href="<? echo $allCategory;?>">All</a></li>-->
				 <?php  break;}				  
				  $cat_cnt++; } ?> 
				  <li class="all"><a class="isActive" href="<? echo $allCategory;?>">All</a></li>                          
            </ul>
			<?php 	} ?>
			 
        </div>
      
        
    </div>
 
  <!--Div for show categories -->
     <!--<div id="showcategory" class="displayBox">
        	<span class="brk"></span>
            <div class="productBx">
			 <?php foreach ($categories1 as $category) { ?>
            	<ul>
                	<li><a href="<?php echo $category['href']; ?>"><div class="pro_hover"></div>
					<?php //echo $category['thumb']; ?>
					<img src="<?php echo $category['thumb']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                <span class="brandName"><a href="#"></a></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
					 </ul>
					 <?php } ?>
                
      </div>
	  <div class="suggestion"><a href="javascript:void(0)" onclick="updateCategorySuggestions()">MORE SUGGESTIONS</a></div>
        </div>-->
  
  <!--list products-->
    <div class="displayBox" id="searchResult" style="margin-top:55px">
 		
        	 
            <div class="productBx masterProductBx">
			 <?php foreach ($products as $product) { ?>
			 <?php  //echo $this->costumwrap($product['product_id']);
			// if($this->costumwrap($product['product_id'])!="FALSE"){
				
			 
			 
			 ?>
            	<ul>
                	<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"> <?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
							
                          <div class="proRight"><?php echo $product['price']?></div>
                        </div>
                    </li>
					 </ul>
					 <?php }// }?>
            </div>
	   <div class="suggestion"><a href="javascript:void(0)" onclick="updateSuggestions()">MORE SUGGESTIONS</a></div>
       </div> 
  <!--end list products-->
  
  
   <?php if (!$categories1 && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
 <?php if (!$categories2 && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
     <?php } ?>
  <?php } ?>
  
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

view = ''; //$.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}


function updateSuggestions()
{
	page = page + 1
	path = '<?php echo $path ?>';
	oldProducts = '<?php echo $oldProducts ?>';
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'" style="float:left; width:100%"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&page='+page+'&limit='+limit+'&path='+path+'&oldProducts='+oldProducts);
	
}

/*function updateSuggestions()
{
	page = page + 1
	path = '<?php echo $path ?>';
	alert(path);
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&page='+page+'&limit='+limit+'&path='+path);
	
}*/

function updateCategorySuggestions()
{
	//alert('<?php echo $searchCatUrl?>');
	page = page + 1
	path = '<?php echo $path ?>';
	$('#showcategory .productBx').append('<div id="searchDiv_'+page+'"></div>');
	$('#showcategory .productBx #searchDiv_'+page).load('<?php echo $searchCatUrl?>&page='+page+'&limit='+limit+'&path='+path);
	
}

function showAllCategories()
{
	$('#showproduct').hide();
	$('#showcategory').show();
	
	
}
</script> 

  </div>
<?php echo $footer; ?>