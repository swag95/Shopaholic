 
<html>
<head>
<title>Seller page</title>
<style type="text/css">

 


p{
	
	text-align: center;
	font-size:20px;
	font-family: comic sans ms;
	
}

body{
	
	background-color:#7FFFD4;
	background-repeat:no-repeat;
	background-size:100%;
	
	
}

img{
  margin: 20px;	
  width:350px;
  height:300px;
  float:right;
	
}
.top {
	background:#222;
	height:50px;
	line-height:50px;
	width:100%;
	box-shadow:0 1px 2px rgba(0,0,0,0.6);
	margin-bottom:20px;

}
.top_content {
	width:680px;
	margin:0 auto;
	text-align:center;
	font-size:15px;
	top:30px;
	text-transform:uppercase;	
}
.top_content a {
	color:#aaa;
	text-decoration:none;
	mrgin-top:20px;
	font-size:25px;
}
.top_content a:hover {
	color:#fff;
}

.top a {
	-moz-transition:color 0.3s ease-out;
	-webkit-transition:color 0.3s ease-out;
	-o-transition:color 0.3s ease-out;
	-ms-transition:color 0.3s ease-out;
	transition:color 0.3s ease-out;
}

.top ul
{
	
		display: block;
}

</style>
</head>
<body>
<div class="top">
	<div class="top_content">
	<ul type="none"><li><a href="front.html" style="letter-spacing:5px">SH&hearts;paholic</a></li>
	<li><a href="logout.php" style="float:right;margin:0 auto;">LOGOUt</a></li></ul>
    </div>
</div>

  
<?php
session_start();

echo '<p>Welcome  '.$_SESSION['user_id'].' Insert Product here!</p>';


	echo
		'<form action="edit_products.php" method="post"><table align="center" width="1000" border="2">
		<tr align="center"><td colspan="8"><h2>Insert product here</h2></td></tr>
		<tr align="center"><td><b>product id</td>
		<td><input type="text" name="id"></tr>
		<tr align="center"><td><b>product category</td>
		<td><select name="product_cat">
			<option>Select Category</option>
			<option>Mobiles</option>
			<option>Laptops</option>
			<option>Mobile Accessories</option>
			<option>Men Footwear</option>
			<option>Men Clothing</option>
			<option>Women Clothing</option>
			<option>Women Footwear</option>
			<option>Kids Apparel</option>
			<option>School Supplies</option>
			<option>Literature and Fiction</option>
			<option>Biographies</option>
			</select></td></tr>
			
		<tr align="center"><td><b>product brand</b>	</td>
		<td><select name="product_brand">
			<option>Select Brand</option>
			<option>American Swann</option>
			<option>Apple</option>
			<option>Asus</option>
			<option>Catwalk</option>
			<option>John Players</option>
			<option>Lee</option>
			<option>Milton</option>
			<option>Motorola</option>
			<option>Parker</option>
			<option>Pepe Jeans</option>
			<option>Peter England</option>
			<option>Phlips</option>
			<option>Pinnacle</option>
			<option>Puma</option>
			<option>Skybag</option>
			<option>Sony</option>
			<option>Tupperware</option>
			<option>United Colors Of Benneton</option>
			<option>Zovi</option>
			
			</select></td></tr>
				
		<tr align="center"><td><b>product name</td>
		<td><input type="text" name="name"></td></tr>
		<tr align="center"><td><b>product model</td>
		<td><input type="text" name="model"></td></tr>
		<tr align="center"><td><b>product price</td>
		<td><input type="text" name="price"></td></tr>
		<tr align="center">
		<td><label for="file"><b>Choose a File</label></td>
		<td><input type="file" name="file1"></td>
		</tr>
		<tr align="center"><td><b>product quantity</td>
		<td><input type="text" name="quantity"></td></tr>
		<tr align="center"><td><b>product Specification</td>
		<td><input type="text" name="specifi"></td></tr>
		
		<tr align="center"><td colspan="8"><input type="submit" name="submit" value="submit"></td></tr>
</table></form>';

?>



</body>

</html>
