<?php echo $header; ?>

 <script type="text/javascript">
	$(document).ready(function() {
		$('.Items').selectbox();
	});
	</script>
    
  <script type="text/javascript">
            $(document).ready(function(){
              $('.skin-minimal input').iCheck({
                checkboxClass: 'icheckbox_minimal',
                radioClass: 'iradio_minimal',
                increaseArea: '20%'
              });
            });
  </script>
<div class="header2">
   	 
        <!--Categories -->
        <div class="categories">
		<?php if (count($categories)) {
			$cat_cnt=1;
			 ?>
        	<ul class="subCata">
            	 <?php foreach ($categories as $category) { 
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
				  	<li><a href="<?php ?>">All</a></li>
				 <?php  break;}	
				   
				   $subcat_cnt++;}?>
				  </ul></div>
                     </div>
				  </li>
			      <?php }
				  else
				  { ?>
				  	<li><a href="#">All</a></li>
				 <?php  break;}				  
				  $cat_cnt++; } ?>                           
            </ul>
			<?php 	} ?>
			 
        </div>
      
        
    </div>
    
    <!--Contionor start -->
    <div class="container">   	
     
     <!--Display Box -->
    <div class="displayBox">
        	<span class="brk"></span>
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
