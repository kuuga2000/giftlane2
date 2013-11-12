<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h3><?php echo $heading_title; ?></h3>
    <?php //if ($weight)  echo '&nbsp;('.$weight.')'; } ?>
  <!--</h1>-->
 <style type="text/css">
 	.addOns {
		margin:20px 0px 0px 0px;
		clear: both;
	}
	.selectedGreeting
	{
		border: 1px solid #71556b;
	}
 </style> 
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="cart-info">
      <table style="width: 100%">
        <thead>
          <tr>
            <td class="image">PRODUCT</td>
            <td class="name">&nbsp;</td>
            <td class="price">PRICE</td>
			 <td class="quantity">QTY</td>
            <td class="total">TOTAl</td>
			<td>&nbsp;</td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr id="row_<?php echo $product['product_id']; ?>">
            <td class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?>
			</td>
            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <div>
                <?php foreach ($product['option'] as $option) { ?>
               <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
              <?php } ?>
			  <br><a href="javascript:void(0)" onclick="$('.row_greetingCard').hide(); $('.row_recepientAddress').hide(); $('#giftwrapping_<?php echo $product['product_id']; ?>').toggle()">Add Wrapping</a><br>
			  
			  <a href="javascript:void(0)" onclick="$('.row_greetingCard').hide();$('.row_giftWrapping').hide(); $('#addressbook_<?php echo $product['product_id']; ?>').toggle(); loadAddress(<?php echo $product['product_id']; ?>) ">Add Receipient</a>
			  
			  
			</td>
			 <td class="price"><?php echo $product['price']; ?><br><a href="javascript:void(0)" onclick="$('.row_giftWrapping').hide(); $('.row_recepientAddress').hide(); $('#greetingCard_<?php echo $product['product_id']; ?>').toggle()">Add Greeting</a></td>
            <td class="quantity"><input type="text" name="quantity[<?php echo $product['product_id']; ?>]" id="quantity_<?php echo $product['product_id']; ?>" onblur="updateCount('<?php echo $product['product_id']; ?>','<?php echo $product['key']; ?>')" value="<?php echo $product['quantity']; ?>" size="1" />
			<div class="addOns" <?php if(isset($addOnPrice[$product['product_id']]) && $addOnPrice[$product['product_id']] != '') { } else{?> style="display:none" <?php } ?> >ADD-ONS</div>
			</td>
           
            <td class="total"><span id="total_<?php echo $product['product_id']; ?>"><?php echo $product['total']; ?></span><div class="addOns" id="addonPrice_<?php echo $product['product_id']; ?>" <?php if(isset($addOnPrice[$product['product_id']]) && $addOnPrice[$product['product_id']] != '') { } else{?> style="display:none" <?php } ?>><?php if(isset($addOnPrice[$product['product_id']]) && $addOnPrice[$product['product_id']] != '') { echo $addOnPrice[$product['product_id']]; } ?></div></td>
			<td><a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>
			</td>
          </tr>
		  <tr style="display: none" class="row_greetingCard" id="greetingCard_<?php echo $product['product_id']; ?>">
		  	<td colspan="6">
			
				   <div class="greetingCard">
			        	<div class="grLeft drop" style="background-image: url('<?php echo $product['greetingImage']; ?>')"> </div><!--Romove 'drop' class when adding img here  -->
			            <div class="grRight">
			            	<h1 class="comTitle mtop">Greeting Card</h1>
			                <div class="chosebx">
			                	<div class="skin skin-minimal">
				                    <input tabindex="7" type="radio" id="minimal-radio-1" value="std"  name="greetingType_<?php echo $product['product_id']; ?>"  <?php if(isset($this->session->data['greeting'][$product['product_id']]['greetingType']) && ($this->session->data['greeting'][$product['product_id']]['greetingType'] == 'std' || $this->session->data['greeting'][$product['product_id']]['greetingType'] == '')){ ?>checked="checked"<?php } ?> />
			                   </div>       
			                    <span>Standard</span>
			                    	<div class="skin skin-minimal">
				                    <input tabindex="7" type="radio" id="minimal-radio-1" value="prm" name="greetingType_<?php echo $product['product_id']; ?>" <?php if(isset($this->session->data['greeting'][$product['product_id']]['greetingType']) && $this->session->data['greeting'][$product['product_id']]['greetingType'] == 'prm' ){ ?>checked="checked"<?php } ?> />
			                   </div>
			                    <span>Premium <font style="font-weight:normal;">+ IDR 35.000</font></span>
			                 </div>
			                 <div class="relet">
			                	 <select name="occasions" id="occasions_<?php echo $product['product_id']; ?>" class="Items">
								 <?php if(count($greetingOccations) > 0)
								       {
									   	 foreach($greetingOccations AS $occasion)
										 {
									?>
									<option <?php if(isset($this->session->data['greeting'][$product['product_id']]) && $this->session->data['greeting'][$product['product_id']]['occasionId'] == $occasion['category_id']) { ?> selected="selected" <?php } ?> value="<?php echo $occasion['category_id'] ?>"><?php echo $occasion['name'] ?></option>
									<?php 	 	
										 }
									   }
									  ?>	
			                    </select>
			                    </div>
			                 <div class="picTumb">
							 <ul id="greetings_<?php echo $product['product_id']; ?>">
								 <?php if(count($greetings[$product['product_id']]) > 0) {
								 	foreach($greetings[$product['product_id']] AS $greeting)
									{
								?>
									<li onclick="selectGreeting('<?php echo $product['product_id']; ?>','<?php echo $greeting['product_id']; ?>')" id="greeting_<?php echo $product['product_id']; ?>_<?php echo $greeting['product_id']; ?>" <?php if(isset($this->session->data['greeting'][$product['product_id']]) && $this->session->data['greeting'][$product['product_id']]['greetingId'] == $greeting['product_id']) { ?> class="selectedGreeting" <?php } ?>><img  src="<?php echo $greeting['image']; ?>" alt="<?php echo $greeting['name']; ?>" /></li>
								<?php 		
									}
								 }
								 ?>
							 </ul>
			                 </div>
			                 <textarea name="greetingMessage_<?php echo $product['product_id']; ?>" id="greetingMessage_<?php echo $product['product_id']; ?>" cols="" rows="" class="textArea" placeholder="Type your Message Here..."><?php if(isset($this->session->data['greeting'][$product['product_id']])) { echo $this->session->data['greeting'][$product['product_id']]['message']; } ?></textarea>
							 <input type="hidden" id="selectedGreeting_<?php echo $product['product_id']; ?>" value="<?php if(isset($this->session->data['greeting'][$product['product_id']])) { echo $this->session->data['greeting'][$product['product_id']]['greetingId']; } ?>"/>
			            </div>																										
 		           </div>
			        <div class="add2order2">
		            	<input type="button" onclick="addGreetingToCart('<?php echo $product['product_id']; ?>')" value="ADD TO ORDER" onclick="" class="comButton " name="Submit" />
		            </div>	
			<!--  ************************ End of Greeting card section ***************************************-->			
			</td>
		  </tr>
		   <tr style="display: none" class="row_giftWrapping" id="giftwrapping_<?php echo $product['product_id']; ?>">
		   	<td colspan="6">
				<!--  ************************ Gift wrapping section ***************************************-->
				
				<div class="greetingCard">
		        	<div class="grLeft drop" style="background-image: url('<?php echo $product['wrappingImage']; ?>') "> </div><!--Romove 'drop' class when adding img here  -->
		            <div class="grRight">
		            	<h1 class="comTitle mtop">Wrapping Paper</h1>
		                <div class="chosebx">
		                	<div class="skin skin-minimal">
			                    <input tabindex="7" type="radio" id="minimal-radio-1" value="std" name="wrappingType_<?php echo $product['product_id']; ?>"  <?php if(isset($this->session->data['wrapping'][$product['product_id']]['wrappingType']) && ($this->session->data['wrapping'][$product['product_id']]['wrappingType'] == 'std' || $this->session->data['wrapping'][$product['product_id']]['wrappingType'] == '')){ ?>checked="checked"<?php } ?> />
		                   </div>       
		                    <span>Standard</span>
		                    	<div class="skin skin-minimal">
			                    <input tabindex="7" type="radio" id="minimal-radio-1" value="prm" name="wrappingType_<?php echo $product['product_id']; ?>" <?php if(isset($this->session->data['wrapping'][$product['product_id']]['wrappingType']) && $this->session->data['wrapping'][$product['product_id']]['wrappingType'] == 'prm'){ ?>checked="checked"<?php } ?> />
		                   </div>
		                    <span>Premium <font style="font-weight:normal;">+ IDR 35.000</font></span>
		                 </div>
		                 <div class="relet">
		                	 <select name="wrappings" class="Items" id="themes_<?php echo $product['product_id']; ?>">
							  <?php if(count($wrappingThemes) > 0)
								       {
									   	 foreach($wrappingThemes AS $theme)
										 {
									?>
									<option <?php if(isset($this->session->data['wrapping'][$product['product_id']]) && $this->session->data['wrapping'][$product['product_id']]['themeId'] == $theme['category_id']) { ?> selected="selected" <?php } ?> value="<?php echo $theme['category_id'] ?>"><?php echo $theme['name'] ?></option>
									<?php 	 	
										 }
									   }
									 ?>  
		                      <!-- <option>Select Occassion</option><option>The second option</option> 	-->
		                    </select>
		                    </div>
		                 <div class="picTumb">
						 <ul id="wrappings_<?php echo $product['product_id']; ?>">
								 <?php if(count($wrappings[$product['product_id']]) > 0) {
								 	foreach($wrappings[$product['product_id']] AS $wrapping)
									{
								?>
									<li onclick="selectWrapping('<?php echo $product['product_id']; ?>','<?php echo $wrapping['product_id']; ?>')" id="wrapping_<?php echo $product['product_id']; ?>_<?php echo $wrapping['product_id']; ?>" <?php if(isset($this->session->data['wrapping'][$product['product_id']]) && $this->session->data['wrapping'][$product['product_id']]['wrapId'] == $wrapping['product_id']) { ?> class="selectedGreeting" <?php } ?>><img  src="<?php echo $wrapping['image']; ?>" alt="<?php echo $wrapping['name']; ?>" /></li>
								<?php 		
									}
								 }
								 ?>
							 </ul>
		                 </div>
						  <input type="hidden" id="selectedWrapping_<?php echo $product['product_id']; ?>" value="<?php if(isset($this->session->data['wrapping'][$product['product_id']])) { echo $this->session->data['wrapping'][$product['product_id']]['wrapId']; } ?>"/>
						 
		            </div>
		            </div>
		        <div class="add2order2">
		                	<input type="button" onclick="addWrappingToCart('<?php echo $product['product_id']; ?>')" value="ADD TO ORDER" onclick="" class="comButton " name="Submit" />
		         </div>
				<!--  ************************ ENd of Gift wrapping section ***************************************-->
			</td>
		   </tr>
		   <tr style="display: none" class="row_recepientAddress" id="addressbook_<?php echo $product['product_id']; ?>">
		   		<td colspan="6">
					<!-- **************************** Receipient address section ****************************** -->
				<div class="recipient">
				
			       <div class="srTitle"><h1>Select Recipient</h1><span>Or, Send It to My Address</span></div>
			            <div class="addNew">
			            	<h1>Add New</h1>
			                <input name="[<?php echo $product['product_id']; ?>][firstname]" id="firstname_<?php echo $product['product_id']; ?>" type="text" class="fieldRow" value="" placeholder="First Name*"/>
			                 <input name="[<?php echo $product['product_id']; ?>][lastname]" id="lastname_<?php echo $product['product_id']; ?>" type="text" class="fieldRow" value="" placeholder="Last Name*"/>
			                 <input name="[<?php echo $product['product_id']; ?>][telephone]" id="telephone_<?php echo $product['product_id']; ?>" type="text" class="fieldRow" value="" placeholder="Telephone*"/>
			                 <input name="[<?php echo $product['product_id']; ?>][address1]" id="address1_<?php echo $product['product_id']; ?>" type="text" class="fieldRow" value="" placeholder="Address*"/>
			                 <input name="[<?php echo $product['product_id']; ?>][address2]" id="address2_<?php echo $product['product_id']; ?>" type="text" class="fieldRow" value="" placeholder=""/>
			                 <label>Country</label>
			                 <div class="relet">
			                	<select name="[<?php echo $product['product_id']; ?>]['country']" id="country_<?php echo $product['product_id']; ?>" class="Items">	   <option value="">Select Country</option>
								 <?php foreach ($countries as $country) { ?>
					              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
					              <?php }?>
			                    </select> <div id="countryError_<?php echo $product['product_id']; ?>" class="error"></div>
			                    </div>                   
			                   <label>State</label> 
			                   <div class="relet" id="zoneDiv_<?php echo $product['product_id']; ?>">                 
			                <select name="[<?php echo $product['product_id']; ?>]['zone']" id="zone_<?php echo $product['product_id']; ?>" class="Items"><option value="">Select State</option></select>
							<div id="stateError_<?php echo $product['product_id']; ?>" class="error"></div>
			                    </div> 
			                  <div class="relet" id="cityColumn_<?php echo $product['product_id']; ?>"><br>
								<input type="text" class="fieldRow" name="[<?php echo $product['product_id']; ?>][city]" id = "city_<?php echo $product['product_id']; ?>" placeholder="city" >
				              </div>
			                 <input name="[<?php echo $product['product_id']; ?>]['postal']" type="text" class="fieldRow" id="postal_<?php echo $product['product_id']; ?>" value="" placeholder="City Postal Code*"/>
			                 <span class="note">*) Required fields.</span>
			            </div>
			            <input type="hidden" id="selectedAddress_<?php echo $product['product_id']; ?>"/>
			            <!--Address Boook -->
			            <div class="addressBook" >
			            	<div class="bookNav" id="addrNavDiv_<?php echo $product['product_id']; ?>"><h1>Select from Address Book</h1>
			                	<span><a href="javascript:void(0)" onclick="loadAddress(<?php echo $product['product_id']; ?>,1)">A-H</a>|</span>
			                    <span><a href="javascript:void(0)" onclick="loadAddress(<?php echo $product['product_id']; ?>,2)">I-P</a>|</span>
			                    <span><a href="javascript:void(0)" onclick="loadAddress(<?php echo $product['product_id']; ?>,3)">Q-Z</a></span>
			                </div>
							
						 	<div class="content" id="addrDiv_<?php echo $product['product_id']; ?>"></div>
			        	</div>
						
						 <div class="shippingMethod"><h1>Shipping Method</h1>
			            	<div class="com2box" style="width:270px;">
			                	<div class="skin skin-minimal">
				                    <input tabindex="7" type="radio" id="minimal-radio-1" name="minimal-radio" />
			                   </div>
			                    <div class="shtitle">International Shipping (DHL)
			                    	<span class="subtag">Estimated Delivery within 5-8 days</span>
			                    </div>
			                </div>
			                <div class="com2box" style="width:230px; padding-left:37px;">
			                	 <div class="shtitle"><span>500</span></div>
			                </div>
			                <div class="add2order">
			                	<input type="button" onclick="saveReceipientAddress(<?php echo $product['product_id']; ?>)" value="ADD TO ORDER" onclick="" class="comButton " name="Submit" id="button_<?php echo $product['product_id']; ?>" />
			                </div>
			            </div>
			    </div>
					<!-- **************************** END of Receipient address section ****************************** -->
				</td>
		   </tr>
		   
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>
 
  <div class="cart-total">
    <table id="total">
	<?php echo $totals; ?>
    </table>
  </div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $checkout; ?>" class="button"><?php echo $button_checkout; ?></a></div>
    <div class="center"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_shopping; ?></a></div>
  </div>
  
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--


function saveReceipientAddress(productId)
{
	firstname = $('#firstname_'+productId).val();
	lastname = $('#lastname_'+productId).val();
	telephone = $('#telephone_'+productId).val();
	address1 = $('#address1_'+productId).val();
	address2 = $('#address2_'+productId).val();
	country = $('#country_'+productId).val();
	zone = $('#zone_'+productId).val();
	city = $('#city_'+productId).val();
	postal = $('#postal_'+productId).val();
	
	//if($('#selectedAddress_'+productId).val() == '' || $('#selectedAddress_'+productId).val() == 'undefined')
	if(firstname != '' || lastname != '' || telephone != '' || address1 != '' || country != '' || zone != '' || city != '' || postal !='' )
	{
		isError = 0;
		if(firstname == '')
		{
			$('#firstname_'+productId).attr('placeholder','Firstname is required');
			$('#firstname_'+productId).addClass('error');
			isError = 1;
		}
		if(lastname == '')
		{
			$('#lastname_'+productId).attr('placeholder','Lastname is required');
			$('#lastname_'+productId).addClass('error');
			isError = 1;
		}
		if(telephone == '')
		{
			$('#telephone_'+productId).attr('placeholder','Telephone is required');
			$('#telephone_'+productId).addClass('error');
		}
		if(address1 == '')
		{
			$('#address1_'+productId).attr('placeholder','Address is required');
			$('#address1_'+productId).addClass('error');
			isError = 1;
		}
		if(country == '')
		{
			$('#countryError_'+productId).html('Country is required');
			isError = 1;
		}
		else
		{
			$('#countryError_'+productId).html('');
		}
		if(zone == '')
		{
			$('#stateError_'+productId).html('State is required');
			isError = 1;
		}
		else
		{
			$('#stateError_'+productId).html('');
		}
		if(country == 100 && city == '')
		{
			$('#cityError_'+productId).html('City is required');
			isError = 1;
		}
		else if(city == '')
		{
			$('#city_'+productId).attr('placeholder','City is required');
			$('#city_'+productId).addClass('error');
			isError = 1;
		}
		else
		{
			$('#cityError_'+productId).html('');
		}
		if(postal == '')
		{
			$('#postal_'+productId).attr('placeholder','City postal code is require');
			$('#postal_'+productId).addClass('error');
			isError = 1;
		}
		
		if(isError == 0)
		{
			$.ajax({
				url: 'index.php?route=checkout/cart/addAddressBook',
				type: 'post',
				dataType: 'json',
				data:{
						'productId': productId,
						'firstname': firstname,
						'lastname': lastname,
						'telephone': telephone,
						'address1': address1,
						'address2': address2,
						'country': country,
						'zone': zone,
						'city': city,
						'postal': postal
				},
				beforeSend: function() {
					$('#button_'+productId).after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
				},
				complete: function() {
					$('.wait').remove();
				},			
				success: function(json) {
					$('#addressbook_'+productId).hide();
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}
	else
	{
		alert($('#selectedAddress_'+productId).val());
		addressId = $('#selectedAddress_'+productId).val();
		$.ajax({
				url: 'index.php?route=checkout/cart/updateShippingAddress',
				type: 'post',
				dataType: 'json',
				data:{
						'productId': productId,
						'addressId': addressId
				},
				beforeSend: function() {
					$('#button_'+productId).after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
				},
				complete: function() {
					$('.wait').remove();
				},			
				success: function(json) {
					$('#addressbook_'+productId).hide();
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
	}
}
//------------ Function to update porduct qantity in cart
function updateCount(productId,key)
{
	var quantity = $('#quantity_'+productId).val();
	$.ajax({
		url: 'index.php?route=checkout/cart/updateQuantity',
		type: 'post',
		data: '&id='+ productId+'&key='+key+'&quantity='+quantity ,
		dataType: 'json',
		beforeSend: function() {
			$('#quantity_'+productId).after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
		$('.loading').remove();
		},			
		success: function(json) {
			console.log(json);	
			cartTotal = '('+json['cartCount']+')';
			$('#cart-total').html(cartTotal);
			$('#total_'+productId).html(json['productTotal']);
			$('#total').html(json['cartTotal']);
		}
	})		
}

//------------- function to load new greetings on changing occasion
function loadGreetings(productId)
{
	var occasion = $('#occasions_'+productId).val();
	$('#greetings_'+productId).after('<span class="loader">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
	
	$('#greetings_'+productId).load('index.php?route=checkout/cart/loadGreetings&occasion='+occasion+'&productId='+productId,{}, function(res){  $('.loader').remove()} );
}

//------------- function to load new wrapping paper on changing occasion
function loadWrappings(productId)
{
	var theme = $('#themes_'+productId).val();
	$('#wrappings_'+productId).after('<span class="loader">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
	
	$('#wrappings_'+productId).load('index.php?route=checkout/cart/loadWrappings&theme='+theme+'&productId='+productId,{}, function(res){  $('.loader').remove()} );
}
$(document).ready(function(){
	<?php foreach ($products as $product) { ?>
		$("#occasions_<?php echo $product['product_id']; ?>").selectbox({
			onChange: function (val, inst){
				loadGreetings(<?php echo $product['product_id']; ?>);
			}
		});
		
		$("#themes_<?php echo $product['product_id']; ?>").selectbox({
			onChange: function (val, inst){
				loadWrappings(<?php echo $product['product_id']; ?>);
			}
		});
				
		$('#country_<?php echo $product['product_id']; ?>')	.selectbox({
			onChange: function (val, inst){
				loadZone(<?php echo $product['product_id']; ?>,val);
			}
		});	
		
		$('#zone_<?php echo $product['product_id']; ?>')	.selectbox({})
		
		$('#addressbook_<?php echo $product['product_id']; ?> input').click(function(){$(this).removeClass('error')})
	<?php } ?>
	
  $('.skin-minimal input').iCheck({
    checkboxClass: 'icheckbox_minimal',
    radioClass: 'iradio_minimal',
    increaseArea: '20%'
  });
});

function loadZone(productId,countryId){
	//var countryId = this.value
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + countryId,
		dataType: 'json',
		beforeSend: function() {
			$('#country_'+productId).after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
			if(countryId == 100)
			{
				$('#cityColumn_'+productId).html('<label>City</label><br><div style="clear:both"></div><select id="city_'+productId+'" name="['+productId+'][city]"><option value="">--None--</option> </select><div id="cityError_'+productId+'" class="error"></div>');
				$('#city_'+productId).selectbox();
//$('#city_'+productId).load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
				txtCity = '<br><input type="text" class="fieldRow" name="['+productId+'][city]" id = "city_'+productId+'" placeholder="city" >'
				$('#cityColumn_'+productId).html(txtCity);
			}
			
		},			
		success: function(json) {
			
			html = '<select name="['+productId+'][\'zone\']" id="zone_'+productId+'" class="Items">';
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
			$('#zoneDiv_'+productId).html('');
			$('#zoneDiv_'+productId).html(html);
			$('#zone_'+productId).selectbox({
				onChange: function (val, inst){
					if(countryId == 100)
					{
							loadCity(productId,val);
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
				options = '<label>City</label><br><div style="clear:both"></div><select name="['+productId+'][city]" id="city_'+productId+'">';
				options = options+res+'</select><div id="cityError_'+productId+'" class="error"></div>'
				
				$('#cityColumn_'+productId).html('');
				$('#cityColumn_'+productId).html(options);
				$('#city_'+productId).selectbox();
				
				
				/*$('#cityCustome').html('');
				//alert(options)
				$('#cityCustome').html(options);
				$('#shipping_city').selectbox({});	*/
			}
		})	
}
function selectGreeting(productId,greetingId)
{
	$('#greetings_'+productId+' li').removeClass('selectedGreeting');
	$('#greeting_'+productId+'_'+greetingId).addClass('selectedGreeting');
	$.ajax({
			url: 'index.php?route=checkout/cart/getGreetingImage',
			type: 'post',
			data: '&id='+ greetingId,
			dataType: 'json',
			beforeSend: function() {
				//$('#quantity_'+productId).after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
			},
			complete: function() {
			//$('.loading').remove();
			},			
			success: function(json) {
				//cartTotal = '('+json['cartCount']+')';
				$('#greetingCard_'+productId+' .grLeft').css('background-image','url('+json['image']+')')
			}
		})		
	
	$('#selectedGreeting_'+productId).val(greetingId);
}

function selectWrapping(productId,wrappingId)
{
	$('#wrappings_'+productId+' li').removeClass('selectedGreeting');
	$('#wrapping_'+productId+'_'+wrappingId).addClass('selectedGreeting');
	$.ajax({
			url: 'index.php?route=checkout/cart/getWrappingImage',
			type: 'post',
			data: '&id='+ wrappingId,
			dataType: 'json',
			beforeSend: function() {
				//$('#quantity_'+productId).after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
			},
			complete: function() {
			//$('.loading').remove();
			},			
			success: function(json) {
				$('#giftwrapping_'+productId+' .grLeft').css('background-image','url('+json['image']+')')
			}
		})		
	$('#selectedWrapping_'+productId).val(wrappingId);
}
function addGreetingToCart(productId)
{
	selectedGreetingId =  $('#selectedGreeting_'+productId).val();
	greetinfMessage = $('#greetingMessage_'+productId).val();
	occasionId = $('#occasions_'+productId).val();
	greetingType = $('input[name=greetingType_'+productId+']:checked').val();
	if(!greetingType)
	{
		greetingType = 'std';
	}
	if(selectedGreetingId != '' && selectedGreetingId >0)
	{
		$.ajax({
			url: 'index.php?route=checkout/cart/addGreetingToCart',
			type: 'post',
			data: '&id='+ productId+'&selectedGreetingId='+selectedGreetingId+'&greetinfMessage='+greetinfMessage+'&occasionId='+occasionId+'&greetingType='+greetingType,
			dataType: 'json',
			beforeSend: function() {
				$('#greetingCard_'+productId+' input[type=button]').after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
			},
			complete: function() {
			$('.loading').remove();
			},			
			success: function(json) {
				$('#row_'+productId+' .addOns').show();
				$('#addonPrice_'+productId).html(json['addOnPrice']);
				$('#greetingCard_'+productId).hide();
				$('#total').html(json['cartTotal']);
				
			}	
		})	
	
	}
	else
	{
		alert('Please select greeting first');
	}
}

function addWrappingToCart(productId)
{
	selectedWrappingId =  $('#selectedWrapping_'+productId).val();
	wrappingType = $('input[name=wrappingType_'+productId+']:checked').val();
	if(!wrappingType)
	{
		wrappingType = 'std';
	}

	themeId = $('#themes_'+productId).val();
	if(selectedWrappingId != '' && selectedWrappingId >0)
	{
		$.ajax({
			url: 'index.php?route=checkout/cart/addWrappingToCart',
			type: 'post',
			data: '&id='+ productId+'&selectedWrappingId='+selectedWrappingId+'&themeId='+themeId+'&wrappingType='+wrappingType,
			dataType: 'json',
			beforeSend: function() {
				$('#giftwrapping_'+productId+' input[type=button]').after('<span class="loading">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
			},
			complete: function() {
			$('.loading').remove();
			},			
			success: function(json) {
				$('#row_'+productId+' .addOns').show();
				$('#addonPrice_'+productId).html(json['addOnPrice']);
				$('#giftwrapping_'+productId).hide();
				$('#total').html(json['cartTotal']);
			}	
		})	
	}
	else
	{
		alert('Please select greeting first');
	}
}

function loadAddress(productId ,addressFormat)
{
	if(!addressFormat)
	{
		addressFormat = '';
	}
	$('#addrNavDiv_'+productId).append('<span class="loader">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
	$('#addrDiv_'+productId).load('index.php?route=checkout/cart/getAddressBook&addressFormat='+addressFormat+'&productId='+productId,{},function(res){
		/*
			$('#addrDiv_'+productId+' li').bind('click', function(){
			console.log($(this))
		})*/
		$('#addrNavDiv_'+productId+' .loader').remove()
	});
}

function selectAddress(productId, addressId)
{
	$('#address_'+productId+'_'+addressId).addClass('selectActive')
	$('#selectedAddress_'+productId).val(addressId);
	
}
//--></script>
<?php } ?>
<?php echo $footer; ?>