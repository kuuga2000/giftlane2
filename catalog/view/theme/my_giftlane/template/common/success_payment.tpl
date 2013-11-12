<?php echo $header; ?>
<div id="content">
	<div class="box-heading">THANK YOU FOR YOU ORDER</div>
	<?php if($payment_method=='bank_transfer') { ?>
 <div class="missQuestion" style="padding: 60px 0 160px 0">
        <div class="missQuestion_ttl" style="font-size: 34px; margin: 0 0 23px 0">Thank You for Your Order</div>
		  <div class="ThankYouSlide" style="margin: 0; padding-bottom: 70px; font-size:12px; font-weight: normal;"> We will process your gift soon after we <br/> receive your confirmation of payment</div>
        <a href="<?php echo $confirmpayment;?>" id="goBack" style="width: 200px" onclick="" class="malFemButton">Confirm payment</a> <span class="or">- or -</span> <a href="<?php echo $gohome;?>" onclick=""  style="width: 200px" class="malFemButton" id="skipThisStep">Go Home</a>
</div>
<?php }
else {
	 ?>
	 <div class="missQuestion" style="padding: 60px 0 160px 0">
        <div class="missQuestion_ttl" style="font-size: 34px; margin: 0 0 23px 0">Thank You for Your Order</div>
		 <!--<div class="ThankYouSlide" style="margin: 0; padding-bottom: 70px; font-size:12px; font-weight: normal;"> We will process your gift soon after we <br/> receive your confirmation of payment</div> 
        <a href="<?php echo $confirmpayment;?>" id="goBack" style="width: 200px" onclick="" class="malFemButton">Confirm payment</a> <span class="or">- or -</span>--> <a href="<?php echo $gohome;?>" onclick=""  style="width: 200px" class="malFemButton" id="skipThisStep">Go Home</a>
</div>
<?php }	?>	
		<!--
          <a class="view_selection_btn" id="" href="javascript:void(0)" onclick="$('.personalise_step').hide(); $('#banner-slide').hide(); $('#searchResult').css('border-top','2px solid #ddd8b5')">View Selection</a>-->
		  
		  
	 <div class="displayBox" id="searchResult" style="border-top: solid 2px #c6be83; padding-top: 30px">
            <div class="productBx masterProductBx">
			 <?php foreach ($products as $product) { ?>
            	<ul>
                	<li><a href="<?php echo $product['href']; ?>"><div class="pro_hover"></div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                <span class="brandName"><?php echo $product['manufacturer'] ?></span>
                            </div>
							
                          <div class="proRight"><?php echo $product['price']?></div>
                        </div>
                    </li>
					 </ul>
					 <?php } ?>
            </div>
	  <div class="suggestion"><a href="javascript:void(0)" onclick="updateSuggestions()">MORE SUGGESTIONS</a></div>
       </div> 	  
</div>	  
<?php echo $footer; ?>

<script type="text/javascript">
var page = 1;
var limit = 6;
var category_id = '';
var showViewmore = '<?php echo $showViewmore; ?>';
if(showViewmore == 0)
	{
		$('.suggestion').css('display','none');
	}
function updateSuggestions()
{
	page = page + 1
	path = '<?php echo $path ?>';
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'" style="float:left; width:100%"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&page='+page+'&limit='+limit+'&path='+path);
	
}	
</script> 
