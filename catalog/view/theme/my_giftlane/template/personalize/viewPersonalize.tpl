<?php echo $header; ?>
<div class="container">
	
 <?php echo $personalize; ?>
 
  <div class="displayBox" id="searchResult">
            <div class="productBx">
			<!-- <div style="clear: both;"></div>
            	<ul >
			 <?php foreach ($products as $product) { ?>
            	
                	<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
                          <div class="proRight"><?php echo $product['price']; ?></div>
                        </div>
                    </li>
					 
					 <?php } ?>
					 </ul>-->
            </div>
			<div class="suggestion" style="clear: both"><a href="javascript:void(0)" onclick="updatePersonalizeSuggestions()">MORE SUGGESTIONS</a></div>
        </div>
</div>

<script type="text/javascript">

var page = 0;
var limit = 6;
var category_id = '';
var showViewmore = '<?php echo $showViewmore; ?>';
if(showViewmore == 0)
	{
		$('.suggestion').css('display','none');
	}
function updatePersonalizeSuggestions()
{
	page = page + 1
	/*path = '<?php echo $path ?>';
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'" style="float:left; width:100%;"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('index.php?route=personalize/personalize/searchProducts&page='+page+'&limit='+limit+'&path='+path);*/
	searchProdcts();
	
}
updatePersonalizeSuggestions()	
</script>
<?php echo $footer; ?>