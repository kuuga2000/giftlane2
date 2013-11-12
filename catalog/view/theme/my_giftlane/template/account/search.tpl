 <script type="text/javascript">

	function clickimg(id)
	{
		alert('hi');
		var submitId=id.value;
			alert(submitId);	
			$('#first').hide();						 	
		    $('#second').show();
				
	}		
</script>	
 
 <!--<form action="" method="post" enctype="multipart/form-data">
    <h2></h2>
   
      <table align="center">
        <tr>
          <td><span class="required">*</span><font color="#fff9f9"><?php echo $entry_firstname; ?></font>
		  <input type="hidden" name="submitId" value="1"/>
		  </td>
          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
            <?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span><font color="#fff9f9"><?php echo $entry_lastname; ?></font></td>
          <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            <?php if ($error_lastname) { ?>
            <span class="error"><?php echo $error_lastname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span><font color="#fff9f9"><?php echo $entry_email; ?></font></td>
          <td><input type="text" name="email" value="<?php echo $email; ?>" />
            <?php if ($error_email) { ?>
            <span class="error"><?php echo $error_email; ?></span>
            <?php } ?></td>
        </tr>
       
		<tr>
		 <td colspan="2" align="center"><input type="button" value="<?php echo $button_continue;  ?>" name="search"  /></td>
		</tr>
      </table> 
   </form>-->
   
   <div id="first" name="first">It is a <select onchange="clickimg(this);"><option>Merraige</option><option>Engagemenet</option></select></div>
       
<div id="second" name="second" style="display: none">sandeep</div>