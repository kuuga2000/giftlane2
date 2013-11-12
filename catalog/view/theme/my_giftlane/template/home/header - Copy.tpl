<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>

<!--<link rel="stylesheet" type="text/css" href="catalog/view/theme/my_giftlane/stylesheet/stylesheet.css" />-->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.icheck.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.selectbox-0.5.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.placeholder-1.1.9.js"></script>

<link href="catalog/view/theme/my_giftlane/stylesheet/style.css" rel="stylesheet" type="text/css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>


<!-- JS and css for home page personalize gift slider integrated in giftlane/personalize/personalize.tpl added by gaurav on 01-07-2013-->
<!-- help doc: http://www.woothemes.com/flexslider/ -->
<link href="catalog/view/theme/my_giftlane/stylesheet/flexslider.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/jquery/jquery.flexslider.js" type="text/javascript"></script>
<!-- End of js and css for image slider-->	

<link href="catalog/view/theme/my_giftlane/stylesheet/jquery.selectbox.css" rel="stylesheet" type="text/css" media="screen">


<!---Slider js -->
<script type="text/javascript" src="catalog/view/javascript/bjqs-1.3.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/libs/jquery.secret-source.min.js"></script>
<link href="catalog/view/theme/my_giftlane/stylesheet/bjqs.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/my_giftlane/stylesheet/demo1.css" rel="stylesheet" type="text/css" />

<!-- <script type="text/javascript" src="catalog/view/javascript/shCore.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/shBrushXml.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/shBrushJScript.js"></script>
  

  <script src="catalog/view/javascript/jquery.easing.js"></script>
  <script src="catalog/view/javascript/jquery.mousewheel.js"></script>
  <script defer src="catalog/view/javascript/demo.js"></script>
  
  <link href="catalog/view/theme/my_giftlane/stylesheet/shCore.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/my_giftlane/stylesheet/shThemeDefault.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" href="catalog/view/theme/my_giftlane/stylesheet/demo.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="catalog/view/theme/my_giftlane/stylesheet/flexslider.css" type="text/css" media="screen" />
	
	
  <script src="catalog/view/javascript/modernizr.js"></script>
    <script defer src="catalog/view/javascript/jquery.flexslider.js"></script>-->
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
</head>
<body>  
<link href="catalog/view/theme/my_giftlane/stylesheet/bar-rating.css" rel="stylesheet" type="text/css" media="screen" />
<script src="catalog/view/javascript/jquery/jquery.barrating.min.js" ></script>

<div class="wrapper"  style="width:100% !important;">
<div class="header" style="width:100% !important;">
		<div class="topNav" style="width:100%!important;">
		<?php if(isset($logged)) { ?>
          <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $firstname.' '.$lastname ?></a></li>
          <li><a href="<?php echo $logout; ?>">LOGOUT</a></li>
          </ul>
		<?php  } else { ?>
		<ul>
            <li><a href="javascript:void(0)" onclick="$('#loginDiv').toggle()">Login</a></li>
            <li><a href="<?php echo $signup; ?>">Sign Up</a></li>
          </ul>
		<?php } ?>  
          </div>
		  
            <!--<div class="topHead">
                <h1>SCENTS EXTRAORDINAIRE</h1>
            </div>-->
            <!--Top Slider -->
            <!--<div class="topBanner">
       	    	<img src="image/topscroll.jpg" width="960" height="425" alt="scroll" />
            </div>-->
			<div class="topBanner" style="height:600px; margin-top: 20px;">
			
				<div class="topslider" style="height:465px; width:960px; display:none;">
					  <ul class="slides">
					  
					     <li> 
                     		
                         </li>
						 
						 
						 </ul></div>
			</div>

            <div class="logo" style="z-index:999; position:relative;"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" width="389" height="95" alt="" /></a>
    	</div>
		
		 <?php $cnt = 0; 
		 
		 foreach ($top_banners as $banner) { ?>
		 <input type="hidden" value="<?php echo $banner['top_image']; ?>" id="topbaner_<?php echo $cnt; ?>" name="topbaner_<?php echo $cnt; ?>"/>
		 <?php $cnt++; } ?>
    </div>

	<?php if($this->request->server['QUERY_STRING'] != 'route=account/login') { ?>
	<div class="loginBx"  id="loginDiv" style="display:none; position: absolute;top: 50px;left:46.8%;z-index: 10000;">
		<?php echo $login; ?>
	</div>
	<?php } ?> 
<script type="text/javascript">	
$(window).load(function() {

  $('.topslider').flexslider({
	animation: "slide",
	slideshowSpeed: 10000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
	animationSpeed: 1000,   
	animationLoop: true,  
	controlNav: true,
	directionNav:true,
	randomize: false,
	slideshow: false,  
	startAt: 0,
	start:function(slider){
		currentSlide = slider.currentSlide
		var bgUrl = $('#topbaner_0').val();
		//alert(bgUrl);
		$('#intro').css('background','url('+bgUrl+') 50% 104px no-repeat fixed' );	
	}
	});
	});
</script>
<div id="notification"></div>
