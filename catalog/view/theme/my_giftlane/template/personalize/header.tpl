<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $this->document->setTitle,$this->config->get("config_name"); ?></title>

<?php if($this->document->setDescription){?>
<meta name="description" content="<?php echo $this->document->setDescription;?>">
<?php } ?>
<?php if($this->document->setKeywords){?>
<meta name="keywords" content="<?php echo $this->document->setKeywords; ?>" />
<?php } ?>

<!--<link rel="stylesheet" type="text/css" href="catalog/view/theme/my_giftlane/stylesheet/stylesheet.css" />-->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.validate.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.icheck.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.selectbox-0.5.js"></script>
<link href="catalog/view/theme/my_giftlane/stylesheet/jquery.selectbox.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.placeholder-1.1.9.js"></script>
 <!--<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.js"></script>-->

<link href="catalog/view/theme/my_giftlane/stylesheet/style.css" rel="stylesheet" type="text/css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'/>

<!-- JS and css for home page personalize gift slider integrated in giftlane/personalize/personalize.tpl added by gaurav on 01-07-2013-->
<!-- help doc: http://www.woothemes.com/flexslider/ -->
<link href="catalog/view/theme/my_giftlane/stylesheet/flexslider.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/jquery/jquery.flexslider.js" type="text/javascript"></script>
<!-- End of js and css for image slider-->	



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
<script language="javascript">
$(document).ready(function() {
	$("#searchtext").keypress(function (event) {
	    if (event.keyCode == 13) {
				var searchValue = document.searchfrm.searchtext.value;
				var actionUrl="index.php?route=product/search&search="+searchValue;
				document.searchfrm.action=actionUrl;
				document.searchfrm.submit();				
			  }
	});
	$("#searchLink").on("click", function()
	{
		var searchValue = document.searchfrm.searchtext.value;
		if(searchValue=='Search')
		{ 
			searchValue='';
		}
		window.location.href="index.php?route=product/search&search="+searchValue;
	});
	
});
function showSearchBox()
	{
		
		$('#headerSearchBox').show();
	}

</script>
<?php if ($stores) { ?>

<?php } ?>

</head>
<body>
<div class="search_header_wrapper" id="headerSearchBox">
    <div class="search_header">
        <div class="search_box" id="searchclass">
        <form name="searchfrm" id="searchfrm" method="POST" action="">
            <input name="searchtext" id="searchtext" type="text" value="Search" onblur="if (this.value == '') {this.value = 'Search';}"
         onfocus="if (this.value == 'Search') {this.value = '';}">
            <a name="searchLink" id="searchLink" title="Search"><div class="search_img"></div></a>
            <a name="" id="" title="Close"><div class="close_search"></div></a>
            </form>
        </div>
    </div>	
</div>
<div class="wrapper">
<div class="header2">
    <div class="logo_inner"><a href="<?php echo $home; ?>"><img width="389" height="95" alt="logo" src="image/logohome.png"></a></div>
	<?php if(isset($logged)) { ?>
    <div class="topNav_inner">
        <ul>
        <li><a href="javascript:showSearchBox();"><img src="image/searchicon.png" width="18" height="17" alt="search" /></a></li>
        <li><?php echo $cart; ?></li>
        <li><a href="<?php echo $account; ?>"><?php echo $firstname.' '.$lastname ?></a></li>
        <li><a href="<?php echo $logout; ?>">LOGOUT</a></li>
      </ul>
      </div>
	  <?php }else
	  { ?> 
	  <div class="topNav_inner">
        <ul>
        <li><a href="javascript:showSearchBox();"><img src="image/searchicon.png" width="18" height="17" alt="search" /></a></li>
        <li><?php echo $cart; ?></li>
        <li><a href="javascript:void(0)" onclick="$('#loginDiv').toggle()">LOGIN</a></li>
		<li><a href="<?php echo $signup; ?>">SIGN UP</a></li>
      </ul>
      </div>
	  <?php if($this->request->server['QUERY_STRING'] != 'route=account/login') { ?>
	<div class="loginBx"  id="loginDiv" style="display:none; position: absolute;top: 35px;right: 5%;z-index: 10000;">
		<?php echo $login; ?>
	</div>
	<?php } ?>  
    <?php } ?>
	<!--Submen -->
    <div class="subMenu" style="height: 62px">
        <ul>
        <li><a href="<?php echo $home; ?>">HOME</a></li>
        <li><a href="<?php echo $personalize; ?>">PERSONALISE</a></li>
        <li><a href="<?php echo $category;?>">CATEGORIES</a></li>
        <li><a href="<?php echo $justIn;?>">JUST IN</a></li>
      </ul>
      </div>
	 
	 <div class="personalise_step">
	<div class="step_text">PERSONALISE<!-- > STEP <span id="currentStep">1</span> OF <span id="totalSteps"></span> --></div>
	<div class="skip_step"><a href="javascript:void(0)" id="navSkipStep">SKIP THIS STEP</a> </div>
  	</div> 
    <!--Info Box -->
	<?php if($this->request->server['QUERY_STRING'] != 'route=account/login') { ?>
	<div class="loginBx"  id="loginDiv" style="display:none; position: absolute;top: 43px;right: 5%;z-index: 1000;">
		<?php echo $login; ?>
	</div>
	<?php } ?>   
	
  </div>
<div id="notification"></div>