<?php
function getpro(){
	$link= mysqli_connect('localhost', 'root', '');
	$get_pro="SELECT * from PRODUCT WHERE PRODUCT_ID BETWEEN 3000 AND 4000;";
	$run_pro=mysqli_query($link,$get_pro);
	while($run_pro=mysqli_fetch_array($run_pro)){
		$pro_id=$row_pro['PRODUCT_ID'];
		$pro_model=$row_pro['PRODUCT_MODEL'];
		$pro_price=$row_pro['PRODUCT_PRICE'];
		$pro_name=$row_pro['PRODUCT_NAME'];
		$pro_image=$row_pro['PRODUCT_IMAGE'];
		$pro_quan=$row_pro['PRODUCT_QUANTITY'];
		$pro_spec=$row_pro['SPECIFICATION'];
	}
	
	
	
	
	echo '<div id="single_product">
	<h3>$pro_title</h3>
	<img src="shopaholic/$pro_image" width="180" height="180"/>
	<p><b> $pro_price</b></p>';
	?>