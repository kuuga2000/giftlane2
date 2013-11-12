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
		<h1 class="rbtitle">PROFILE</h1>
		<?php if ($error_warning) { ?>
			<div class="warning" style="clear: both"><?php echo $error_warning; ?></div>
		 <?php } ?>
		 <?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
			<?php } ?>
		<div class="addNew">			 
			 <form name="editFrm" id="editFrm" method="POST" action="">
	       <div class="fixOutter">
		   <input onblur="checkValid()" name="firstname"  id="firstname" text" class="fieldRow" value="<?php echo $firstname; ?>" placeholder="<?php if($this->data['error_firstname']!="") { echo $this->data['error_firstname'];} else {?> First Name*<?php } ?>" />
		   <span id="valid_firstname" style="display:none;" class="validInput"/>
			</div>
			
			<div class="fixOutter">
		   <input onblur="checkValid()" name="lastname" id="lastname" type="text" class="fieldRow" value="<?php echo $lastname; ?>" placeholder="<?php if($this->data['error_lastname']!="") { echo $this->data['error_lastname'];} else {?> Last Name*<?php } ?>"/>
			<span id="valid_lastname" style="display:none;" class="validInput"/>
			</div>
			<div class="fixOutter">
		   <input onblur="checkValid()" name="email" id="email" type="text" class="fieldRow" value="<?php echo $email; ?>" placeholder="<?php if($this->data['error_email']!="") { echo $this->data['error_email'];} else {?> Email Address*<?php } ?>"/>
	        <span id="valid_email" style="display:none;" class="validInput"/>
			</div>
			<label>Gender</label>
	        <div class="relet genderItem">
	        <select name="gender" class="Items" id="gender">
	            <option value="">Select Gender</option>
	            <option value="Male" <?php if($gender=='Male') echo "selected"; ?>>Male</option>
				<option value="Female" <?php if($gender=='Female') echo "selected"; ?>>Female</option>
	          </select>
	          </div>
	           <label>Date of Birth (DD/MM/YY)</label>
	            <div class="dob" style="margin-bottom: 20px;">
	            	<!--<input name="day" type="text" class="fieldRow60" value="<?php echo $birth_day;?>" placeholder="Day" onkeypress="return keyRestrict(event,'0123456789');" maxlength="2"/>
	                <span>/</span>
	                <input name="month" type="text" class="fieldRow60" value="<?php echo $birth_month;?>" placeholder="Month" onkeypress="return keyRestrict(event,'0123456789');" maxlength="2"/>
	                <span>/</span>
	                <input name="year" type="text" class="fieldRow60" value="<?php echo $birth_year;?>" placeholder="Year" onkeypress="return keyRestrict(event,'0123456789');" maxlength="4"/>-->
					
					<?php 
					$days='';
					for($days=0;$days <= '31';$days++){
														if($days=='')
														{
															$day['']='Day';
														}
														else
														{
															$day[$days]=$days;
														}
														
													} ?>
					<div class="dayItem">
					<select name="day" class="Items" id="day">
					<?php 
					 foreach($day as $days)
					{
					?>
		                <option value="<?php echo $days;?>" <?php if($days==$birth_day) echo "selected"; ?>><?php echo $days;?></option>
					<?php } ?>
					
		          </select></div>
				  <?php 
					$months='';
					for($months=0;$months <= '12';$months++){
														if($months=='')
														{
															$month['']='Month';
														}
														else
														{
															$month[$months]=$months;
														}
														
													} ?>
				<div class="monthItem">
				  <select name="month" class="Items" id="month">
		           <?php 
					 foreach($month as $mon)
					{
					?>
		                <option value="<?php echo $mon;?>" <?php if($mon==$birth_month) echo "selected"; ?>><?php echo $mon;?></option>
					<?php } ?>
		          </select>
				   </div>
				  <?php
						$years = range(1980,date("Y"));	
						$year_list['']	='Year';	
						foreach($years as $year)
						{
							$year_list[$year] = $year;
						}?>
						<div class="yearItem">
					<select name="year" class="Items" id="year">
				    <?php 
					 foreach($year_list as $year)
					{
					?>
		                <option value="<?php echo $year;?>" <?php if($year==$birth_year) echo "selected"; ?>><?php echo $year;?></option>
					<?php } ?>
		           
		          </select>
	               </div>
	            </div>
	         <input type="hidden" name="updateDetails" value="1"/>
	        <input type="button" name="" class="comButton mr46 " onclick="$('#editFrm').submit()" value="SAVE" /> 
			   </form>
	            <h1 class="mr23">Account Password</h1>
				 <form name="editPass" id="editPass" method="POST" action="">
	            <input name="currentPass" id="currentPass" type="password" class="fieldRow" value="" placeholder="Current Password*"/>
	            <input name="newPass" id="newPass" type="password" class="fieldRow" value="" placeholder="Password*"/>
	            <input name="confirmPass" id="confirmPass" type="password" class="fieldRow" value="" placeholder="Confirm Password*"/>
				 <input type="hidden" name="changepass" value="1"/>
	            <input type="button" name="" class="comButton mrt22" onclick="$('#editPass').submit()" value="SAVE" />
				</form>
       </div>
	</div>
   </div>	
<script language="javascript">

function checkValid(productID){
	var firstname = $('#firstname').val();
	var lastname = $('#lastname').val();
	
	var email = $('#email').val();
	
	if(firstname!==''){
			$('#valid_firstname').show();
	}
	
	if(lastname!==''){
			$('#valid_lastname').show();
	}
	 
	if(email!==''){
			$('#valid_email').show();
	}
	
	
	//return false;
}


$(document).ready(function() {
	$('.Items').selectbox();
 $('#editFrm').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
    firstname:{
      required:true,
	  minlength:1,
	  maxlength:32
     },
    lastname:{
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
     remote:'index.php?route=account/edit/ajaxCheckEmail',
     email:true
     }
  },
  messages: {
    firstname:{required:"Please enter your first name"}, 
    lastname:{required:"Please enter your last name"}, 
    password:{required:"Please enter password"}, 
    confirm:{required:"Please enter confirm password",'equalTo':'Passwords does not match'}, 
    email:{required:"Please enter email address",'remote':'This email id is already exists'}
  },
  success: function(label) {
			// set &nbsp; as text for IE
		/*	console.log(label);
			label.html("&nbsp;").addClass("success");*/
 }	,
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
 /*errorPlacement: function(error, element) {
 	//console.log(error.text());
	//console.log(element.context.id);
	 elementId = element.context.id;
	if(error.text() != '')
	{
	   $('#'+elementId).val(error.text());
	   //$('#'+elementId).attr('placeholder',error.text());
	}
	else
	{
		$('#'+elementId).append('<span class="validInput"></span>')
	}
}*/
  });
 
$('#editPass').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
    currentPass:{
      required:true,
	  remote:'index.php?route=account/edit/ajaxCheckPass'
     },
    newPass:{
      required:true,
	   minlength:5
     }, 
    confirmPass:{
     required:true,
	 equalTo:"#newPass"
     }
    
  },
  messages: {
    currentPass:{required:"Please enter current password",'remote':'Incorrect password'}, 
    newPass:{required:"Please enter new password"}, 
    confirmPass:{required:"Please confirm password",'equalTo':'Passwords does not match'}, 
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
	   $('#'+elementId).val('');
	   $('#'+elementId).attr('placeholder',error.text());
	    $('#fixOutter_'+elementId+  ' span ').remove();
	}
	else
	{
		 
		if(element.context.childElementCount == 0)
	$('#fixOutter_'+elementId + " input ").after('<span class="validInput"></span>')
    }
}
  });  
   $('input[placeholder],textarea[placeholder]').placeholder();
  });	
  
</script>	
	
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>