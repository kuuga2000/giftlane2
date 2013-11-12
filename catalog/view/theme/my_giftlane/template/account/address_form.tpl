<?php echo $header; ?>
<div id="content">
<div class="box-heading">MY ACCOUNT</div>
   <div class="myAc">
 	<div class="leftBar">
	<?php echo $column_left; ?>
	</div>
	<div class="rightBox">
		<h4 class="mr23" style="margin-left: 20px;color: #3C3C3B;">ADDRESS BOOK</h4>
		<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
			<?php } ?>
		<form name="addressFrm" id="addressFrm" method="POST" action="">
        <div class="addNew pa20">
             <h1 class="mr23">Add New</h1>
			 <div class="fixOutter" id="fixOutter_title">
            <input onblur="checkValid()" name="title" id="title" type="text" class="fieldRow" value="<?php echo $title;?>" placeholder="Address Book Name*"/>
			<span id="valid_addressname" style="display:none;" class="validInput"/>
			</div>
			 <div class="fixOutter" id="fixOutter_firstname">
            <input name="firstname" onblur="checkValid()" id="firstname" type="text" class="fieldRow" value="<?php echo $firstname; ?>" placeholder="<?php if($this->data['error_firstname']!="") { echo $this->data['error_firstname'];} else {?>First Name*<?php } ?>"/>
			<span id="valid_firstname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter" id="fixOutter_lastname">
            <input name="lastname" onblur="checkValid()" id="lastname" type="text" class="fieldRow" value="<?php echo $lastname; ?>" placeholder="<?php if($this->data['error_lastname']!="") { echo $this->data['error_lastname'];} else {?>Last Name*<?php } ?>" />
			<span id="valid_lastname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter" id="fixOutter_telephone">
            <input name="telephone" onblur="checkValid()" id="telephone" type="text" class="fieldRow" value="<?php echo $telephone;?>" placeholder="<?php if($this->data['error_telephone']!="") { echo $this->data['error_telephone'];} else {?>Telephone*<?php } ?>"/>
			<span id="valid_telephone" style="display:none;" class="validInput"/>
			</div>
			
			<div class="fixOutter" id="fixOutter_address1">
            <input name="address1" onblur="checkValid()" id="address1" type="text" class="fieldRow" value="<?php echo $address_1; ?>" placeholder="<?php if($this->data['error_address_1']!="") { echo $this->data['error_address_1'];} else {?>Address*<?php } ?>"/>
			<span id="valid_address1" style="display:none;" class="validInput"/>
			</div>
            <input name="address2" id="address2" type="text" class="fieldRow" value="<?php echo $address_2; ?>"/>
	 						<label>Country*</label>
			                 <div class="relet">
			                	<select id="country_id" name="country_id" class="Items">	   
								<option value="">Select Country</option>
								 <?php foreach ($countries as $country) { ?>
								  <?php 
								  if($country_id=='')
								  {
								  	$country_id=100;
								  }
								  if ($country['country_id'] == $country_id) { ?>
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
				                <select name="province_id" id="province_id" class="Items">
									<option value="">Select State</option>
								</select>
							
			                    </div> 
								<div id="stateError" class="error"></div>
								<?php 
							if($this->data['error_province_id']!="") { echo '<br/>'.$this->data['error_province_id'];} ?>
								<div class="fixOutter">
								<label>City*</label>
								 
								<div class="relet" id="cityColumn"><br>
								<input type="text" class="fieldRow" name="shipping_city" id = "shipping_city" placeholder="city" >
				              
								</div>
							</div>
		  <?php if($this->data['error_city']!="") { echo '<br/>'.$this->data['error_city'];} ?>
			                 
		  <div class="fixOutter" id="fixOutter_shipping_postal_code">
            <input name="postal_code" onblur="checkValid()" id="postal_code" type="text" class="fieldRow" value="<?php echo $postal_code; ?>" placeholder="City Postal Code*" onkeypress="return keyRestrict(event,'0123456789');" />
			
			<span id="valid_postal_code" style="display:none; margin-top:15px;" class="validInput" />
			
			</div>
            <span class="note3 mr23" style="float:left; width:100%">*) Required fields.</span>
            <?php if($actionAddress=='1') { ?>
            <input type="submit" name="Submit" class="comButton" onclick="" value="ADD TO ADDRESS BOOK" />
			<?php } else { ?>
			<br/>
			<?php //echo $deleteUrl; ?>
			<a href="<?php echo $back;?>"><input type="button" name="delete" class="comButton" style="float: none;width:142px;!important" onclick="" value="CANCEL" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" name="Submit" class="comButton" style="float: none;width:142px;!important" onclick="" value="SAVE" />
			<br/><a href="<?php echo $deleteUrl?>" onclick="return confirm_msg();"><small class="fieldRow" style="border-color: #FFFFFF !important;">Remove from Address Book</small></a>
			<?php } ?>
          </div>
        </form>
	</div>
   </div>	</div>
   
<script type="text/javascript">



function checkValid(){
	var addressname = $('#title').val();
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	var telephone = $('#telephone').val();
	var address1 = $('#address1').val();
	var poscode = $('#postal_code').val();
	
	if(address1 !==''){
		$('#valid_address1').show();
	}	
	if(addressname!==''){
			$('#valid_addressname').show();
	}
	
	if(firstname!==''){
			$('#valid_firstname').show();
	}
	
	if(lastname!==''){
			$('#valid_lastname').show();
	}
	
	if(telephone!==''){
			$('#valid_telephone').show();
	}
	/*
	if(address1!==''){
			$('#valid_address1').show();
	}*/
	if(poscode!==''){
			$('#valid_postal_code').show();
	}
	//return false;
}



$(document).ready(function() {
	$('#province_id') .selectbox({
			onChange: function (val, inst){
				loadCity(inst,val);
			}
		});
	$('#country_id') .selectbox({
			onChange: function (val, inst){				
				loadZone(inst,val);
			}
		});	

  var selectCountry = "<?php echo $country_id;?>";
  var zoneId= "<?php echo $province_id;?>";
  var actionAddress="<?php echo $actionAddress;?>";
  if(actionAddress==1)
  {
  	loadZone(0,100);
  }
  
  var data = { country_id :selectCountry,zone_id:zoneId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/zone',
        dataType:'html',
        data:data,
        success:function(html){
			options = '<select name="province_id" id="province_id" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#zoneDiv').html('');
						//alert(options)
						$('#zoneDiv').html(options);
						$('#province_id').selectbox({});
						

        }
    })		
  var selectProvince = "<?php echo $province_id;?>";
  var cityId= "<?php echo $shipping_city;?>";
 
  var data = { zone_id :selectProvince,city_name:cityId};
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
						$('#postal_code').css("margin-top", "14px");
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="shipping_city" id = "shipping_city" placeholder="city" value="'+ cityId +'" >'
				$('#cityColumn').html(txtCity);
				$('#postal_code').css("margin-top", "");
			}
			}
    })	
 			

//$('#province_id').selectbox({})		

//$('#shipping_city').selectbox({})	
//$('.Items').selectbox();

			
/*$('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox_minimal',
    radioClass: 'iradio_minimal',
    increaseArea: '20%'
  });	*/	
 $('#addressFrm').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
    firstname:{
      required:true
     },
    lastname:{
      required:true
     }, 
    telephone:{
     required:true,
     },
	title:{
     required:true,
     }, 
    address1:{
     required:true   
     },
	postal_code:{
     required:true   
     }	   
  },
  messages: {
    firstname:{required:"Please enter firstname"}, 
    lastname:{required:"Please enter lastname"}, 
    telephone:{required:"Please enter telephone no."}, 
	title:{required:"Please enter address book name"},
    address1:{required:"Please enter address"},
	postal_code:{required:"Please enter postal code."}
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
	country = $('#country_id').val();
	state = $('#province_id').val();
	city = $('#shipping_city').val();
 	if( country == 'no' ||  country == '')
	{
		$('#countryError').html('<font color="#e98181">Please select country</font>');
		iserror = 1;
	}
	
	if(state == '' || state == 'undefined' || state == '0')
	{
		$('#stateError').html('<font color="#e98181">Please select State</font>');
		iserror = 1;
	}	
	if(country == 100 && (city == '' || city == 'undefined' || city == '0') )
	{
		$('#cityError').html('<font color="#e98181">Please select City</font>');
		iserror = 1;
	}
	else if(city == '' || city == 'undefined' )
	{
		if(country==100){
		
			$('#shipping_city').attr('placeholder','<font color="#e98181">Please enter city</font>');
		}else{
			$('#shipping_city').attr('placeholder','Please enter city');
		}
		$('#shipping_city').addClass('error');
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
/* errorPlacement: function(error, element) {
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
			$('#'+elementId+ " input ").after('<span class="validInput"></span>')
	}
}*/
  });
  
 });

function loadZone(pid,countryId){
	//var countryId = this.value
	if(countryId!=''){
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
				options += '<div id="cityError" class="error"></div>';
				$('#postal_code').css("margin-top", "14px");
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="shipping_city" id = "shipping_city" placeholder="city" >'
				$('#cityColumn').html(txtCity);
				$('#postal_code').css("margin-top", "");
			}
			
		},			
		success: function(json) {
			
			html = '<select name="province_id" id="province_id" class="Items">';
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
			$('#province_id').selectbox({
				onChange: function (val, inst){
					if(countryId == 100)
					{
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
				
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#shipping_city').selectbox({});	*/
			}
		})	
}

function confirm_msg()
{
	var cnf=confirm("Are you sure to delete this address?");
	if(cnf)
	{
		return true;
	}
	else
	{
		return false;
	}
}

</script> 
<?php echo $footer; ?>