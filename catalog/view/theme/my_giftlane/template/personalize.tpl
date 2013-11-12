<script type="text/javascript">

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
										/* $('.show').css("zIndex",'-1');
										 $('.hide').css("zIndex",'999999');
										 $('.hide').css("display",'none');
										 $('.hide').show();*/
		
	}		
			</script>	
<?php echo $header; ?>
<!--Contionor start -->
    <div class="container">
    	<div class="way">
        	<ul>
            	<li><a href="#"><img src="image/lookout.png" width="180" height="180" alt="look out" /></a>
                	<h1 class="wayTitle"><a href="#">Look Out</a></h1>
                    <span class="wayText">Search for the best gift based on our list of reccomendations.</span>
                </li>
                <li><a href="#"><img src="image/bowon.png" width="180" height="180" alt="PUT A BOW ON IT" /></a>
                	<h1 class="wayTitle"><a href="#">PUT A BOW ON IT</a></h1>
                    <span class="wayText">We'll wrap your special gift nicely, you can even customise the wrapping!</span>
                </li>
                <li><a href="#"><img src="image/ontheway.png" width="180" height="180" alt="ON ITS WAY" /></a>
                	<h1 class="wayTitle"><a href="#">ON ITS WAY</a></h1>
                    <span class="wayText">We'll deliver it and make sure it arrives on time for the surprise.</span>
                </li>
            </ul>
        </div>
        
        <!--Submen -->
      
	  
<div class="subMenu"><ul>
            	<li><a href="#">PERSONALISE</a></li>
                <li><a href="#">CATEGORIES</a></li>
                <li><a href="#just_in">JUST IN</a></li>
            </ul>
        </div>
		<!--<?php if ($categories) { ?>
			<div id="menu">	
			  <ul>
			    <?php foreach ($categories as $category) { ?>
			    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
			     <?php if ($category['children']) { ?>
			      <div>
			        <?php for ($i = 0; $i < count($category['children']);) { ?>
			        <ul>
			          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
			          <?php for (; $i < $j; $i++) { ?>
			          <?php if (isset($category['children'][$i])) { ?>
			          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
			          <?php } ?>
			          <?php } ?>
			        </ul>
			        <?php } ?>
			      </div>
			      <?php } ?>
			    </li>
			    <?php } ?>
			  </ul>
			</div>
			<?php } ?>-->
			 
        <!--Midd Slider -->
		
    
     <!--Midd Slider -->
       <!-- <div class="middSlider">
   	    	<img src="image/slider2.jpg" width="960" height="465" alt="slider" />
        </div>-->
        

    <!-- 
      The following script is not related to basic jQuery Slider 
      It's used to create the code snippets in the demo.
      https://github.com/maelstrom/SecretSource
    -->
    <script src="catalog/view/javascript/libs/jquery.secret-source.min.js"></script>

    <script>
    jQuery(function($) {

       /* $('.secret-source').secretSource({
            includeTag: false
        });*/

    });
    </script>
      <!-- End outer wrapper -->
      
      <!-- attach the plug-in to the slider parent element and adjust the settings as required -->
     <a name="just_in"></a>  
  <div class="displayBox">
 
        	<span class="title1">JUST IN</span>
            <div class="productBx">
            	<ul>
                	<li><a href="#"><img src="image/pro1.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
              <li><a href="#"><img src="image/green.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
              <li><a href="#"><img src="image/green.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
              <li><a href="#"><img src="image/green.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
              <li><a href="#"><img src="image/green.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
              <li><a href="#"><img src="image/green.jpg" width="300" height="240" alt="pro" /></a>
                    	<div class="proDetial">
                        	<div class="proLeft">
                           		<a href="#">ITEM NAME ITEM NAME</a>
                                <span class="brandName"><a href="#">Brand Name</a></span>
                            </div>
                          <div class="proRight">Price</div>
                        </div>
                    </li>
                </ul>
                <div class="suggestion"><a href="#">MORE SUGGESTIONS</a></div>
      </div>
        </div>
    </div>
</div>
  <?php //echo $content_bottom; ?></div>
<script type="text/javascript"></script> 
<?php echo $footer; ?>