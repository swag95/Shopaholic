<body bgcolor="cyan">

<?php 
//Start the session to see if the user is authencticated user. 
session_start();
 //Check if the user is authenticated first. Or else redirect to login page 
 if(isset($_SESSION['IS_AUTHENTICATED']) && $_SESSION['IS_AUTHENTICATED'] == 1)
 { //require('menu.php');
 //Connect to mysql server
 $link = mysqli_connect('localhost', 'root', ''); 
 //Check link to the mysql server 
 if(!$link){ 
 die('Failed to connect to server: ' . mysqli_error()); } 
 //Select database
 $db = mysqli_select_db($link,'SHOPAHOLIC'); 
 if(!$db){ die("Unable to select database"); } 
 //Create query
 $cid=2;
 $pid=$_SESSION['pid'];
 //$qry1="SELECT PRODUCT_IMAGE , PRODUCT_NAME FROM PRODUCT WHERE PRODUCT_ID=$pid";
 //$result1 = mysqli_query($link, $qry1);
 $sum=0;
 $qry = "SELECT CART_ITEM.QUANTITY,CART_ITEM.DELIVERY_DETAILS,PRODUCT.PRODUCT_IMAGE,PRODUCT.PRODUCT_ID,PRODUCT.PRODUCT_NAME , PRODUCT.PRODUCT_PRICE FROM CART_ITEM , PRODUCT WHERE PRODUCT.PRODUCT_ID = CART_ITEM.CART_ID AND CUSTOMER_ID=$cid";
 //Execute query
 $result = mysqli_query($link,$qry);
 echo '<a href="logout1.php" style="text-decoration:none;font-size:20px;color:blue;">Logout</a>';
		echo '<a href="front1.html" style="text-decoration:none;font-size:20px;color:blue;float:right;">Continue Shopping!</a>';
 echo '<center><h1> - CART - </h1>';
 //Draw the table for Players
 echo '<table border="1" align="center"> <th>ITEM</th> 
 <th>QTY</th> <th>PRICE</th> <th>DELIVERY DETAILS</th>'; 
 //Show the rows in the fetched resultset one by one
 while ($row = mysqli_fetch_assoc($result) ) 
 { 
$sum = $sum + $row['PRODUCT_PRICE'];
echo '<tr><td align="center"><img src = "images/'.$row['PRODUCT_IMAGE'].'" height="300" width="150"></a><br/>'.$row['PRODUCT_NAME'].'</td> <td>'.$row['QUANTITY'].'</td> <td>'.$row['PRODUCT_PRICE'].'</td>

<td>'.$row['DELIVERY_DETAILS'].'</td>
<form name="cart" method="post" action="remove.php">
	<td><table><tr><td><input type="submit" name="submit" value="REMOVE FROM CART"></td>
	<td><input type="hidden" name="id" value="';?><?php echo $row['PRODUCT_ID'];?><?php echo '"</td>
	</tr></table></td></form>
	</tr>'; }
echo '<tr><th>TOTAL COST</th><td colspan="3">'.$sum.'</td>';
echo '<tr><td colspan="4" align="center"><a href = "payment.php">PAY NOW</a></td></tr>';
	echo '</table>'; } 
 
 ?>
 </body>