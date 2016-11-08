<?php
if(isset($_GET['add_cart'])){
	$cust=$row['customer_id'];
	$pro_id=$_GET['add_cart'];
	$check_pro="SELECT * FROM CART WHERE CART_ID='$pro_id' AND Customer_id='$cust';
	$run_check=mysqli_connect($link,$check_pro);
	if(mysqli_num_rows($run_check)>0){
		echo ''
		
	}
	else{
		$insert_pro=ïnsert into cart(Card_id,customer_id)values($pro_id,$cust);
	    $run_pro=mysqli_query($link,$insert_pro);
		echo '<script>window.open('front.html','_self')</script>';
		
	}

}
?>