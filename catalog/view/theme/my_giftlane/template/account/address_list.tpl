<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
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
		 <h1 class="rbtitle">ADDRESS BOOK</h1>
		 <span class="look_up">Look Up or Edit &nbsp;&nbsp; </span><a href="<?php echo $aToh;?>">A-H</a> | <a href="<?php echo $iTop;?>">I-P</a> | <a href="<?php echo $qToz;?>">Q-Z</a>
		 <a href="<?php echo $insert; ?>" class="look_up" style="float: right; margin-right:150px;">Add new address</a>
		 <div class="content">
		 	 <?php 
			 if($addresses) {
			 foreach ($addresses as $key=>$value) { ?>
             
             
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50%">
    	
        <table style="width: 100%;" class="acc_addre_book">
      <tr>
        <td width="11%" valign="top"><h1><?php echo $key; ?></h1></td>
		<td align="" valign="top">
			<?php foreach($value as $details) { ?>
       <a href="index.php?route=account/address/update&address_id=<?php echo $details['address_id']?>" class="button"><?php echo $details['title']; ?></a><br/>
		<?php }?></td>
      </tr>
    </table>
    
    </td>
    <!--<td>
    
    <table style="width: 100%;" class="acc_addre_book">
      <tr>
        <td width="11%" valign="top"><h1><?php echo $key; ?></h1></td>
		<td align="" valign="top">
			<?php foreach($value as $details) { ?>
       <a href="index.php?route=account/address/update&address_id=<?php echo $details['address_id']?>" class="button"><?php echo $details['firstname'].' '.$details['lastname']; ?></a><br/>
		<?php }?></td>
      </tr>
    </table>
    
    </td>-->
  </tr>
</table>

    
  	<br/>
  <?php } } else {?>
   <span class="no_addre" style="margin-top:15px;">You have no addresses under this selection.</span>
  <?php } ?>
  </div>
 	</div>
	
  </div>	
  <?php echo $content_bottom; ?></div>

<?php echo $footer; ?>