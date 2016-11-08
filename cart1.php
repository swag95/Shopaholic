<?php
//Start the session to see if the user is authenticated user. 
session_start(); 

//Check if the user is authenticated first. Or else redirect to login page 
if(isset($_SESSION['IS_AUTHENTICATED']) && $_SESSION['IS_AUTHENTICATED'] == 1)
{ 
 $iid=$_POST['id'];
 $_SESSION['pid']=$iid;
 echo 	$iid.'<br>';
 $email=$_SESSION['email'];
 //echo $id;
 $quant = $_POST['quant'];
 $cid=2;
 // echo $quant;
// Code to be executed when 'Insert' is clicked. 
//if ($_POST['submit'] == 'submit')
//{ 
  /*if(!($_POST['quantity']))
   { 
   echo 'All the fields marked as * are compulsary.<br>'; 
   } 
   else{ */
   
  
   //} 
//} 

{ //Connect to mysql server 
$link = mysqli_connect('localhost', 'root','');
 //Check link to the mysql server 
 if(!$link){
	 die('Failed to connect to server: ' . mysqli_error()); 
	 } 
	 //Select database
	 $db = mysqli_select_db($link, 'SHOPAHOLIC'); 
	 if(!$db){ 
	 die("Unable to select database"); 
	 }
	 //echo $quant;
  $query1="SELECT PRODUCT_PRICE FROM PRODUCT WHERE PRODUCT_ID = $iid";
  $result1 = mysqli_query($link, $query1);
  while ($row1 = mysqli_fetch_assoc($result1)){
	  $price = $row1['PRODUCT_PRICE'];
	  
	  
  }
  echo $price;
  $query2="SELECT CUSTOMER_ID FROM CUSTOMER WHERE EMAIL_ID ="."'"."$email"."'";
  $result2 =  mysqli_query($link, $query2);
   while ($row2 = mysqli_fetch_assoc($result2)){
	  $id = $row2['CUSTOMER_ID'];
	  
  }
  $_SESSION['user']=$id;
  $cartitem='2334';
  $date='2016-04-07';
  $tprice=$query1*($quant);
	 //Create Insert query
	 $query = "INSERT INTO CART_ITEM(CART_ITEM_ID,CART_ID,CUSTOMER_ID,QUANTITY,TOTAL_COST,DELIVERY_DETAILS)VALUES($cartitem,$iid,$cid,$quant,$tprice,$date)";	 //Execute query 
	 $results = mysqli_query($link, $query);
    
	 //Check if query executes successfully 
	 if($results == FALSE) 
		 //echo 'hello';
		 echo mysqli_error($link) . '<br>'; 
	 else {
		 echo 'Product Added Successfully! ';
	     header('location:view_cart.php');exit(); 
	 } 
	 } 
	 

 // Code to be executed when 'Delete' is clicked. 
  }
 else{ 
 echo $_SESSION['IS_AUTHENTICATED'];
 //header('location:customregi.php'); 
 exit(); 
 }
 ?>