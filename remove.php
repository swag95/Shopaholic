<?php
//Start the session to see if the user is authenticated user. 
session_start(); 

//Check if the user is authenticated first. Or else redirect to login page 
if(isset($_SESSION['IS_AUTHENTICATED']) && $_SESSION['IS_AUTHENTICATED'] == 1)
{ 
 	echo '<a href="logout1.php" style="text-decoration:none;font-size:20px;color:red;">Logout</a>';
		echo '<a href="front1.html" style="text-decoration:none;font-size:20px;color:blue;">Continue Shopping!</a>';
 $iid=$_POST['id'];
 echo $iid;
if ($_POST['submit'] == 'REMOVE FROM CART')
 { 
 //echo $iid;
 
 //Connect to mysql server 
 $link = mysqli_connect('localhost', 'root', '');
 //Check link to the mysql server
 if(!$link){ die('Failed to connect to server: ' . mysqli_error()); } 
 //Select database
 $db = mysqli_select_db($link,'SHOPAHOLIC'); 
 if(!$db){ die("Unable to select database"); }
 $delete = "DELETE FROM CART_ITEM WHERE CART_ID = $iid";
//Execute query
 $results = mysqli_query($link, $delete); 
 if($results == FALSE) echo mysqli_error($link) . '<br>'; 
else {
	//echo 'Data deleted from the cart successfully'; 
	header('location:view_cart.php');}}
}

else
{
	echo 'gADHO';
 //header('location:customregi.php'); 
 exit();
}
?>