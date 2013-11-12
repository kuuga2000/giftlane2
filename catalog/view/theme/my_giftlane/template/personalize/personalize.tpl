<link href="catalog/view/theme/my_giftlane/stylesheet/bar-rating.css" rel="stylesheet" type="text/css" media="screen" />
<script src="catalog/view/javascript/jquery/jquery.barrating.min.js" ></script>
<div id="banner-slide" class="middSlider"> 
  <!-- start Basic Jquery Slider -->
  <div class="flexslider" style="height:465px; width:960px">
    <ul class="slides">
     <!-- <li>
        <div  name="showdiv" id="personaliseStep_1" class="show personalise_Banner">
          <div class="banner_desc">
            <div class="banner_ttl">Let's Personalise Your Gift.</div>
            <div class="banner_sub_ttl">Let us know a bit about this special someone,<br />
              and we'll do the rest for  you.</div>
          </div>
          <a href="javascript:void(0)" id="getStartedBtn" class="get_start_btn">&nbsp;</a> </div>
        <!--  <div id="hidediv" name="hidediv" style="display: none; position:absolute; left: 30%; top: 30%;" class="hide"></div> --> 
      <!-- </li>-->
      <li>
        <div class="occasionSlide">
          <div class="occasionSlideIn">
            <div class="relet" id="occasionSelect">
              <div class="occasionFirst">
                <div class="left">It is a</div>
                <select name="giftEvent" id="giftEvent" class="Items">
                  <option value="">Events</option>
                  <?php foreach($personalize_events AS $personalize_event) {  ?>
                  <option  value="<?php echo $personalize_event['answer'] ?>"><?php echo $personalize_event['answer']; ?></option>
                  <?php } ?>
                </select>
                <div class="left">gift. For</div>
                <select style="width: 170px" id="giftReceiver" name="giftReceiver" class="Items">
                  <option value="">Receipients</option>
                  <?php foreach($personalize_receipients AS $personalize_receipient) {  ?>
                  <option value="<?php echo $personalize_receipient['answer'] ?>"><?php echo $personalize_receipient['answer']; ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="occasionSecond">
                <div class="left">Whose personality is rather</div>
                <select name="personality" id="personality" class="Items">
                  <option value="">Personalities</option>
                  <?php foreach($personalize_personality AS $personality) {  ?>
                  <option value="<?php echo $personality['answer'] ?>"><?php echo $personality['answer']; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li>
        <div class="ageDIv">
          <div class="interests_ttl">He / She is a ? </div>
          <a href="javascript:void(0)" id="male" onclick="chooseGender('male')" class="malFemButton">Male</a> <span class="or">- or -</span> <a href="javascript:void(0)" id="female" onclick="chooseGender('female')" class="malFemButton">Female</a>
          <div class="ageborder"></div>
          <div class="interests_ttl">How Old is <span class="selectedGender">He / She</span>?</div>
          <div id="ageInput"></div>
        </div>
      </li>
      <li>
        <div class="particular_interests" style="height:465px; width:960px ">
          <div class="interests_ttl">Any Particular interests?</div>
          <ul>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[0]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[0]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[0]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[1]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[1]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[1]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[2]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[2]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[2]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[3]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[3]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[3]['answer']; ?></span></div>
            </li>
            <li class="interests_five">
              <div class="personalizeInterest" id="<?php echo $personalize_interest[4]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[4]['answer']; ?>.png" width="94" height="81" /><span> <?php echo $personalize_interest[4]['answer']; ?></span></div>
            </li>
            <li class="interests_six">
              <div class="personalizeInterest" id="<?php echo $personalize_interest[5]['answer']; ?>"> <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[5]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[5]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[6]['answer']; ?>"> <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[6]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[6]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[7]['answer']; ?>"><img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[7]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[7]['answer']; ?></span></div>
            </li>
            <li>
              <div class="personalizeInterest" id="<?php echo $personalize_interest[8]['answer']; ?>"> <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[8]['answer']; ?>.png" width="94" height="81" /> <span><?php echo $personalize_interest[8]['answer']; ?></span></div>
            </li>
          </ul>
        </div>
      </li>
      <li>
        <div class="agestep_5">
          <div class="interests_ttl">How Tech Savvy is <span class="selectedGender">He / She</span>?</div>
          <div style="float:left;"><img src="catalog/view/theme/my_giftlane/images/notatall.jpg" width="100" height="100" /></div>
          <div id="techSavy" style="margin:50px 0 0 0;"></div>
          <div style="float:left;"><img src="catalog/view/theme/my_giftlane/images/very.jpg" width="100" height="100" /></div>
          <div class="interests_ttl">What is the color of <span class="selectedGenderPlural">His / Her</span> wardrobe?</div>
          <div style="float:left;"><img src="catalog/view/theme/my_giftlane/images/plain.jpg" width="100" height="100" /></div>
          <div id="wardrobeColor" style="margin:50px 0 0 0;"></div>
          <div style="float:left;"><img src="catalog/view/theme/my_giftlane/images/colorfull.jpg" width="100" height="100" /></div>
        </div>
      </li>
      <li>
        <div class="rating_barr">
          <div class="interests_ttl">How is <span class="selectedGenderPlural">His/ Her</span> creativity level?
            <div class="input select rating-a">
              <select id="example-a" name="rating">
                <option value="2">1</option>
                <option value="4">2</option>
                <option value="6">3</option>
                <option value="8">4</option>
                <option value="10">5</option>
                <option value="12">6</option>
                <option value="14">7</option>
                <option value="16">8</option>
                <option value="18">9</option>
                <option value="20">10</option>
                <option value="22">11</option>
                <option value="24">12</option>
                <option value="26">13</option>
                <option value="28">14</option>
                <option value="30">15</option>
                <option value="32">16</option>
                <option value="34">17</option>
                <option value="36">18</option>
                <option value="38">19</option>
                <option value="40">20</option>
                <option value="42">21</option>
                <option value="44">22</option>
                <option value="46">23</option>
                <option value="48">24</option>
                <option value="50" selected="selected">25</option>
                <option value="52">26</option>
                <option value="54">27</option>
                <option value="56">28</option>
                <option value="58">29</option>
                <option value="60">30</option>
                <option value="62">31</option>
                <option value="64">32</option>
                <option value="66">33</option>
                <option value="68">34</option>
                <option value="70">35</option>
                <option value="72">36</option>
                <option value="74">37</option>
                <option value="76">38</option>
                <option value="78">39</option>
                <option value="80">40</option>
                <option value="82">41</option>
                <option value="84">42</option>
                <option value="86">43</option>
                <option value="88">44</option>
                <option value="90">45</option>
                <option value="92">46</option>
                <option value="94">47</option>
                <option value="96">48</option>
                <option value="98">49</option>
				<option value="100">50</option>
              </select>
            </div>
          </div>
        </div>
      </li>
      <li>
        <div class="ThankYouSlide"> <span>That is All, Thank You.</span> We have curated some gift selection for you to<br />
          choose<!--, nullam in dui mauris. vivamus-->.<br />
          <a class="view_selection_btn" id="" href="javascript:void(0)" onclick="javascript:scrollToElement('#result');">View Selection</a>
          </div>
      </li>
    </ul>
    <div id="missQuestionPopup">
      <div class="missQuestion">
        <div class="missQuestion_ttl">Oops, You Missed a Question.</div>
        <a href="javascript:void(0)" id="goBack" onclick="" class="malFemButton">Go Back</a> <span class="or">- or -</span> <a href="javascript:void(0)" onclick="" class="malFemButton" id="skipThisStep">Skip This Step</a> </div>
    </div>
  </div>
</div>

<!--<div id="searchResult">This will display display search resultThis will display search resultThis will display search result</div>
					<div style="clear: both"></div>	    --> 
<script class="secret-source">
var myevent = '';
var receipient = '';
var personality= '';
var gender = '';
var age = '';
var interest = '';
var interestArr = new Array();
var techSavvy = '';
var wardrobeColor = '';
var creativity = '';
var backPage = 0;
//------------------- displaying 6 elements
var page = 1;
var limit = 3;
var showViewMore = 1

//------------------ for ajax pagination
function updateSearchPage()
{
	page = page+1;
	searchProdcts();
}

//************* slide to result list function*******************/
function scrollToElement( target ) {
    var topoffset = 30;
    var speed = 800;
    var destination = jQuery( target ).offset().top - topoffset;
    jQuery( 'html:not(:animated),body:not(:animated)' ).animate( { scrollTop: destination}, speed, function() {
       // window.location.hash = target;
    });
    return false;
}

//----------------- setting the gender variable
function chooseGender(val)
{
	gender = val;
	if(gender == 'male')
	{
		$('.selectedGender').html('He');
		$('.selectedGenderPlural').html('His');
	}
	else if(gender == 'female')
	{
		$('.selectedGender').html('She');
		$('.selectedGenderPlural').html('Her');
	}
	else
	{
		$('.selectedGender').html('He / She');
		$('.selectedGenderPlural').html('His / Her');
	}
	
	$('.malFemButton').removeClass('selectActive');
	$('#'+val).addClass('selectActive')
	page = 1;
	searchProdcts()
}

//--------------- sending ajax call for earch and loading result below current result
function searchProdcts()
{
	$('#justInProductTitle').html('Search results');
	
	
	if(page > 1)
	{
		$('.suggestion').before('<div class="wait">&nbsp;<img src="image/loading_per.gif" alt="" /></div>')
		$('#searchResult .productBx').append('<div id="searchDiv_'+page+'"></div>');
		$('#searchResult .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&event='+encodeURI(myevent)+'&receipient='+encodeURI(receipient)+'&personality='+encodeURI(personality)+'&gender='+encodeURI(gender)+'&age='+encodeURI(age)+'&interest='+encodeURI(interest)+'&techSavvy='+encodeURI(techSavvy)+'&wardrobeColor='+encodeURI(wardrobeColor)+'&creativity='+encodeURI(creativity)+'&page='+page+'&limit='+limit,{}, function(){ $('#searchResult .wait').remove(); });
	}
	else
	{
		$('#searchResult').append('<div class="wait" style = "position: absolute">&nbsp;<img src="image/loading_per.gif" alt="" /></div>')
		$('#searchResult .productBx').load('<?php echo $searchUrl?>&event='+encodeURI(myevent)+'&receipient='+encodeURI(receipient)+'&personality='+encodeURI(personality)+'&gender='+encodeURI(gender)+'&age='+encodeURI(age)+'&interest='+encodeURI(interest)+'&techSavvy='+encodeURI(techSavvy)+'&wardrobeColor='+encodeURI(wardrobeColor)+'&creativity='+encodeURI(creativity)+'&page='+page+'&limit='+limit,{}, function(){ $('#searchResult .wait').remove(); });
	}	
}

//---------- Slider for creativity level 
	$('#example-a').barrating({
		showValues:false,
		showSelectedRating:false,
		onSelect:function(value, text){
			creativity = value;
			page = 1;
			searchProdcts()
		}
	});
//--------- End of code for Slider for creativity level 

//---------- Slider for age
	$( "#ageInput" ).slider({
		min: 1,
		max: 100,
		slide: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( ui.value );
			},
		create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
			},
		change: function( e, ui ) { 
				age = ui.value;
				page = 1;
				searchProdcts();
		},	
		value: 50
	});  
//------------ End of code for age slider
//------------ Start of slider for tech savy
	$('#techSavy').slider({
		min: 1, 
		max: 100,
		slide: function(e,ui){
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( '');
				
			},
	   create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( '' );
			},
		change: function( e, ui ) { 
				techSavvy = ui.value;
				page = 1;
				searchProdcts();
		}		
	})
//----------- End of slider for tech savy

//----------- Start if slider for wardrobe color	
	$('#wardrobeColor').slider({
		min:1, 
		max:100,
		slide: function(e,ui){
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( '' );
				
			},
	   create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( '' );
			},	
	   change: function( e, ui ) { 
				wardrobeColor = ui.value;
				page = 1;
				searchProdcts();
		}				
	})
//------------ End of slider for warddrobe color

//------------setting Personalize interest 
$('.personalizeInterest').click(function(event){
	
	//$('.personalizeInterest').removeClass('selectActive');
	//console.log(interest);
	//interestArr = interest.split(',');
	
	exists = 0;
	for(i=0; i<interestArr.length; i++)
	{
		if($(this).context.id == interestArr[i])
		{
			exists = 1;	
			var index = interestArr.indexOf($(this).context.id);
			$(this).removeClass('selectActive');
			interestArr.splice(index, 1);
		}
	}
	if(interestArr.length < 3 && exists == 0)
	{
		interestArr[ parseInt(interestArr.length) ] = $(this).context.id
		$(this).addClass('selectActive');
			interest = interestArr.join(',');
			page = 1;
			searchProdcts();
	}
	else
	{
		if(interestArr.length > 2)
		{
			alert('You can select max 3 interests');
		}
		else
		{
			interest = interestArr.join(',');
			page = 1;
			searchProdcts();
		}
		
	}
})

//------------------- Main outer slider for personalize section
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	slideshowSpeed: 10000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
	animationSpeed: 1000,   
	animationLoop: false,  
	controlNav: true,
	directionNav:true,
	randomize: false,
	slideshow: false,  
	startAt: 0, 
	start:function(slider){
		$('#getStartedBtn').click(function(event){
			//alert("<?php $this->request->server['QUERY_STRING']?>");
			<?php if($this->request->server['QUERY_STRING'] == 'route=common/home' || $this->request->server['QUERY_STRING'] == '') { ?>
			window.location.href='<?php echo $getStarted;?>';
			<?php } else { ?>
			event.preventDefault();
			slider.flexAnimate(slider.getTarget("next"));
			<?php } ?>
		});
		$('#goBack').click(function(event){
			event.preventDefault();
			//slideNumber = parseInt($('#currentSlideNumber').val()) - 1;
			backPage = 1;
			$('#overlay').hide();
			$('#missQuestionPopup').hide();
			slider.flexAnimate(slider.getTarget("previous"));
			
		});
		$('#skipThisStep').click(function(event){
			event.preventDefault();
			//slideNumber = parseInt($('#currentSlideNumber').val()) - 1;
			$('#overlay').hide();
			$('#missQuestionPopup').hide();
			backPage = 0;
		});
		
		$('#navSkipStep').click(function(event){
			event.preventDefault();
			//slideNumber = parseInt($('#currentSlideNumber').val()) - 1;
				backPage = 1;
			slider.flexAnimate(slider.getTarget("next"));
		
		});
		$('#totalSteps').html(slider.count);
	},
	before: function(slider){
		page = 1;
		$('#overlay').hide();
		$('#missQuestionPopup').hide();
		
		if(slider.direction == 'prev')
		{
			backPage = 1;
		}
		if( backPage == 0 && slider.currentSlide == 1 && myevent == '' && receipient == '' && personality == '' )
		{
			$('#overlay').show();
			$('#missQuestionPopup').show();
		}
		if(backPage == 0 &&  slider.currentSlide == 2 && gender == '' && age == '')
		{
				$('#overlay').show();
			$('#missQuestionPopup').show();
		}
		
		if(backPage == 0 && slider.currentSlide == 3 && interest == '' )
		{
			$('#overlay').show();
			$('#missQuestionPopup').show();
		}
		
		if(backPage == 0 && slider.currentSlide == 4 && techSavvy == '' && wardrobeColor == '' )
		{
			$('#overlay').show();
			$('#missQuestionPopup').show();
		}
		
		if(backPage == 0 && slider.currentSlide == 5 && creativity == '' )
		{
			$('#overlay').show();
			$('#missQuestionPopup').show();
		}
		backPage = 0;
		searchProdcts();
	},
	after: function(slider) {
		$('#currentStep').html(slider.currentSlide + 1);
		
	}
		
  });
  
});

/*var myevent = '';
var receipient = '';
var personality= '';
var gender = '';
var age = '';
var interest = '';
var techSavvy = '';
var wardrobeColor = '';
var creativity = '';*/

$(document).ready(function() {
	$('#giftEvent').selectbox({
		classHolder:'customeEvents',
		onChange: function (val, inst){
			myevent = val;
			page = 1;
			searchProdcts();
		}	
	})
	$('.customeEvents').addClass('sbHolder');
	
	$('#giftReceiver').selectbox({
		classHolder:'customeReceiver',
		onChange: function (val, inst){
			receipient = val;
			page = 1;
			searchProdcts();
		}	
	})
	$('.customeReceiver').addClass('sbHolder');
	
	$('#personality').selectbox({
		classHolder:'customePersonality',
		onChange: function (val, inst){
			personality = val;
			page = 1;
			searchProdcts();
		}	
	})
	$('.customePersonality').addClass('sbHolder');
	 //$('.Items').selectbox();
	 
     
     $('#relet').addClass('occasionSelect');
  /*$('#giftReceiver').selectbox();
  $('#personality').selectbox();*/
	})
</script>
