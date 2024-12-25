<?php include 'inc/header.php';?>

 <div class="main">
    <div class="content">

    <div class="content_top">
    		<div class="heading">
    		<h3>Fruits<r/h3>
    		</div>
    		<div class="clear"></div>
    	</div>

			<div class="section group">
            <?php
	      	$getTop4 = $pd->getTopbrandIphone();
	      	if ($getTop4) {
	      		while ($result = $getTop4->fetch_assoc()) { 
	      
	      			
	      	?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					 <h2><?php echo $result['productName']; ?></h2>
					 <p><?php echo $fm->textShorten($result['body'],60); ?></p>
					 <p><span class="price">Ugx.<?php echo $result['price']; ?></span></p>
				      <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Details</a></span></div>
				</div>
				<?php } } ?>

			</div>
    	<div class="content_top">
    		<div class="heading">
    		<h3>Cattle<r/h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">

	      	<?php
	      	$getTop1 = $pd->getTopbrandAcer();
	      	if ($getTop1) {
	      		while ($result = $getTop1->fetch_assoc()) { 
	      
	      			
	      	?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					 <h2><?php echo $result['productName']; ?></h2>
					 <p><?php echo $fm->textShorten($result['body'],60); ?></p>
					 <p><span class="price">Ugx.<?php echo $result['price']; ?></span></p>
				      <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Details</a></span></div>
				</div>
				<?php } } ?>
				
			</div>
		<div class="content_bottom">
    		<div class="heading">
    		<h3>Fresh Vegatables</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
            <?php
	      	$getTop2 = $pd->getTopbrandSamsung();
	      	if ($getTop2) {
	      		while ($result = $getTop2->fetch_assoc()) { 
	      
	      			
	      	?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					 <h2><?php echo $result['productName']; ?></h2>
					 <p><?php echo $fm->textShorten($result['body'],60); ?></p>
					 <p><span class="price">Ugx.<?php echo $result['price']; ?></span></p>
				      <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Details</a></span></div>
				</div>
				<?php } } ?>
				
			</div>
	<div class="content_bottom">
    		<div class="heading">
    		<h3>Goats</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">


					<?php
	      	$getTop3 = $pd->getTopbrandCanon();
	      	if ($getTop3) {
	      		while ($result = $getTop3->fetch_assoc()) { 
	      
	      			
	      	?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					 <h2><?php echo $result['productName']; ?></h2>
					 <p><?php echo $fm->textShorten($result['body'],60); ?></p>
					 <p><span class="price">Ugx.<?php echo $result['price']; ?></span></p>
				      <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Details</a></span></div>
				</div>
				<?php } } ?>
				
			</div>
    </div>
 </div>
<?php include 'inc/footer.php';?>