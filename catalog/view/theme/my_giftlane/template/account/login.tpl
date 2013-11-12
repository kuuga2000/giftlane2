<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($warning) { ?>
<div class="warning" style="clear: both"><?php echo $warning; ?></div>
<?php } ?>

<style>
 /*match placeholder/watermark padding to border+padding for input element*/
label.placeholder {
cursor: text;
padding: 4px 4px 4px 4px;
color: #999999;
}
/*
.error{
	color:#F00 !important;
}

/* html5 placeholder support */
/*
.fieldRow input::-webkit-input-placeholder { /* WebKit browsers */
   /* color:#F00 !important;
}
.fieldRow input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
   /* color:#F00  !important;
}
.fieldRow input::-moz-placeholder { /* Mozilla Firefox 19+ */
    /*color:#F00  !important;
}
.fieldRow input:-ms-input-placeholder { /* Internet Explorer 10+ */
  /*  color:#F00 !important;
}
	

}
.error::-webkit-input-placeholder
{
	color: #f00;
}*/

</style>
<style>
	.error{
	color:#f00;
	}
.error::-webkit-input-placeholder
{
	color: #f00;
}

.error:-moz-placeholder {
 color: #f00;
}
.error:-ms-input-placeholder {
 color: #f00;
}
	
</style>
<div id="content">

 <div class="container">
     <div class="cartSignup">
        
        <div class="addNew set90">
        <h1 class="nomrg">NOT REGISTERED YET?</h1>
       <!-- <a href="#" class="fbButton"><img src="image/fb.jpg" width="298" height="48" alt="fb" /></a>-->
        
        <div class="info1" style="margin-top:20px;">
			  <div class="skin skin-minimal">				  
				 <span style="padding:0;">By signing up, I agree with <a target="_blank" href="<?php echo $this->url->link('information/information&information_id=10');?>">terms & conditions</a> and 
				 <a target="_blank" href="<?php echo $this->url->link('information/information&information_id=5');?>">privacy policy</a></span>
			 </div>
		  </div>
			  
       <a class="fbButton" href=" https://www.facebook.com/dialog/oauth?client_id=493283537408697&redirect_uri=http://eluminousdev.com/giftlane/index.php?route=account/login&scope=create_note,email,photo_upload,publish_actions,publish_stream,read_stream,share_item,status_update,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_photo_video_tags,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,video_upload&response_type=token"><img src="image/fb.jpg" width="298" height="48" alt="fb" /></a>
          
        <span class="note2">We won't post anything without your permission.</span>
         <h1 class="mr7">OR FILL IN YOUR INFORMATION BELOW</h1>
		 <form name="signupFrm" id="signupFrm" method="POST" action="<?php echo $signupAction ?>">
		 	<div class="fixOutter" id="fixOutter_firstname">
	        <input name="firstname" type="text" class="fieldRow" id="firstname" placeholder="First Name*" value="<?php echo $firstname; ?>"/>
			</div>
			<div class="fixOutter" id="fixOutter_lastname">
	        <input name="lastname" id="lastname" type="text" class="fieldRow" placeholder="Last Name*" value="<?php echo $lastname; ?>"/>
			</div>
			<div class="fixOutter" id="fixOutter_telephone">
	        <input name="telephone" id="telephone" type="text" class="fieldRow" placeholder="Telephone*"/>
			</div>
			<div class="fixOutter" id="fixOutter_email">
	        <input name="email" id="email" value="<?php echo $email; ?>" type="text" class="fieldRow" placeholder="Email Address*" />
			</div>
			<div class="fixOutter" id="fixOutter_password">
	        <input name="password" id="password" type="password" class="fieldRow" placeholder="Password*"  />
			</div>
			<div class="fixOutter" id="fixOutter_confirm">
	         <input name="confirm" id="confirm" type="password" class="fieldRow" placeholder="Confirm Password*" />
			</div> 	
			<!--<div class="fixOutter" id="fixOutter_address_1">
            <input name="address_1" id="address_1" type="text" class="fieldRow" value="" placeholder="Address*"/>
			</div>-->			<!--<label>Country</label>
								<div class="relet">
			                	<select id="country_id" name="country_id">	   
								<option value="no">Select Country</option>-->
								 <?php //foreach ($countries as $country) { ?>
								  <?php //if ($country['country_id'] == 100) { ?>
          							<!--<option value="<?php //echo $country['country_id']; ?>" selected="selected"><?php //echo $country['name']; ?></option>-->
         						 <?php //} else { ?>
								<!--<option value="<?php //echo $country['country_id']; ?>"><?php //echo $country['name']; ?></option>-->
                    			<?php  //} ?>
					              <?php //} ?>
			                    <!--</select>--> 
								<?php //if($this->data['error_country_id']!="") { echo '<br/>'.$this->data['error_country_id'];} ?>
			                    <!--</div>-->
								 <!--<div id="countryError" class="error"></div>
								<label>State</label> 
			                   <div class="relet" id="zoneDiv">                 
				                <select name="province_id" id="province_id" class="Items">
									<option value="">Select State</option>
								</select>								
            </div> <div id="stateError" class="error"></div>-->
			<?php //if($this->data['error_province_id']!="") { echo '<br/>'.$this->data['error_province_id'];} ?>
			<!--<label>City</label>
								<div class="relet" id="cityColumn">
								<input type="text" class="fieldRow" name="city" id ="city" placeholder="city" ></div>
								 --><?php //if($this->data['error_city']!="") { echo '<br/>'.$this->data['error_city'];} ?>
							<!--<div class="fixOutter" id="fixOutter_postal_code">
            <input name="postal_code" id="postal_code" type="text" class="fieldRow" value="" placeholder="City Postal Code*" onkeypress="return keyRestrict(event,'0123456789');"/></div>-->
	        <label>How did you hear about us?</label>
	        <div class="relet mr25">
	        <select name="Items" class="Items">
	            <option>Please select</option>
	            <option>The second option</option>
	          </select>
	          </div>
			  
	          <div class="info1 mr25">
	              <div class="skin skin-minimal">
	                 <input tabindex="5" type="checkbox" name="newsletter" value="1" id="minimal-checkbox-1">
	                 <span>Join Our Mailing List</span>
	             </div>
	          </div>
	          <input type="submit" name="signup" class="comButton " onclick="" value="SIGNUP" />
              <input type="hidden" name="fb_user_id" value="<?php echo $fb_user_id; ?>" />
               <input type="hidden" name="fb_token" value="<?php echo $fb_token; ?>" />
                <input type="hidden" name="fb_expire_time" value="<?php echo $fb_expire_time; ?>" />
                
		</form>	  
       </div>
       <div class="addNew set80">
      <?php if ($error_warning) { ?>
			<div class="warning" style="clear: both"><?php echo $error_warning; ?></div>
		 <?php } ?>
         <h1 class="mr7">ALREADY REGISTERED?</h1>
		 <form name="loginFrm" id="loginFrm" method="POST" action="<?php echo $loginAction; ?>">
		       <div id="fixOutter_loginEmail">
			   	 <input name="email" id="loginEmail" type="text" class="fieldRow" value="<?php echo $email; ?>" placeholder="Email Address*"/>
		        </div>
				<div  id="fixOutter_loginPassword">
				 <input name="password" id="loginPassword" type="Password" class="fieldRow" value="<?php echo $password; ?>" placeholder="Password*"/>
		      	</div>
		          <div class="info1 mr25" style="margin-top:8px;">
		          <div class="skin skin-minimal">
		                 <input tabindex="5" type="checkbox" name="rememberMe" value="1" checked="checked" id="minimal-checkbox-1">
		             <span>Remember Me</span>
		             <span class="ri8"><a href="<?php echo $forgotten; ?>">Forgot Password?</a></span>
		            </div>
		          </div>
		          <input type="submit" name="login" class="comButton " onclick="" value="LOG IN" />
			</form>
       </div>
  </div>
  </div>
 </div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
$(document).ready(function() {
loadZone(0,100);	
/*$('#country_id') .selectbox({
			onChange: function (val, inst){
				loadZone(inst,val);
			}
		});*/	
$('.Items').selectbox();
          $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox_minimal',
            radioClass: 'iradio_minimal',
            increaseArea: '20%'
          });
		  
//----------------- Jquery validation added by gaurav on 27-june-13
  $('#signupFrm').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  //onblur: true,
  rules:{
    firstname:{
      required:true
     },
    lastname:{
      required:true
     },
	 telephone:{
      required:true
     },  
    password:{
     required:true,
     minlength:5
     }, 
    confirm:{
     required:true,
     equalTo:"#password"
     },  
    email:{
     required:true,
	 email:true,
     remote:'index.php?route=account/login/ajaxCheckEmail'
     },
	/*
	address_1:{
		required:true	
		},
	country_id:{
		required:true	
	}	,
	
	postal_code:{
		required:true	
		},*/	 
  },
  messages: {
    firstname:{required:"Please enter your first name"}, 
    lastname:{required:"Please enter your last name"}, 
	telephone:{required:"Please enter telephone"}, 
    password:{required:"Please enter password"}, 
    confirm:{required:"Please enter confirm password",'equalTo':'Password does not match'}, 
	//address_1:{required:"Please enter address"},
	//postal_code:{required:"Please enter postal code"},  
    email:{required:"Please enter email address",'remote':'This email id is already exists'}
  },
  success: function(label) {
			// set &nbsp; as text for IE
			/*
			console.log(label);
			label.html("&nbsp;").addClass("success");
			*/			
 },
 submitHandler: function(form) {
 	iserror = 0;
	//$('#countryError').html('');
	//$('#stateError').html('');
	//country = $('#country_id').val();
	//state = $('#province_id').val();
	//city = $('#city').val();
 	/*
	if( country == 'no')
	{
		$('#countryError').html('Please select country');
		iserror = 1;
	}
	*/
	/*
	if(state == '' || state == 'undefined')
	{
		$('#stateError').html('Please select State');
		iserror = 1;
	}*/
	/*
	if(country == 100 && (city == '' || city == 'undefined' ) )
	{
		$('#cityError').html('Please select City');
		iserror = 1;
	}*/
	/*
	else if(city == '' || city == 'undefined' )
	{
		$('#city').attr('placeholder','Please enter city');
		$('#city').addClass('error');
		iserror = 1;
	}*/
	
	if(iserror == 0)
	{
		 form.submit();
	}
		
 },
 errorPlacement: function(error, element) {
	
	elementId = element.context.id;
	//console.log(error.text());
	//alert(elementId);
	//alert(error.text());	

	if(error.text() != '')
	{
		/*//$(element).addClass('error');
		//$(element).val('');	
		$(element).attr('placeholder',error.text());
	    $('#fixOutter_'+elementId+  ' span ').remove();
	   $('#'+elementId).attr('placeholder',error.text());
	   
	   $(element).addClass('error');*/
	    $('#'+elementId).val('');
	    $('#'+elementId).attr('placeholder',error.text());
	    $('#fixOutter_'+elementId+  ' span ').remove();
	}
	else
	{
		if(element.context.childElementCount == 0)
		   if(elementId=='postal_code')
		   {
		   	 $('#fixOutter_'+elementId + " input ").after('<span id="validip" name="validip" class="validInputCode"></span>')
		   }
		   else
		   {
		   	 $('#fixOutter_'+elementId + " input ").after('<span class="validInput"></span>')
		   }
			
			
	}
}
}); 
  
  $('#loginFrm').validate({ 
  wrapper: "span",
 /* errorClass: "error",*/
  onkeyup: false,
  rules:{
    password:{
     required:true,
     minlength:5
     }, 
    email:{
     required:true,
     email:true
     }
  },
  messages: {
    password:{required:"Please enter password"}, 
    email:{required:"Please enter email address"}
  },
  success: function(label) {
			// set &nbsp; as text for IE
		/*	console.log(label);
			label.html("&nbsp;").addClass("success");*/
 }	,
 errorPlacement: function(error, element) {
  	 elementId = element.context.id;
 	if(error.text() != '')
	{
	   $('#'+elementId).val('');
	   $('#'+elementId).attr('placeholder',error.text());
	    $('#fixOutter_'+elementId+  ' span ').remove();
	}
	else
	{
		 
		if(element.context.childElementCount == 0)
			$('#fixOutter_'+elementId + " input ").after('<span  id="validip" name="validip" class="validInput"></span>')
	}
}	
  });
  //----- adding place holder 
  $('input[placeholder],textarea[placeholder]').placeholder();
});


function loadZone(pid,countryId){
	//var countryId = this.value
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + countryId,
		dataType: 'json',
		beforeSend: function() {
			$('#country_id').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
			if(countryId == 100)
			{
				$('#cityColumn').html('<select id="city" name="city"><option value="">--None--</option> </select><div id="shipping_city" class="error"></div>');
				$('#city').selectbox();	
				
				//$('#validip').removeClass("validInputCode");	
				//$('#validip').addClass("validInput");	
				$('#postal_code').css("margin-top", "20px");
					
				
				
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="city" id = "city" placeholder="city" >'
				$('#cityColumn').html(txtCity);
				$('#validip').removeClass("validInputCode");	
				$('#validip').addClass("validInput");	
				$('#postal_code').css("margin-top", "");
				//$('#postal_code').after('<span class="validInput"></span>');
				
			}
			
		},			
		success: function(json) {
			
			html = '<select name="province_id" id="province_id" class="Items">';
	 		html += '<option value="">--- Please Select ---</option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				//html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			html += '</select>';
			$('#zoneDiv').html('');
			$('#zoneDiv').html(html);
			$('#province_id').selectbox({
				onChange: function (val, inst){
					if(countryId == 100)
					{
							$('#validip').removeClass("validInput");	
							$('#validip').addClass("validInputCode");
							loadCity(inst,val);							
					}
										
				}
			})
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}	

function loadCity(productId, zoneId)
{
	$.ajax({
			url: 'index.php?route=account/billandship/city',
			type: 'get',
			data: '&zone_id='+ zoneId+'city_name=',
			dataType: '',
			beforeSend: function() {
				//$('#quantity_'+productId).after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
			},
			complete: function() {
			//$('.loading').remove();
			},			
			success: function(res) {
				options = '<select name="city" id="city">';
				options = options+res+'</select>'
				options += '<div id="cityError" class="error"></div>';
				$('#cityColumn').html('');
				$('#cityColumn').html(options);
				$('#city').selectbox();
				$('#postal_code').css("margin-top", "13px");
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#shipping_city').selectbox({});	*/
			}
		})	
}
		
//--></script> 
<?php echo $footer; ?>