<head><style type="text/css">
#sidebar{
	width:200px;
	height:800px;
	background:black;
	float:left;
	margin-top:100px;
	
}
#side_title{
	color:white;
	background:green;
	font-size:22px;
	font-family:arial;
	padding:20px;
}
#cats li{
	list-style:none;
	margin:5px;
}
#cats a{  
	text-decoration:none;
	color:white;
	font-size:22px;
	font-family:comic sans ms;
	text-align:center;
	}
#cats a:hover{
	color:green;
}
#content_area{
	margin-top:85px;
	float:right;
	width:1100px;
}
#product_box{
	width:700px;
	text-align:center;
	margin-left:30px;
}
#single_prod{
	float:left;
	margin-left:20px;
	padding:10px;
}
</style>
</head>
<?php

echo '<div class="top">
	<div class="top_content">
    <a href="front.html">SHOPA-SHOPA</a>
    </div>
</div>
<div class="content_wrap">
   <div id="sidebar">
			<div id="side_title">Categories</div>
			<ul id="cats">
				<li><a href="shirt.php">Shirts</li>
				<li><a href="tshirt.php">T-Shirts</li>
				<li><a href="jeans.php">Jeans</li>
				<li><a href="footwears.php">Footwears</a></li>
			</ul>
			<div id="side_title">Brands</div>
			<ul id="cats">
				<li><a href="ucb.php">United Colors Of Benetton</li>
				<li><a href="pe.php">Peter England</li>
				<li><a href="jp.php">John Players</a></li>
				<li><a href="puma.php">Puma</a></li>
				<li><a href="pj.php">Pepe Jeans</a></li>
				<li><a href="lee.php">Lee</a></li>
			
			</ul>
			</div>
			</div>
	<div id="content_area">';
			
	$link = mysqli_connect("localhost","root",""); //Check link to the mysql server 
	if(!$link){ die("Failed to connect to server:" . mysqli_error());}
	//Select database 
	$db = mysqli_select_db($link,'SHOPAHOLIC'); 
	if(!$db){ 
	die("Unable to select database"); 
	}
	//Create query 
	$qry = "SELECT * FROM PRODUCT WHERE PRODUCT_ID BETWEEN 2041 AND 2045"; //Execute query 
	$result = mysqli_query($link, $qry); 
	
  echo 
	'<table align="center">
	';
	while ($row = mysqli_fetch_assoc($result)) { 
	echo '<tr><td align="center"><img src = "images/'.$row['PRODUCT_IMAGE'].'" height="300" width="150"></a></td>
	<td>'.$row['PRODUCT_NAME'].'</td>
	
    <td>Rs. '.$row['PRODUCT_PRICE'].'</td>
	<td>'.$row['SPECIFICATION'].'</td><td>
	<a href="cart1.php">ADD TO CART</a></td></tr>';}
	echo '</table></div>';
	?>	
	 