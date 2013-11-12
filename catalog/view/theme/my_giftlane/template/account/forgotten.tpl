<?php echo $header; ?>
<div id="content">
<div class="box-heading"><?php echo "FORGOT PASSWORD"; ?></div>
<div class="forgotBx">
    <h1>Forgot Your Password?</h1>
	<?php  if(isset($success) && $success !='') { ?>
	<span class="thank">Thanks! Please Check Your Email.</span></div>
	<?php }else{ ?>
	    <form action="<?php echo $action; ?>" method="post" id="forgotPassword" enctype="multipart/form-data">
     <p>Don't worry! Just enter your email address below.</p>
			<p>We will send you a link to create a new one.</p>
			<?php if(isset($error_warning)){ ?>
	        <div class="info-red"><?php echo $error_warning ?></div>
	        <?php } ?>
			
			<div class="varow">
			<div class="fixOutter">
			<input type="text" value="" placeholder="Email address" id="emailadd" class="textFild3 wdth" name="email"></div>
	        </div>
			<div class="varow">
			
	        <input type="submit" value="SUBMIT" onclick="" id="submit" class="comButton tp" name="Submit" />    
			</div> 
	    </form>
	<?php } ?>	
 </div>
 <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 

<script type="text/javascript">
//----------------- Jquery validation added by gaurav on 28-june-13
$(document).ready(function(){
	
    
	$('#submit').click(function(){
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var emailadd = $('#emailadd').val();
		if(emailadd==''){
			$('#emailadd').attr('placeholder','Please enter email address');
			$('#emailadd').addClass('error');
			return false;
		}
		
		/*
		if(emailReg.test( $emailadd ) ) {
			 
			$('#emailadd').attr('placeholder','Please enter valid email');
			$('#emailadd').addClass('error');
			return false;
		}*/
		
		 
		
		
	});

$('#forgotPassword').validate({ 
  wrapper: "span",
  //errorClass: "error",
  onkeyup: false,
  rules:{
     email:{
     required:true,
     //email:true
     }
  },
  messages: {
    email:{required:"Please enter email address"}
    //email:{required:"Please enter email address"}
  }
  });
  //----- adding place holder 
  //$('.error').hide();
 
  //$('input[placeholder],textarea[placeholder]').placeholder();
  
});
	
</script> 
