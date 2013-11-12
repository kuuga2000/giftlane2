<div class="content">
	 	<div class="addOutter"> 
		 <?php 
		 if($addresses) 
		 {
         ?>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="addr_book"><tr>
         <?php
         $column=1;
		 	foreach ($addresses as $key=>$value) { 
            	if($column%3 == 0)
                {
                echo '</tr><tr>';}
            ?>
                    <td valign="top">
                    <div class="com2box">
	                	<div class="alfa"><?php echo $key; ?></div>
	                    <ul>
						<?php foreach($value as $details) { ?>
<li id="address_<?php echo $productId; ?>_<?php echo $details['address_id']?>" onclick="selectAddress(<?php echo $productId; ?>,<?php echo $details['address_id']?>)" <?php if($details['address_id'] == $currentAddressId) { ?>class="selectActive" <?php } ?>><?php echo $details['title']; ?></li>
<?php }		?>
	                    </ul>
	                </div>
                    </td>
	            <!--<div class="abDiv">
	            	<div class="com2box">
	                	<div class="alfa"><?php echo $key; ?></div>
	                    <ul>
						<?php foreach($value as $details) { ?>
<li id="address_<?php echo $productId; ?>_<?php echo $details['address_id']?>" onclick="selectAddress(<?php echo $productId; ?>,<?php echo $details['address_id']?>)" <?php if($details['address_id'] == $currentAddressId) { ?>class="selectActive" <?php } ?>><?php echo $details['firstname'].' '.$details['lastname']; ?></li>
<?php }		?>
	                    </ul>
	                </div>
	            </div>-->
  			<?php $column++;} 
         
         ?>
         </tr>
         </table>
         <?php   
		 } 
		 else
		 { ?>
			 <span class="no_addre">You have no addresses under this selection.</span>
		<?php } ?>
		</div>
 </div>