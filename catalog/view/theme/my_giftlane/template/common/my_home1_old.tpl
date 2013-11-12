<!--FOr ParallaxEffect-->
<link href="catalog/view/theme/my_giftlane/stylesheet/parallax.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.localscroll-1.2.7-min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.scrollTo-1.4.2-min.js"></script>
<!--END FOr ParallaxEffect-->
<ul id="nav">
		<li><a href="#intro" title="Next Section"><img src="catalog/view/theme/my_giftlane/images/dot.png" alt="Link" /></a></li>
	    <li><a href="#second" title="Next Section"><img src="catalog/view/theme/my_giftlane/images/dot.png" alt="Link" /></a></li>
	    <li><a href="#third" title="Next Section"><img src="catalog/view/theme/my_giftlane/images/dot.png" alt="Link" /></a></li>
	    <li><a href="#fifth" title="Next Section"><img src="catalog/view/theme/my_giftlane/images/dot.png" alt="Link" /></a></li>
</ul>
            
<?php 
if($this->request->server['QUERY_STRING'] == '') 
{
?>
<div id="intro">
	<?php echo $header; ?>
	</div>
	
<?php
}
else
{
	echo $header; ?>
<?php
}
?>
<!--Contionor start -->
    <div class="container">
		<div id="second">
    	<div class="way" style="margin-top: 42px !important">
        	<ul>
            	<li><img src="image/lookout.png" width="180" height="180" alt="look out" />
                	<h1 class="wayTitle">Look Out</h1>
                    <span class="wayText">Search for the best gift based on our list of reccomendations.</span>
                </li>
                <li><img src="image/bowon.png" width="180" height="180" alt="PUT A BOW ON IT" />
                	<h1 class="wayTitle">PUT A BOW ON IT</h1>
                    <span class="wayText">We'll wrap your special gift nicely, you can even customise the wrapping!</span>
                </li>
                <li><img src="image/ontheway.png" width="180" height="180" alt="ON ITS WAY" />
                	<h1 class="wayTitle">ON ITS WAY</h1>
                    <span class="wayText">We'll deliver it and make sure it arrives on time for the surprise.</span>
                </li>
            </ul>
        </div>
        <!--Submen -->
<div class="subMenu">
	<ul>
		<li><a href="<?php echo $personalize_link; ?>">PERSONALISE</a></li>
	    <li><a href="<?php echo $category; ?>">CATEGORIES</a></li>
	    <li><a href="<?php echo $justIn; ?>">JUST IN</a></li>
	</ul>
</div>
<?php //echo $personalize; ?>
<link href="catalog/view/theme/my_giftlane/stylesheet/bar-rating.css" rel="stylesheet" type="text/css" media="screen" />
<script src="catalog/view/javascript/jquery/jquery.barrating.min.js" ></script>
<div id="banner-slide" class="middSlider"> 
  <!-- start Basic Jquery Slider -->
  	<div class="flexslider" style="height:465px; width:960px">
    <ul class="slides">
      <li>
        <div  name="showdiv" id="personaliseStep_1" class="show personalise_Banner">
          <div class="banner_desc">
            <div class="banner_ttl">Let's Personalise Your Gift.</div>
            <div class="banner_sub_ttl">Let us know a bit about this special someone,<br />
              and we'll do the rest for  you.</div>
          </div>
          <a href="javascript:void(0)" id="getStartedBtn" class="get_start_btn">&nbsp;</a> </div>
        <!--  <div id="hidediv" name="hidediv" style="display: none; position:absolute; left: 30%; top: 30%;" class="hide"></div> --> 	
      </li>
      <li><div  name="showdiv" id="personaliseStep_1" class="show personalise_Banner">
          <div class="banner_desc">
            <div class="banner_ttl">Let's Personalise Your Gift.</div>
            <div class="banner_sub_ttl">Let us know a bit about this special someone,<br />
              and we'll do the rest for  you.</div>
          </div>
          <a href="javascript:void(0)" id="getStartedBtn1" class="get_start_btn">&nbsp;</a> </div></li>
    </ul></div>
	
	
	
	
	</div>
    
    </div>
<script class="secret-source">
var myevent = '';
var receipient = '';
var personality= '';
var gender = '';
var age = '';
var interest = '';
var techSavvy = '';
var wardrobeColor = '';
var creativity = '';
var backPage = 0;

//----------- Start if slider for wardrobe color	
	$('#wardrobeColor').slider({
		min:1, 
		max:100,
		slide: function(e,ui){
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
				wardrobeColor = slider.value();
			},
	   create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
			},	
	})
//------------ End of slider for warddrobe color



//------------------- Main outer slider for personalize section
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	slideshowSpeed: 10000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
	animationSpeed: 1000,   
	animationLoop: true,  
	controlNav: true,
	directionNav:true,
	randomize: false,
	slideshow: true,  
	startAt: 0, 
	start:function(slider){
		$('#getStartedBtn').click(function(event){
			//alert("<?php $this->request->server['QUERY_STRING']?>");
			window.location.href='<?php echo $getStarted;?>';		
		});				
	},
	before: function(slider){
		page = 1;
		
		if(slider.direction == 'prev')
		{
			backPage = 1;
		}
		
		backPage = 0;
	},
	after: function(slider) {
		//console.log(slider.currentSlide)
		$('#currentStep').html(slider.currentSlide + 1);
		
	}
		
  });
  
	$('#nav').localScroll(1500);
	
	//.parallax(xPosition, speedFactor, outerHeight) options:
	//xPosition - Horizontal position of the element
	//inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
	//outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
	$('#intro').parallax("50%", 0);
	$('#second').parallax("50%", 0.1);
	$('.bg').parallax("50%", 0.4);
	$('#third').parallax("50%", 0.3);
	
	$('#getStartedBtn1').click(function(event){
			//alert("<?php $this->request->server['QUERY_STRING']?>");
			window.location.href='<?php echo $getStarted;?>';		
		});
});


function clickimg()
	{
		//alert('hi');
	 var data = {submitId:0};
			jQuery.ajax({
					  url: 'index.php?route=common/home/searchquestion',
					  type: "POST",	
					  dataType: "html",
					  data:data,
					  async: false,	
					  success: function(data) 
					  			{
								 	 // $('.show').hide();
								     $('.show').css("zIndex",'-1');
									 $('.hide').css("zIndex",'999999');
									 $('.hide').css("display",'none');
									 $('.hide').show();
									 $('.hide').html(data);	
									 
								}
				});					
	}	

</script>
    <!-- 
      The following script is not related to basic jQuery Slider 
      It's used to create the code snippets in the demo.
      https://github.com/maelstrom/SecretSource
    -->
    <script src="catalog/view/javascript/libs/jquery.secret-source.min.js"></script>

    
      <!-- End outer wrapper -->
      
      <!-- attach the plug-in to the slider parent element and adjust the settings as required -->
     <div id="third">
     <a name="just_in"></a> 
	 <?php if ($products) { ?>   
  <div class="displayBox" id="searchResult">
 		
        	<span class="title1" id="justInProductTitle">JUST IN</span>
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
    <?php } ?>
   <?php if (!$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
<?php } ?>
</div>
  <?php //echo $content_bottom; ?></div>
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
	oldProducts = '<?php echo $oldProducts ?>';
	$('.displayBox .productBx').append('<div id="searchDiv_'+page+'" style="float:left; width:100%"></div>');
	$('.displayBox .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&page='+page+'&limit='+limit+'&path='+path+'&oldProducts='+oldProducts);
	
}	
</script> 
<?php echo $footer; ?>