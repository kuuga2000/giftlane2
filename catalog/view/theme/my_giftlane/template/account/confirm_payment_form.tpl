<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/javascript/jquery/dhtmldate/dhtmlxcalendar.css" type="text/css">
<link rel="stylesheet" href="catalog/view/javascript/jquery/dhtmldate/dhtmlxcalendar_dhx_skyblue.css" type="text/css">
<script src="catalog/view/javascript/jquery/dhtmldate/dhtmlxcalendar.js"></script>
<div id="content">
 <div class="box-heading"><?php echo $heading_title; ?></div>
 <div class="myAc">
 	<div class="leftBar leftBar_sm">
	<?php echo $column_left; ?>
	</div>
	<div class="rightBox rightBox_bg">
		<div class="">
			<form action="<?php echo $action; ?>" id="paymentConfirmForm" method="post" enctype="multipart/form-data">
			    <h1>Confirm Payment</h1>
			      <table class="form" style="margin-top: 5px;">
			        <tr>
			          <td>Order Id  :  <label><?php echo $order_id; ?></label></td>
			        </tr>
			        <tr>
			          <td ><div style="margin:10px 0px 0px 0px">Payment to</div><br>
			            <select name="payment_to" id="payment_to">
			                <option value="Transfer Bank BCA">Transfer Bank BCA</option>
			                <option value="Transfer Bank Mandiri">Transfer Bank Mandiri</option>
			                
			            </select>
			              </td>
			        </tr>
			      <tr>
			          <td >
					  <div class="fixOutter">
					  <input type="text" onblur="checkValid()" class="fieldRow" placeholder="Payment From*" name="payment_from" id="payment_from" value="" />
			            <span id="valid_payment_name" style="display:none;" class="validInput"/>
						</div>
						<?php if ($error_payment_from) { ?>
			            <br><span class="error"><?php echo $error_payment_from; ?></span>
			            <?php } ?></td>
			        </tr>
			      <tr>
			         <td >
					 <div class="fixOutter">
					 <input type="text" onblur="checkValid()" class="fieldRow" placeholder="Account name*" name="account_name" id="account_name" value="" />
			          <span id="valid_account_name" style="display:none;" class="validInput"/>
			          <?php if ($error_account_name) { ?>
			             <br><span class="error"><?php echo $error_account_name; ?></span>
			            <?php } ?>
						</div>
			          </td>
			        </tr>
			        <tr>
			         <td ><input type="text" class="fieldRow" name="total_amount_read" placeholder="Total amount" value="<?php echo number_format($total_amount,0,',','.'); ?>" readonly="readonly" />
					  <input type="hidden" name="total_amount" value="<?php echo $total_amount; ?>" />
			          
			          <?php if ($error_total_amount) { ?>
			            <br> <span class="error"><?php echo $error_total_amount; ?></span>
			            <?php } ?>
			             <?php if ($error_total_amount_less) { ?>
			             <br><span class="error"><?php echo $error_total_amount_less; ?></span>
			            <?php } ?>
			          </td>
			        </tr>
			       
			       	<tr>
					     <td >
						 <div class="fixOutter">
						 <input type="text" onblur="checkValid()" placeholder="Payment date*" name="payment_date" id="payment_date" value="<?php echo $payment_date; ?>" class="fieldRow" style="width:275px !important;"/> <span><img id="calendar_icon" src="image/datepicker.png" border="0"></span>
								<?php if ($error_payment_date) { ?>
					            	<br> <span class="error"><?php echo $error_payment_date; ?></span>
					            <?php } ?>
								<span id="valid_payment_date" style="display:none;" class="validInput"/>
								</div>
						</td>
				    </tr>
					<tr>
			             <td align="center">
							 <input type="hidden" value ="<?php echo $order_id; ?>" name="order_id" />
							 <input type="button" name="" class="comButton mr46 " onclick="$('#paymentConfirmForm').submit()" value="CONFIRM" />
				         	<!--<input type="submit" value="Confirm" class="confirm_btn" name="submit"/>-->
						 </td>
		      
					</tr>
			      
			      </table>
			  </form>
		</div>
	</div>
 </div>
 
 
 
 
  <?php echo $content_bottom; ?>
  	
  </div>

<?php echo $footer; ?>
<script type="text/javascript">


function checkValid(){
	
	var payment= $('#payment_form').val();
	var account_name = $('#account_name').val();
	var payment_date = $('#payment_date').val();
	
	
	if(payment!==''){
		$('#valid_payment_name').show();
	}
	if(account_name!==''){
		$('#valid_account_name').show();
	}
	if(payment_date!==''){
		$('#valid_payment_date').show();
	}
}	

 $('#paymentConfirmForm').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
    payment_from:{
      required:true,
     },
    account_name:{
      required:true
     }, 
    payment_date:{
     required:true
     }
  },
  messages: {
    payment_from:{required:"Please enter Payment from"}, 
    account_name:{required:"Please enter account name"}, 
    payment_date:{required:"Please choose payment date"}
  },
  success: function(label) {
			// set &nbsp; as text for IE
		/*	console.log(label);
			label.html("&nbsp;").addClass("success");*/
 }	,
 errorPlacement: function(error, element) {
 	//console.log(error.text());
	//console.log(element.context.id);
	 elementId = element.context.id;
	if(error.text() != '')
	{
	   //$('#'+elementId).val(error.text());
	   $('#'+elementId).addClass('error');
	   $('#'+elementId).attr('placeholder',error.text());
	}
	else
	{
		$('#'+elementId).append('<span class="validInput"></span>')
	}
}
  });

$('#payment_to').selectbox({});
maxDate = new Date();
$(document).ready(function(){
	var dateToday = new Date();
	var myCalendar = new dhtmlXCalendarObject({input: "payment_date", button: "calendar_icon"});
	myCalendar.setSensitiveRange(null, dateToday);
	/*$('#payment_date').datepicker({
	      dateFormat: 'dd-mm-yy',
		  showOn: "both",
		  maxDate: maxDate,
	      buttonImage: "image/datepicker.png",
	      buttonImageOnly: true});*/
	
})

</script>	