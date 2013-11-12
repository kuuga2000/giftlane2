<!--div id="footer">
  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div> 

<div class="footerWrapper">
    <div class="footerBx">
            <div class="footerLogo"><a href="<?php echo $this->url->link('common/home'); ?>"><img src="image/footerlogo.png" width="82" height="82" alt="logo" /></a></div>
            <div class="footerNav">
                GIFTLANE CO.	
                <ul>
                    <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
                </ul>
            </div>
            <div class="footerNav">
                RETURN POLICY	
                <ul>
                    <?php foreach ($terms as $term) { ?>
          <li><a href="<?php echo $term['href']; ?>"><?php echo $term['title']; ?></a></li>
          <?php } ?>
                </ul>
            </div>
            <div class="footerNav">
                <ul>
                    <li></li>
                </ul>
            </div>
			
            <div class="join">
			
			<div id="subscibemessage" class="ftr_success" style="display:none;"></div>
			   <form name="subcribeEmail" id="subcribeEmail" method="POST" action="javascript:sunscribeEmail();" onsubmit=""> 
                <span>Subscribe to newsletter</span>	
                <input name="subscribe" id="subscribe" type="text" class="textFild2" value="" placeholder="Enter your email address"/>
	   			<input type="submit" class="submit" name="subscribeNews" value="">
				</form>
               <span> ELSEWHERE</span>
                <div class="social">
                    <a href="<?php echo $fb; ?>" class="fb" target="_blank"></a>
                    <a href="<?php echo $twitter; ?>" class="twit" target="_blank"></a>
                    <a href="<?php echo $tumbler; ?>" class="twit2" target="_blank"></a>
                    <a href="<?php echo $pinterest; ?>" class="p1" target="_blank"></a>
					<a href="<?php echo $instagram; ?>" class="IG" target="_blank"></a>
                </div>
				
            </div>
			
        </div>
<script language="javascript">
$(document).ready(function() {
$('#subcribeEmail').validate({ 
  wrapper: "span",
  onkeyup: false,
  rules:{
    subscribe:{
      required:true,
	  email:true,
	  remote:'index.php?route=account/account/ajaxCheckEmail'
     }
  },
  messages: {
    subscribe:{required:"Please enter email",'remote':'This email is alerady subscribed.'}  
  },
  success: function(label) {
  	var email=document.subcribeEmail.subscribe.value;
	   //sunscribeEmail(email);
	 
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
			$('#'+elementId).after('<span class="validInput"></span>')
	}
}

  });
  
 }); 
function sunscribeEmail(email)
{
	var email=document.subcribeEmail.subscribe.value;
	var data={subscribeEmail:email};
	   $.ajax({
        type:'GET',
        url:'index.php?route=account/account/newssubscribeEmail',
        dataType:'html',
        data:data,
        success:function(html){
			$("#subscibemessage").show();
            $("#subscibemessage").html(html); 
			$('#subscibemessage').delay(1500).fadeOut();            
        }
    });		
}	
$('input[type=\'text\']').keypress(function(){
	$(this).removeClass('error');
})
</script>
		
</div>
<div id="overlay" class="overlay"></div>

</div>
</body></html>