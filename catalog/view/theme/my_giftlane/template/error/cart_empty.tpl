<?php echo $header; ?>

<div id="content"> 
  
  <!--<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>-->
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="cart_empty">
    <h1><!--<?php echo $text_error; ?>-->Your cart is empty.</h1>
    You have no item in your shopping cart.
    <div class="continue_shop">
      <a href="<?php echo $continue; ?>" class="button">Continue shopping</a>
    </div>
  </div>
</div>

<?php echo $footer; ?>