<?php echo $header; ?>
<div class="box-heading2">CHECKOUT</div>

<div class="container">
<?php if ($success) { ?>
<div class="success" style="border: none"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

    <div class="checkout_bill">
		<form id="confirmForm" action="<?php echo $couponAction; ?>" method="post" enctype="multipart/form-data">
		<input type="hidden" name="confirmOrder" value="confirm"/>
	
            <!--<div class="checkout_reg">
            <span><a href="#">Already registered? Click here to log in.</a></span></div>-->
            <div class="billing_add">
            <h1>BILLING ADDRESS</h1>
			<input type="hidden" value="<?php echo $payment_addid;?>" name="address_id" id="address_id" />
			<div class="fixOutter">
			<input onblur="checkValid()" name="payment_addressname" id="addressname" type="text" class="fieldRow" value="<?php echo $payment_addtitle; ?>" placeholder="Address book name*"/>
            <span id="valid_addressname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter">
			<input onblur="checkValid()" name="payment_firstname" id="firstname" type="text" class="fieldRow" value="<?php echo $payment_firstname ?>" placeholder="First name*"/>
            <span id="valid_firstname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter">
			<input onblur="checkValid()" name="payment_lastname" id="lastname" type="text" class="fieldRow" value="<?php echo $payment_lastname ?>" placeholder="Last name*"/>
            <span id="valid_lastname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter">
			<input onblur="checkValid()" name="telephone" id="telephone" type="text" class="fieldRow" value="<?php echo $telephone ?>" placeholder="Telephone*"/>
            <span id="valid_telephone" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter">
			<input onblur="checkValid()" name="payment_address_1" id="address1" type="text" class="fieldRow" value="<?php echo $payment_address_1 ?>" placeholder="Address*"/>
            <span id="valid_address1" style="display:none;" class="validInput"/>
			</div>
			<input name="payment_address_2" id="address2" type="text" class="fieldRow" value="<?php echo $payment_address_2 ?>"/>
            <label>Country*</label>
            <div class="relet">
       		 <select id="country_id" name="country_id" class="Items">	   
				<option value="">Select Country</option>
				 <?php foreach ($countries as $country) { ?>
				 <?php if ($country['country_id'] == $payment_country_id) { ?>
					<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
			     <?php }elseif($payment_country_id==0){
						if($country['country_id']==100){	
				 ?>
					<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>	
				 
				 <?php }else{?>
				 <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
				 <? }}else{ ?>
	              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
	             <?php }
				 }
				 ?>
                </select> 
              </div>
			  <div id="countryError" class="error"></div>
            <label>State*</label>
            <div class="relet"  id="zoneDiv">
             <select name="province_id" id="province_id" class="Items">
									<option value="">Select State</option>
								</select>
              </div>
			  <div id="stateError" class="error"></div>
            <label>City*</label>
            <div class="relet" id="cityColumn"><br>
					<input type="text" class="fieldRow" name="payment_city" id="payment_city" value="<?php echo $payment_city; ?>" placeholder="city" >
	        </div>
            <input name="payment_postcode" name="postal" type="text" id="postal" class="fieldRow" value="<?php echo $payment_postcode; ?>" placeholder="City postal code*"/>
            <span class="note">*) Required fields.</span> </div>
            
            <!--Address Boook -->
            <div class="paymentMethod">
            <div class="bookNav" style="margin-bottom:15px;">
                <h1>PAYMENT METHOD</h1>
              </div>
			  <?php echo $payment_methode; ?>
            <div class="addOutter">
                <div class="abDiv2">
                <div class="skin skin-minimal">
                    <div class="pmLeft">
                    <input tabindex="7" type="radio" value="BCA" id="minimal-radio-1" name="payment_methode" <?php if($payment_methode == '' || $payment_methode == 'BCA') { ?> checked="checked" <?php } ?> />
                    <span>Transfer Bank BCA</span>
                    <p>A/N Felicia Darmaja<br />
                        1234 5678 9010<br />
                        Cab. Kelapa Gading</p>
                  </div>
                    <div class="pmLeft">
                    <input tabindex="7" type="radio" value="CIMB" id="minimal-radio-1" name="payment_methode" <?php if($payment_methode == 'CIMB') { ?> checked="checked" <?php } ?>/>
                    <span>Transfer Bank CIMB Niaga</span>
                    <p>A/N Felicia Darmaja<br />
                        1234 5678 9010<br />
                        Cab. Kelapa Gading</p>
                  </div>
				  <div class="pmLeft">
                    <input tabindex="7" value="doku" type="radio" id="minimal-radio-1" name="payment_methode" <?php if($payment_methode == 'doku') { ?> checked="checked" <?php } ?>/>
                    <span>Credit Card</span>
                  </div>
                  </div>
              </div>
                <div class="shippingMethod">
                <h1>SPECIAL REQUESTS/ ADDITIONAL INFO</h1>
                 <div class="abDiv2">
                    <textarea class="textArea2" rows="" cols="" name="commnents" placeholder="Type your Message Here..."></textarea>
                </div>
              </div>
              </div>
            </div>
			</form>
          </div>
</div>

<table width="100%" cellpadding="0" cellspacing="0" border="0" class="cart_table">
        <thead>
          <tr>
            <td class="cart_tbl_ttl">PRODUCT</td>
            <td class="cart_tbl_ttl">EXTRAS</td>
            <td class="cart_tbl_ttl" width="140">PRICE</td>
			 <td class="cart_tbl_ttl">QTY</td>
            <td class="cart_tbl_ttl" width="160">TOTAl</td>
			<td class="cart_tbl_ttl" width="40">&nbsp;</td>
          </tr>
        </thead>
        <tbody>
		<?php foreach ($products as $product) {
				$count = 1;
				$productCount = count($product['products']);
				foreach ($product['products'] as $subProduct) {
				?>
      		<tr>
            <td valign="top" style="border: none">
            <a href="<?php echo $subProduct['href']; ?>"><strong style="text-transform: uppercase"><?php echo $subProduct['name']; ?></strong></a><br />
            <small class="cart_brand"><?php echo $subProduct['manufaturer']; ?></small>
			 
			 <?php if(isset($this->session->data['color'][$subProduct['product_id']]) && $this->session->data['color'][$subProduct['product_id']] != '') { ?>
				<small style="text-transform: uppercase;"><?php echo 'Color: '.$this->session->data['color'][$subProduct['product_id']]; ?></small>
				<?php } ?>
				<?php if(isset($this->session->data['size'][$subProduct['product_id']]) && $this->session->data['size'][$subProduct['product_id']] != '') { ?>
				<br><small style="text-transform: uppercase;"><?php echo 'Size: '.$this->session->data['size'][$subProduct['product_id']]; ?></small>
				<?php } ?>
			 
			<!--
            <small>color: yellow</small><br>
            <small>size: L</small>-->
            </td>
            <td valign="top" style="border: none">
            <strong style="text-transform: uppercase"> <?php echo 'FOR: '.$subProduct['receipientName']; ?></strong><br />
            <small class="cart_brand">&nbsp;</small>
            <small><?php echo $subProduct['wrapping']; ?></small><br>
            <small><?php echo $subProduct['greeting']; ?></small>
            </td>
			
		    <td valign="top" style="border: none">IDR <?php echo number_format($subProduct['price'],0,',','.'); ?></td>
            <td valign="top" style="border: none"><?php echo $subProduct['quantity']; ?></td>
            <td valign="top" style="border: none">IDR <?php echo number_format($subProduct['total'],0,',','.'); ?></td>
			<td align="right" style="border: none">&nbsp;</td>
          </tr>
		<?php $count++; }?>
		  <tr>
            <td valign="top" >&nbsp; </td>
            <td valign="top">
            SHIPPING COST
            </td>
			
		    <td valign="top">&nbsp;</td>
            <td valign="top">&nbsp;</td>
            <td valign="top">IDR <?php echo number_format($product['shippingCost'],0,',','.'); ?></td>
			<td align="right">&nbsp;</td>
          </tr>
		
		 <?php } ?>  
          <tr>
            <td colspan="3" rowspan="5" valign="top" class="cart_in_brdr_none padding_subtl">
            
            
            <div  style="padding-top: 5px">
		        <div class="left" ><span class="font12"><strong>Promo code</strong></span>
				<form action="<?php echo $couponAction; ?>" method="post" enctype="multipart/form-data" id="couponForm">
				<input  type="hidden" name="payment_methode" id="payment_methode1" value="BCA"/>
				<input type="hidden" name="next" value="coupon"/>
		        <input type="text" class="textFildPromo" name="coupon"  id="couponCode"  value="<?php echo $coupon; ?>"  />
		        <input type="button" onclick="if($('#couponCode').val() != '') { $('#couponForm').submit()}else { alert('Please add valid coupon code'); } " class="submitPromo" name=""></form></div>
		    </div>
		            
            </td>
            <td valign="top" class="cart_in_brdr_none padding_subtl"><strong>SUBTOTAL</strong></td>
           
            <td valign="top" class="cart_in_brdr_none padding_subtl"><strong>IDR <?php echo number_format($intCartSubTotal,0,',','.') ?></strong></td>
			<td align="right" valign="top" class="cart_in_brdr_none padding_subtl">&nbsp;</td>
          </tr>
		  <?php  if($intAddOnTotal > 0) { ?>
          <tr>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">ADD-ONS</td>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">IDR <?php echo number_format($intAddOnTotal,0,',','.'); ?></td>
            <td align="right" valign="top" class="cart_in_brdr_none padding_tp_btm5">&nbsp;</td>
          </tr>
		  <?php } ?>
		  <?php if($intTotalShipping > 0){ ?>
		   <tr>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">SHIPPING</td>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">IDR <?php echo number_format($intTotalShipping,0,',','.'); ?></td>
            <td align="right" valign="top" class="cart_in_brdr_none padding_tp_btm5">&nbsp;</td>
          </tr>
		  <?php } ?>
		   <?php  if($intCartCoupon != '' && $intCartCoupon != 0) { ?>
		  
		  <tr>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">PROMO CODE</td>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5">IDR <?php echo number_format($intCartCoupon,0,',','.'); ?></td>
            <td align="right" valign="top" class="cart_in_brdr_none padding_tp_btm5">&nbsp;</td>
          </tr>
		  <?php } ?>
          <tr>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5"><strong>GRAND TOTAL</strong></td>
            <td valign="top" class="cart_in_brdr_none padding_tp_btm5"><strong>IDR <?php echo number_format($intCartTotal,0,',','.') ?></strong></td>
            <td align="right" valign="top" class="cart_in_brdr_none padding_tp_btm5">&nbsp;</td>
          </tr>
        </tbody>
      </table>
	  
	<div class="buttons">
    <div class="right" style="float: right; margin-top:40px;"><input type="button" value="COMPLETE CHECKOUT" id="" onclick="confirmCheckout()" class="comButton"></div>
  </div>
  
  <?php echo $footer; ?>

<script type="text/javascript">

function checkValid(){
	var addressname = $('#addressname').val();
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	var telephone = $('#telephone').val();
	var address1 = $('#address1').val();
	//var poscode = $('#postal').val();
	
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
	}
	if(poscode!==''){
			$('#valid_poscode').show();
	}*/
	//return false;
}



$(document).ready(function() {
//loadZone('',100);
<?php
if($payment_country_id==0){?>
	loadZone('',100);
<?php } ?>
$('#country_id') .selectbox({
			onChange: function (val, inst){
				loadZone(inst,val);
			}
		});	
$('#province_id') .selectbox({
			onChange: function (val, inst){
				loadCity(inst,val);
			}
		});
		
		$('input').click(function(){$(this).removeClass('error')})
		
		 $('.skin-minimal input').iCheck({
	      checkboxClass: 'icheckbox_minimal',
	      radioClass: 'iradio_minimal',
	      increaseArea: '20%',
	    });
		
		$('.skin-minimal input').on('ifChecked', function(event){
				payment_methode = $('input[name=\'payment_methode\']:checked').val();
				$('#payment_methode1').val(payment_methode)
		})  
});

 var selectCountry = "<?php echo $payment_country_id;?>";
  var zoneId= "<?php echo $payment_zone_id;?>";
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
  var selectProvince = "<?php echo $payment_zone_id;?>";
  var cityId= "<?php echo $payment_city;?>";
 
  var data = { zone_id :selectProvince,city_name:cityId};
  $.ajax({
        type:'GET',
        url:'index.php?route=account/billandship/city',
        dataType:'html',
        data:data,
        success:function(html){
			
		if(selectCountry == 100)
			{
				options = '<select name="payment_city" id="payment_city" tabindex="2" sb="51079817" >';
						options = options+html+'</select>'
						$('#cityColumn').html('');
						//alert(options)
						$('#cityColumn').html(options);
						$('#payment_city').selectbox({});	
						$('#postal').css("margin-top", "14px");
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="payment_city" id="payment_city" placeholder="city" value="'+ cityId +'" >'
				$('#cityColumn').html(txtCity);
				$('#postal').css("margin-top", "");
			}
			}
    })	
	
function loadZone(pid,countryId){
	//var countryId = this.value
	if(countryId!==''){
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
				$('#cityColumn').html('<select id="payment_city" name="payment_city"><option value="">--None--</option> </select><div id="payment_city" class="error"></div>');
				$('#payment_city').selectbox();
				$('#postal').css("margin-top", "14px");
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<input type="text" class="fieldRow" name="payment_city" id = "payment_city" placeholder="city" >'
				$('#cityColumn').html(txtCity);
				$('#postal').css("margin-top", "");
			}
			
		},			
		success: function(json) {
			
			html = '<select name="province_id" id="province_id" class="Items">';
	 		html += '<option value="">Select Area</option>';
			
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
				options = '<select name="payment_city" id="payment_city">';
				options = options+res+'</select>';
				options += '<div id="cityError" class="error"></div>';
				
				$('#cityColumn').html('');
				$('#cityColumn').html(options);
				$('#payment_city').selectbox();
				$('#postal').css("margin-top", "14px");
				
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#payment_city').selectbox({});	*/
			}
		})	
}	

function confirmCheckout()
{
	
	
	//alert($('#firstname').val()); return false;
	addressname = $('#addressname').val();
	firstname = $('#firstname').val();
	lastname = $('#lastname').val();
	telephone = $('#telephone').val();
	address1 = $('#address1').val();
	address2 = $('#address2').val();
	country = $('#country_id').val();
	zone = $('#province_id').val();
	city = $('#payment_city').val();
	postal = $('#postal').val();
	
	isError = 0;
	if(addressname == '')
	{
		$('#valid_addressname').hide();
		$('#addressname').attr('placeholder','Address book name is required');
		$('#addressname').addClass('error');
		isError = 1;
	}
	if(firstname == '')
	{
		$('#valid_firstname').hide();
		$('#firstname').attr('placeholder','Firstname is required');
		$('#firstname').addClass('error');
		isError = 1;
	}
	if(lastname == '')
	{
		$('#valid_lastname').hide();
		$('#lastname').attr('placeholder','Lastname is required');
		$('#lastname').addClass('error');
		isError = 1;
	}
	if(telephone == '')
	{
		$('#valid_telephone').hide();
		$('#telephone').attr('placeholder','Telephone is required');
		$('#telephone').addClass('error');
	}
	if(address1 == '')
	{
		$('#valid_address1').hide();
		$('#address1').attr('placeholder','Address is required');
		$('#address1').addClass('error');
		isError = 1;
	}
	if(country == '')
	{
		$('#countryError').html('<font color=#f6715b>Country is required</font>');
		isError = 1;
	}
	else
	{
		$('#countryError').html('');
	}
	if(zone == '' || zone == 0)
	{
		$('#stateError').html('<font color=#f6715b>State is required</font>');
		isError = 1;
	}
	else
	{
		$('#stateError').html('');
	}
	if(country == 100 && (city == '' || city == 0))
	{
		$('#cityError').html('City is required');
		isError = 1;
	}
	else if(city == '')
	{
		$('#payment_city').attr('placeholder','City is required');
		$('#payment_city').addClass('error');
		isError = 1;
	}
	else
	{
		$('#cityError').html('');
	}
	if(postal == '')
	{
		$('#postal').attr('placeholder','City postal code is require');
		$('#postal').addClass('error');
		isError = 1;
	}
	
	if(isError == 0)
	{
		$('#confirmForm').submit();
	}else{
		$('html, body').animate({scrollTop: 0}, 500);
	}	
	return false;
	
}	
</script>
