<?php echo $header; ?>

<div id="content"> 
  
  <!--<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>-->
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="cart_empty">
    <h1><?php echo $text_error; ?></h1>
  </div>
</div>

<?php echo $footer; ?>