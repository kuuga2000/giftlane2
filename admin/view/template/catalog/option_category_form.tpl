<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/information.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            	<td><span class="required">*</span> Option Category Name</td>
        	    <td>
			  		<input type="text" name="option_name" value="<?php echo $option['strOptionName']; ?>" id="option_name"  />
				</td>
          </tr>
			<!--<tr>
			<td><span class="required">*</span> Option Category Value</td>
			<td><input type="text" name="option_value" value="<?php echo $option['strOptionValue']; ?>" id="option_value"  /></td></tr>-->
			<tr>
            <td>Type</td>
            <td>
				<select name="type">
					<option value="color" <?php if($option['strOptionType'] == "color") echo "selected= 'selected'";?>>Color</option>
					<option value="size" <?php if($option['strOptionType'] == "size") echo "selected= 'selected'";?> >Size</option>
              </select></td>
          </tr>
		  <tr>
            <td>Status</td>
            <td>
				<select name="status">
					<option value="active">Active</option>
					<option value="inactive">Inactive</option>
              </select></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>