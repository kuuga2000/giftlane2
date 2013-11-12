<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="content">
 <div class="box-heading">MY ACCOUNT</div>  
   <div class="myAc">
 	<div class="leftBar">
	<?php echo $column_left; ?>
	</div>
	<div class="rightBox">
		<h1 class="rbtitle">BILLING &amp; SHIPPING </h1>
		<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
			<?php } ?>
		<form name="addressFrm" id="addressFrm" method="POST" action="">
        <div class="addNew">
             <h1 class="rbtitle">Shipping Address</h1>
			 <div class="fixOutter" id="fixOutter_shipping_title">
            <input name="shipping_title" id="shipping_title" type="text" class="fieldRow" value="<?php echo $shipping_title?>" placeholder="Address Book Name*"/>
			</div>
			 <div class="fixOutter" id="fixOutter_shipping_firstname">
            <input name="shipping_firstname" id="shipping_firstname" type="text" class="fieldRow" value="<?php echo $shipping_firstname?>" placeholder="First Name*"/>
			</div>
			<div class="fixOutter" id="fixOutter_shipping_lastname">
            <input name="shipping_lastname" id="shipping_lastname" type="text" class="fieldRow" value="<?php echo $shipping_lastname?>" placeholder="Last Name*" />
			</div>
			<div class="fixOutter" id="fixOutter_shipping_email">
            <input name="shipping_email" id="shipping_email" type="text" class="fieldRow" value="<?php echo $shipping_telephone;?>" placeholder="Telephone*"/>
			</div>
			<div class="fixOutter" id="fixOutter_shipping_address1">
            <input name="shipping_address1" id="shipping_address1" type="text" class="fieldRow" value="<?php echo $shipping_address_1?>" placeholder="Address*"/>
			</div>
            <input name="shipping_address2" id="shipping_address2" type="text" class="fieldRow" value="<?php echo $shipping_address_2?>" style="margin-bottom:10px;"/>
		<label>Country*</label>
			                 <div class="relet">
			                	<select id="country_id" name="country_id" class="Items">	   
								<option value="">Select Country</option>
								 <?php foreach ($countries as $country) {
								  $actionAddress=0;
								   if($billing_country=='')
								  {
								  	$billing_country=100;
								  }
								 ?>
								  <?php if ($country['country_id'] == $billing_country) { ?>
          							<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
         						 <?php } else { ?>
          							<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
          <?php } ?>
					              
					              <?php }?>
			                    </select> 
								<?php if($this->data['error_country_id']!="") { echo '<br/>'.$this->data['error_country_id'];} ?>
			                    </div> 
								 <div id="countryError" class="error"></div>  
								<label>State*</label>
			                   <div class="relet" id="zoneDiv">                 
				                <select name="shipping_province_id" id="shipping_province_id" class="Items">
									<option value="">Select State</option>
								</select>								
            </div><div id="stateError" class="error"></div>
			<?php if($this->data['error_province_id']!="") { echo '<br/>'.$this->data['error_province_id'];} ?>
			
            					<label>City*</label>
								<div class="relet" id="cityColumn"><br>
								<input type="text" class="fieldRow" name="shipping_city" id ="shipping_city" placeholder="city" ></div>
								 <?php if($this->data['error_city']!="") { echo '<br/>'.$this->data['error_city'];} ?>
		  <div class="fixOutter" id="fixOutter_shipping_postal_code">
            <input name="shipping_postal_code" id="shipping_postal_code" type="text" class="fieldRow" value="<?php echo $shipping_postcode; ?>" placeholder="City Postal Code*" onkeypress="return keyRestrict(event,'0123456789');"/></div>
            <span class="note3">*) Required fields.</span>
            <div class="info1 mr25">
            <div class="skin skin-minimal" id="sameas">
                <input tabindex="5" type="checkbox" name="sameas" id="sameas" onclick="FillFields(this);" onchange="FillFields(this);">
                <span>Billing address same as shipping address</span> </div>
          </div>
            <input type="submit" name="Submit" class="comButton" onclick="" value="SAVE" />
          </div>
        <div class="addNew">
           <h1 class="mr23">Billing Address</h1>
		   <div class="fixOutter" id="fixOutter_billing_title">
            <input name="billing_title" id="billing_title" type="text" class="fieldRow" value="<?php echo $billing_title?>" placeholder="Address Book Name*"/>
			</div>
		   <div class="fixOutter" id="fixOutter_billing_firstname">
            <input name="billing_firstname" id="billing_firstname" type="text" class="fieldRow" value="<?php echo $billing_firstname;?>" placeholder="First Name*"/>
			</div>
			<div class="fixOutter" id="fixOutter_billing_lastname">
            <input name="billing_lastname" id="billing_lastname" type="text" class="fieldRow" value="<?php echo $billing_lastname;?>" placeholder="Last Name*" />
			</div>
			<div class="fixOutter" id="fixOutter_billing_email">
            <input name="billing_email" id="billing_email" type="text" class="fieldRow" value="<?php echo $billing_telephone;?>" placeholder="Telephone*"/>
			</div>
			<div class="fixOutter" id="fixOutter_billing_address1">
            <input name="billing_address1" id="billing_address1" type="text" class="fieldRow" value="<?php echo $billing_address_1;?>" placeholder="Address*"/>
			</div>
			
            <input name="billing_address2" id="billing_address2" type="text" class="fieldRow" value="<?php echo $billing_address_2;?>" style="margin-bottom:10px;"/>
           <label>Country*</label>
			                 <div class="relet" id="biilingcountry">
			                	<select id="billing_country_id" name="billing_country_id" class="Items">	   
								<option value="">Select Country</option>
								 <?php foreach ($countries as $country) { ?>
								   <?php 
								   $actionAddress=0;
								   if($billing_country=='')
								  {
								  	$billing_country=100;
								  }
								   if ($country['country_id'] == $billing_country) { ?>
          							<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
         						 <?php } else { ?>
          							<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option> 
									<?php } ?> 
					              <?php }?>
			                    </select> 
								<?php if($this->data['error_billing_country_id']!="") { echo '<br/>'.$this->data['error_billing_country_id'];} ?>
			                    </div> 
								<div id="billingcountryError" class="error"></div>
								<label>State*</label> 
			                   <div class="relet" id="zoneDivbilling">                 
				                <select name="billing_province_id" id="billing_province_id" class="Items">
									<option value="">Select State</option>
								</select>
            </div><div id="billingstateError" class="error"></div>
			<?php if($this->data['error_billing_province_id']!="") { echo '<br/>'.$this->data['error_billing_province_id'];} ?>
           <label>City*</label>
			<div class="relet" id="billingcityColumn">
			<input type="text" class="fieldRow" name="billing_city" id ="billing_city" placeholder="city" ></div>
			<?php if($this->data['error_billing_city']!="") { echo '<br/>'.$this->data['error_billing_city'];} ?>
		  <div class="fixOutter" id="fixOutter_billing_postal_code">
            <input name="billing_postal_code" id="billing_postal_code" type="text" class="fieldRow" value="<?php echo $billing_postcode;?>" placeholder="City Postal Code*" onkeypress="return keyRestrict(event,'0123456789');"/>
			</div>
          </div>
		  </form>
	</div>
   </div>	
   
<script language="javascript">
$(document).ready(function() {
	var actionAddress="<?php echo $billingactionAddress;?>";
	  if(actionAddress==1)
	  {
	  	loadBillingZone(0,100);
		loadZone(0,100);
	  }
	$('#country_id') .selectbox({
			onChange: function (val, inst){
				loadZone(inst,val);
			}
	});
	$('#billing_country_id') .selectbox({
			onChange: function (val, inst){
				loadBillingZone(inst,val);
			}
	});
	
	$('#shipping_province_id') .selectbox({
			onChange: function (val, inst){
				loadCity(inst,val);
			}
		});
	
	$('#billing_province_id') .selectbox({
			
	
			onChange: function (val, inst){
				loadBillingCity(inst,val);
			}
	});
  
  var selectCountry = "<?php echo $country_id;?>";
  var zoneId= "<?php echo $shipping_zone;?>";
  var data = { country_id :selectCountry,zone_id:zoneId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/zone',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="shipping_province_id" id="shipping_province_id" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#zoneDiv').html('');
						//alert(options)
						$('#zoneDiv').html(options);
						$('#shipping_province_id').selectbox({});	

        }
    })			
  var selectProvince = "<?php echo $shipping_zone;?>";
  var cityId= "<?php echo $shipping_city;?>";
 
  var data = {zone_id :selectProvince,city_name:cityId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/city',
        dataType:'html',
        data:data,
        success:function(html){
			
		if(selectCountry == 100)
			{
				options = '<select name="shipping_city" id="shipping_city" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						options += '<div id="cityError" class="error"></div>';
						$('#cityColumn').html('');
						//alert(options)
						$('#cityColumn').html(options);
						$('#shipping_city').selectbox({});	
						$('#shipping_postal_code').css("margin-top", "14px");
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="shipping_city" id = "shipping_city" placeholder="city" value="'+ cityId +'" >'
				$('#cityColumn').html(txtCity);
				$('#shipping_postal_code').css("margin-top", "");
			}
			}
    })
		
 
  var selectbillingCountry = "<?php echo $billing_country;?>";
  var billingzoneId= "<?php echo $billing_zone;?>";
  var data = { country_id :selectbillingCountry,zone_id:billingzoneId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/zone',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="billing_province_id" id="billing_province_id" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#zoneDivbilling').html('');
						//alert(options)
						$('#zoneDivbilling').html(options);
						$('#billing_province_id').selectbox({});	

        }
    })
  var billingzoneId= "<?php echo $billing_zone;?>";				
  var billingcityId= "<?php echo $billing_city;?>";
 
  var data = {zone_id :billingzoneId,city_name:billingcityId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/city',
        dataType:'html',
        data:data,
        success:function(html){
			
		if(selectbillingCountry == 100)
			{
				options = '<select name="billing_city" id="billing_city" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						options += '<div id="billingcityError" class="error"></div>';
						$('#billingcityColumn').html('');
						//alert(options)
						$('#billingcityColumn').html(options);
						$('#billing_city').selectbox({});
						options += '<div id="billingcityError" class="error"></div>';
						$('#billing_postal_code').css("margin-top", "14px");	
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="billing_city" id = "billing_city" placeholder="city" value="'+ billingcityId +'" >'
				$('#billingcityColumn').html(txtCity);
				$('#billing_postal_code').css("margin-top", "");
			}
			}
    })	
 				
	
$('.Items').selectbox();

			
$('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox_minimal',
    radioClass: 'iradio_minimal',
    increaseArea: '20%'
  });		
		
//$('#shipping_city').selectbox({})	
//$('#billing_city').selectbox({})			
$('.Items').selectbox();
 $('#addressFrm').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
  	 shipping_title:{
      required:true
     },
    shipping_firstname:{
      required:true
     },
    shipping_lastname:{
      required:true
     }, 
    shipping_email:{
     required:true
     }, 
    shipping_address1:{
     required:true   
     },
	 billing_title:{
      required:true
     },
    billing_firstname:{
      required:true
     },
    billing_lastname:{
      required:true
     }, 
    billing_email:{
     required:true
     }, 
    billing_address1:{
     required:true   
     },
	shipping_postal_code:{
     required:true   
     },
	 billing_postal_code:{
     required:true   
     }  
  },
  messages: {
    shipping_firstname:{required:"Please enter firstname"}, 
    shipping_lastname:{required:"Please enter lastname"}, 
    shipping_email:{required:"Please enter telephone no."},
	shipping_title:{required:"Please enter shipping name"}, 
    shipping_address1:{required:"Please enter shipping address"},
	shipping_postal_code:{required:"Please enter shipping postal code."},
	billing_firstname:{required:"Please enter firstname"}, 
    billing_lastname:{required:"Please enter  lastname"}, 
    billing_email:{required:"Please enter telephone no."},
	billing_title:{required:"Please enter billing name"}, 
    billing_address1:{required:"Please enter billing address"},
	billing_postal_code:{required:"Please enter billing postal code."}
  },
  success: function(label) {
			// set &nbsp; as text for IE
		/*	console.log(label);
			label.html("&nbsp;").addClass("success");*/
 },
 submitHandler: function(form) {
 	iserror = 0;
	$('#countryError').html('');
	$('#stateError').html('');
	$('#billingcountryError').html('');
	$('#billingstateError').html('');
	country = $('#country_id').val();
	state = $('#shipping_province_id').val();
	city = $('#shipping_city').val();
	billingCountry = $('#billing_country_id').val();
	billingState = $('#billing_province_id').val();
	billingCity = $('#billing_city').val();
 	if( country == 'no' || country == '')
	{
		$('#countryError').html('Please select country');
		iserror = 1;
	}
	
	if(state == '' || state == 'undefined')
	{
		$('#stateError').html('Please select State');
		iserror = 1;
	}
	
	if(country == 100 && (city == '' || city == 'undefined' ) )
	{
		$('#cityError').html('Please select City');
		iserror = 1;
	}
	else if(city == '' || city == 'undefined' )
	{
		$('#shipping_city').attr('placeholder','Please enter city');
		$('#shipping_city').addClass('error');
		iserror = 1;
	}
	if( billingCountry == 'no' || billingCountry == '')
	{
		$('#billingcountryError').html('Please select country');
		iserror = 1;
	}
	
	if(billingState == '' || billingState == 'undefined')
	{
		$('#billingstateError').html('Please select State');
		iserror = 1;
	}
	
	if(billingCountry == 100 && (billingCity == '' || billingCity == 'undefined' ) )
	{
		$('#billingcityError').html('Please select City');
		iserror = 1;
	}
	else if(billingCity == '' || billingCity == 'undefined' )
	{
		$('#billing_city').attr('placeholder','Please enter city');
		$('#billing_city').addClass('error');
		iserror = 1;
	}
	
	if(iserror == 0)
	{
		 form.submit();
	}
		
 },
 errorPlacement: function(error, element) {
 	//console.log(error.text());
	//console.log(element.context.childElementCount);
	 elementId = element.context.id;
	// alert(elementId);
	if(error.text() != '')
	{
	    $(element).addClass('error');
		$(element).val('');	
		$(element).attr('placeholder',error.text());
		$('#fixOutter_'+elementId+  ' span ').remove();
	   //$('#'+elementId).attr('placeholder',error.text());
	}
	else
	{
		if(element.context.childElementCount == 0)
		  if(elementId=='shipping_postal_code' || elementId=='billing_postal_code' )
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
  $('#sameas').on('ifChecked', function(event){
	  FillFields();
	});
 $('#sameas').on('ifUnchecked', function(event){
	  removefields();
	});
 
 });
  function loadZone(pid,countryId){
	//var countryId = this.value
	//alert('sship');
	//return false;
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
				$('#cityColumn').html('<select id="shipping_city" name="shipping_city"><option value="">--None--</option> </select><div id="shipping_city" class="error"></div>');
				$('#shipping_city').selectbox();
				$('#shipping_postal_code').css("margin-top", "14px");
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="shipping_city" id = "shipping_city" placeholder="city" >'
				$('#cityColumn').html(txtCity);
				$('#shipping_postal_code').css("margin-top", "");
				$('#validinput').removeClass('validInputCode');
				$('#validinput').addClass('validInputCode');
				
			}
			
		},			
		success: function(json) {
			
			html = '<select name="shipping_province_id" id="shipping_province_id" class="Items">';
	 		html += '<option value=""><?php echo $text_select; ?></option>';
			
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
			$('#shipping_province_id').selectbox({
				onChange: function (val, inst){
					if(countryId == 100)
					{
							loadCity(inst,val);
					}
										
				}
			});
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
				options = '<select name="shipping_city" id="shipping_city">';
				options = options+res+'</select>'
				options += '<div id="cityError" class="error"></div>';
				$('#cityColumn').html('');
				$('#cityColumn').html(options);
				$('#shipping_city').selectbox();
				$('#shipping_postal_code').css("margin-top", "14px");
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#shipping_city').selectbox({});	*/
			}
		})	
}

//load billing address zone
 function loadBillingZone(pid,countryId){
	//var countryId = this.value
	//alert('bill');
	//return false;
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
				$('#billingcityColumn').html('<select id="billing_city" name="billing_city"><option value="">--None--</option> </select><div id="billing_city" class="error"></div>');
				$('#billing_city').selectbox();
				$('#billing_postal_code').css("margin-top", "13px");
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="billing_city" id = "billing_city" placeholder="city" >'
				$('#billingcityColumn').html(txtCity);
				$('#billing_postal_code').css("margin-top", "");
			}
			
		},			
		success: function(json) {
			
			html = '<select name="billing_province_id" id="billing_province_id" class="Items">';
	 		html += '<option value=""><?php echo $text_select; ?></option>';
			
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
			$('#zoneDivbilling').html('');
			$('#zoneDivbilling').html(html);
			$('#billing_province_id').selectbox({
				onChange: function (val, inst){
					if(countryId == 100)
					{
							loadBillingCity(inst,val);
					}
				}
			})
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}

function loadBillingCity(productId, zoneId)
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
				options = '<select name="billing_city" id="billing_city">';
				options = options+res+'</select>'
				options += '<div id="billingcityError" class="error"></div>';
				$('#billingcityColumn').html('');
				$('#billingcityColumn').html(options);
				$('#billing_city').selectbox();
				
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#shipping_city').selectbox({});	*/
			}
		})	
}	
 //end billing city
function FillFields() {
var countrySlected='';
document.addressFrm.billing_firstname.value  = document.addressFrm.shipping_firstname.value;
document.addressFrm.billing_lastname.value  = document.addressFrm.shipping_lastname.value;
document.addressFrm.billing_email.value  = document.addressFrm.shipping_email.value;
document.addressFrm.billing_address1.value  = document.addressFrm.shipping_address1.value;
document.addressFrm.billing_address2.value  = document.addressFrm.shipping_address2.value;
document.addressFrm.billing_country_id.value  = document.addressFrm.country_id.value;
countrySlected = document.addressFrm.billing_country_id.value;

document.addressFrm.billing_province_id.value  = document.addressFrm.shipping_province_id.value;
document.addressFrm.billing_city.value  = document.addressFrm.shipping_city.value;
  var selectCountry = document.addressFrm.billing_country_id.value;
  var data = { country_id :selectCountry};
  $.ajax({
        type:'GET',	
        url:'index.php?route=account/billandship/country',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="billing_country_id" id="billing_country_id" tabindex="2" sb="9567620" >';
						options = options+html+'</select>'
						$('#biilingcountry').html('');
						//alert(options)
						$('#biilingcountry').html(options);
						$('#billing_country_id').selectbox({});	

        }
    })
				
  var zoneId= document.addressFrm.shipping_province_id.value;
  var data = { country_id :selectCountry,zone_id:zoneId};
  $.ajax({
        type:'GET',	
        url:'index.php?route=account/billandship/zone',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="billing_province_id" id="billing_province_id" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#zoneDivbilling').html('');
						//alert(options)
						$('#zoneDivbilling').html(options);
						$('#billing_province_id').selectbox({});	

        }
    })			
  var cityId= document.addressFrm.shipping_city.value;
 
  var data = { zone_id :zoneId,city_name:cityId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/city',
        dataType:'html',
        data:data,
        success:function(html){
			
		if(selectCountry == 100)
			{
				options = '<select name="billing_city" id="billing_city" tabindex="2" sb="51079817" >';
					options = options+html+'</select>'
					$('#billingcityColumn').html('');
					//alert(options)
					$('#billingcityColumn').html(options);
					$('#billing_city').selectbox({});	
			}
			else
			{	
				//$('#billingcityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="billing_city" id = "billing_city" placeholder="city" value="'+ cityId +'" >'
				$('#billingcityColumn').html(txtCity);
			}
			}
    })	
document.addressFrm.billing_postal_code.value  = document.addressFrm.shipping_postal_code.value;
} 
function removefields()
{  
document.addressFrm.billing_firstname.value  = '';
document.addressFrm.billing_lastname.value  = '';
document.addressFrm.billing_email.value  = '';
document.addressFrm.billing_address1.value  = '';
document.addressFrm.billing_address2.value  = '';
document.addressFrm.billing_province_id.value  = '';
document.addressFrm.billing_city.value  = '';
document.addressFrm.billing_postal_code.value  = '';
document.addressFrm.billing_country_id.value='';
 var selectCountry = document.addressFrm.billing_country_id.value;
  var data = {country_id :selectCountry};
  $.ajax({
        type:'GET',	
        url:'index.php?route=account/billandship/country',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="billing_country_id" id="billing_country_id" tabindex="2" sb="9567620" >';
						options = options+html+'</select>'
						$('#biilingcountry').html('');
						//alert(options)
						$('#biilingcountry').html(options);
						$('#billing_country_id').selectbox({});	

        }
    })
	/*$('#billing_country_id').selectbox({});	
	$('#billing_country_id').fadeOut('slow').load('index.php?route=account/billandship/countries').fadeIn("slow");*/

	//$('#billing_country_id').load();			
  var zoneId= document.addressFrm.billing_province_id.value;
  var data = { country_id :selectCountry,zone_id:zoneId};
  $.ajax({
        type:'GET',	
        url:'index.php?route=account/billandship/zone',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="billing_province_id" id="billing_province_id" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#zoneDivbilling').html('');
						//alert(options)
						$('#zoneDivbilling').html(options);
						$('#billing_province_id').selectbox({});	

        }
    })			
  var cityId= document.addressFrm.billing_city.value;
 
  var data = { zone_id :zoneId,city_name:cityId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/city',
        dataType:'html',
        data:data,
        success:function(html){
			
		if(selectCountry == 100)
			{
				options = '<select name="billing_city" id="billing_city" tabindex="2" sb="51079817" >';
					options = options+html+'</select>'
					$('#billingcityColumn').html('');
					//alert(options)
					$('#billingcityColumn').html(options);
					$('#billing_city').selectbox({});	
			}
			else
			{	
				//$('#billingcityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="billing_city" id = "billing_city" placeholder="city" value="'+ cityId +'" >'
				$('#billingcityColumn').html(txtCity);
			}
			}
    })	
 }
</script> 
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>