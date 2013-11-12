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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    
    <div class="content">
      <form action="" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              
              <td class="left">Email</td>
              <td class="right">Created</td>
            </tr>
          </thead>
          <tbody>
          <?php foreach($dataProvider as $data){?>
				<tr>
					<td class="left"><?php echo $data['email'];?></td>
					<td class="right"><?php echo date('d/m/Y', strtotime($data['created']));?></td>
					 
				</tr>
		 
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
	  <div class="pagination">
					<div class="links">
					
					<?
					if ($page > 1) {
						$prev = $page - 1;
						echo "<a href=" . $href . "&page=$prev class=previous>Previous</a>";
					} else {
						//echo "Previous";
					}
					?> <!--<a href="#" class="previous">Previous</a>-->
					<!-- END .pages -->
					
					<?

						for ($i = 1; $i <= $sumPage; $i++) {
							if ($i != $page) {

								echo "<a href=". $href ."&page=$i>$i</a>";
							} else {
								echo "<a class=active href=" . $href . "&page=$i>$i</a>";
							}
						}
						 
						?>  
					
					<?

					if ($page < $sumPage) {
						$next = $page + 1;
						echo "<a href=" . $href . "&page=$next class=next>Next</a>";
					} else {
						//echo "Next";
					}
					?> <!--<a href="#" class="next">Next</a>-->
					
					</div>
				</div>
      <!--<div class="pagination"><?php echo $pagination; ?></div>-->
    </div>
  </div>
</div>
<?php echo $footer; ?>