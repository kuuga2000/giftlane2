<style type="text/css">
#ageInput > .ui-slider-handle {
    text-decoration: none;
    width: 35px;
    text-align: center;
}
.customeDropdown{
	border-top:none !important; 
	border-left:none !important; 
	border-right:none !important; 
}
</style>

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
                              <div class="banner_sub_ttl">Let us know a bit about this special someone,<br /> and we'll do the rest for  you.</div>
                              </div>
                                	<a href="javascript:void(0)" id="getStartedBtn" class="get_start_btn">&nbsp;</a>
                                    
                              </div>
                            <!--  <div id="hidediv" name="hidediv" style="display: none; position:absolute; left: 30%; top: 30%;" class="hide"></div> -->
                         </li>
                          <li>
                          	<div class="occasionSlide">
                            	<div class="occasionSlideIn">
                            	<div class="relet" id="occasionSelect">
                                <div class="occasionFirst">
                                <div class="left">It is a</div> 
                                <select name="giftEvent" id="giftEvent" class="Items"><option value="">Select Event</option><?php foreach($personalize_events AS $personalize_event) {  ?> <option  value="<?php echo $personalize_event['answer'] ?>"><?php echo $personalize_event['answer']; ?></option> <?php } ?></select>
                                <div class="left">gift. For</div> 
                                <select style="width: 170px" id="giftReceiver" name="giftReceiver" class="Items"><option value="">Select Receipient</option><?php foreach($personalize_receipients AS $personalize_receipient) {  ?> <option value="<?php echo $personalize_receipient['answer'] ?>"><?php echo $personalize_receipient['answer']; ?></option> <?php } ?></select>
                                </div>
                                <div class="occasionSecond">
                                <div class="left">Whose personality is rather</div> <select name="personality" id="personality" class="Items"><option value="">Select personality</option><?php foreach($personalize_personality AS $personality) {  ?> <option value="<?php echo $personality['answer'] ?>"><?php echo $personality['answer']; ?></option> <?php } ?></select></div></div>
                                </div>
                          	</div>	
                          </li>
                          <li>
                          	<div class="ageDIv">
                            	<div class="interests_ttl">He / She is a ? </div>
                                <a href="javascript:void(0)" onclick="chooseGender('male')" class="malFemButton">Male</a> <span class="or">- or -</span> <a href="javascript:void(0)" onclick="chooseGender('female')" class="malFemButton">Female</a>
                                <div class="ageborder"></div>
                                <div class="interests_ttl">How Old is He / She</div>
								<div id="ageInput"></div>
                            </div>
                          </li>
						  <li>
						  	<div class="particular_interests" style="height:465px; width:960px ">
								<div class="interests_ttl">Any Particular interests?</div>
                                <ul>
                                  <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[0]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[0]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[1]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[1]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[2]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[2]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[3]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[3]['answer']; ?></div>
                                </li>
                                 <li class="interests_five">
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[4]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[4]['answer']; ?></div>
                                </li>
                                 <li class="interests_six">
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[5]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[5]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[6]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[6]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[7]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[7]['answer']; ?></div>
                                </li>
                                 <li>
                                <img src="catalog/view/theme/my_giftlane/images/<?php echo $personalize_interest[8]['answer']; ?>.png" width="94" height="81" />
                                <div class="personalizeInterest"><?php echo $personalize_interest[8]['answer']; ?></div>
                                </li>
                                
                                </ul>
                                </div>
                        </li>
						  <li>
						  		<div class="agestep_5">
									<div class="interests_ttl">How Tech Savvy is HE / She?</div>
									<div id="techSavy"></div>
									<div class="interests_ttl">What is color of His / Her wardrobe?</div>
									<div id="wardrobeColor"></div>
								</div>
						  </li>
						  <li>
						  		<div class="rating_barr">
                                    <div class="interests_ttl">How is His/ Her creativity level?
                                      <div class="input select rating-a">
                                        <select id="example-a" name="rating">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">10</option>
                                            <option value="22">11</option>
                                            <option value="23">12</option>
                                            <option value="24">13</option>
                                            <option value="25" selected="selected">14</option>
                                            <option value="26">15</option>
                                            <option value="27">16</option>
                                            <option value="28">17</option>
                                            <option value="29">18</option>
                                            <option value="30">19</option>
                                            <option value="31">20</option>
                                            <option value="32">10</option>
                                            <option value="33">11</option>
                                            <option value="34">12</option>
                                            <option value="35">13</option>
                                            <option value="36">14</option>
                                            <option value="37">15</option>
                                            <option value="38">16</option>
                                            <option value="39">17</option>
                                            <option value="40">18</option>
                                            <option value="40">19</option>
                                            <option value="42">20</option>
                                            <option value="43">13</option>
                                            <option value="44">14</option>
                                            <option value="45">15</option>
                                            <option value="46">16</option>
                                            <option value="47">17</option>
                                            <option value="48">18</option>
                                            <option value="49">19</option>
                                            <option value="50">20</option>
                                        </select>
                                     </div>
                                     </div>
								</div>
						  </li>
					  </ul>
					  <div id="missQuestionPopup" style=""></div>
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
var techSavvy = '';
var wardrobeColor = '';
var creativity = '';
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

//----------------- setting the gender variable
function chooseGender(val)
{
	gender = val;
}

//--------------- sending ajax call for earch and loading result below current result
function searchProdcts()
{
	$('#searchResult').append('<div class="wait">&nbsp;<img src="image/loading_big.gif" alt="" /></div>')
	if(page > 1)
	{
		$('#searchResult .productBx').append('<div id="searchDiv_'+page+'"></div>');
		$('#searchResult .productBx #searchDiv_'+page).load('<?php echo $searchUrl?>&event='+myevent+'&receipient='+receipient+'&personality='+personality+'&gender='+gender+'&age='+age+'&interest='+interest+'&techSavvy='+techSavvy+'&wardrobeColor='+wardrobeColor+'&creativity='+creativity+'&page='+page+'&limit='+limit,{}, function(){ $('#searchResult .wait').remove(); });
	}
	else
	{
		$('#searchResult .productBx').load('<?php echo $searchUrl?>&event='+myevent+'&receipient='+receipient+'&personality='+personality+'&gender='+gender+'&age='+age+'&interest='+interest+'&techSavvy='+techSavvy+'&wardrobeColor='+wardrobeColor+'&creativity='+creativity+'&page='+page+'&limit='+limit,{}, function(){ $('#searchResult .wait').remove(); });
	}	
}

//---------- Slider for creativity level 
	$('#example-a').barrating({
		showValues:false,
		showSelectedRating:false,
		onSelect:function(value, text){
			creativity = value;
		}
	});
//--------- End of code for Slider for creativity level 

//---------- Slider for age
	$( "#ageInput" ).slider({
		min: 1,
		max: 100,
		slide: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
				age = slider.value();
			},
		create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
			},
		value: 1
	});  
//------------ End of code for age slider
//------------ Start of slider for tech savy
	$('#techSavy').slider({
		min: 1, 
		max: 100,
		slide: function(e,ui){
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
				techSavvy = slider.value();
			},
	   create: function( e, ui ) {
				var slider = $( this ).data().slider;
				slider.element.find( ".ui-slider-handle" ).text( slider.value() );
			},	
	})
//----------- End of slider for tech savy

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

//------------setting Personalize interest 
$('.personalizeInterest').click(function(event){
	
	$('.personalizeInterest').removeClass('interestActive');
	if($(this).html() != interest)
	{
		interest = $(this).html();
		$(this).addClass('interestActive');
	}
	else
	{
		interest = ''
	}
})

//------------------- Main outer slider for personalize section
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	slideshowSpeed: 10000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
	animationSpeed: 1000,    
	controlNav: true,
	directionNav:true,
	randomize: false,
	pauseOnHover: true, 
	slideshow: false,  
	startAt: 0,   
	start:function(slider){
		$('#getStartedBtn').click(function(event){
			event.preventDefault();
			slider.flexAnimate(slider.getTarget("next"));
		});
	},
	after: function(slider) {
		page = 1;
		myevent = $('#giftEvent').val();
		receipient = $('#giftReceiver').val();
		personality = $('#personality').val();	
		searchProdcts()
	  }
  });
  
 
  
  
});
$(document).ready(function() {
	$('#giftEvent').selectbox({classHolder:'sbHolder customeEvents'})
	$('#giftReceiver').selectbox({classHolder:'sbHolder customeReceiver'})
	$('#personality').selectbox({classHolder:'sbHolder customePersonality'})
	 //$('.Items').selectbox();
     $('.selectbox').addClass('customeDropdown');
     $('#relet').addClass('occasionSelect');
  /*$('#giftReceiver').selectbox();
  $('#personality').selectbox();*/
	})
</script>