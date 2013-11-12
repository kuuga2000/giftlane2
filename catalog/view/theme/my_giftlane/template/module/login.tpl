<form method="POST" onsubmit="" action="<?php echo $loginAction; ?>" id="loginFormModule" name="loginFormModule">
	<h1 class="logtitle">Please login</h1>
	<div class="warning" id="invalidUsers"  style="clear: both; display: none;">Invalid email or password</div>
	<div class="varow" id="fixOutter_loginEmail"><input name="email" id="loginEmail" type="text" class="textFild3" value="<?php echo $email; ?>" placeholder="Email Address*" /></div>
	 <div class="varow" id="fixOutter_loginPassword"><input name="password" id="loginPassword" type="password" class="textFild3" value="<?php echo $password; ?>" placeholder="Password*" /></div>
	 <input  type="hidden" name="loginFormSubmitted" value="1"/>
	 <div class="varow mrbot" >
	 <div class="skin skin-minimal">
	         <input tabindex="5" type="checkbox" value="1" checked="checked" name="rememberMe" id="minimal-checkbox-1">
	     </div><span style="padding-left:10px;">Remember Me</span></div>
	 <div class="varow mrbot"><span><a href="<?php echo $forgotPassword; ?>">Forgot password?</a></span></div>
	 <input type="submit" value="LOGIN" id="submitButton" class="comButton" name="Submit" />  
</form>

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
<script type="text/javascript">
function validateUser()
{
	rememberMe = 0;
	if($('input[name="rememberMe"]:checked').val())
	{
		rememberMe = 1;
	}
	
	$.ajax({
	  url: 'index.php?route=module/login/validateLogin&email=' + $('#loginEmail').val()+'&password='+$('#loginPassword').val()+'&rememberMe='+rememberMe,
	  beforeSend: function() {
	   $('#submitButton').after('<div class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></div>');
	  },
	  complete: function() {
	   $('.wait').remove();
	  },   
	  success: function(res) {
	  	if(res == 0)
		{
			$('#invalidUsers').show();
		}
		else
		{
			$('#invalidUsers').hide();
			window.location.href = 'index.php?route=common/home';
		}
	  }	
  });	  
  return false;
}
$(document).ready(function() {
	
$('#loginFormModule').validate({ 
  wrapper: "span",
  errorClass: "error",
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
   submitHandler: function(form) {
   validateUser()
   },
  success: function(label) {
			// set &nbsp; as text for IE
		/*	console.log(label);
			label.html("&nbsp;").addClass("success");*/
 }
 	,
 errorPlacement: function(error, element) 
 {
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
			$('#fixOutter_'+elementId + " input ").after('<span class=""></span>')
	}
}


  });
  //----- adding place holder 
  $('input[placeholder],textarea[placeholder]').placeholder();
  $('.skin-minimal input').iCheck({
	checkboxClass: 'icheckbox_minimal',
	radioClass: 'iradio_minimal',
	increaseArea: '20%'
});

});
</script>