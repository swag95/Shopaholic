
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
	margin-top:-850px;
	float:right;
	width:1100px;
}
#product_box{
	width:700px;
	text-align:center;
	margin-left:30px;
}
#singal_prod{
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
				<li><a href="#">Literature and Fiction</li>
				<li><a href="#">Biographies and Autobiographies</li>
				
			</ul>
			<div id="side_title">Type</div>
			<ul id="cats">
				<li><a href="#">Romance</a></li>
				<li><a href="#">Novels</a></li>
				<li><a href="#">Biographies</a></li>
		
			
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
	$qry = "SELECT * FROM PRODUCT WHERE PRODUCT_ID BETWEEN 5000 AND 6000"; //Execute query 
	$result = mysqli_query($link, $qry); 
	echo '<h1>The Books Section is - </h1>'; 
  echo 
	'<table border="1">
	
	//Show the rows in the fetched result set one by one ';
	while ($row = mysqli_fetch_assoc($result)) { 
	echo '<tr> <td>'.$row['PRODUCT_IMAGE'].'</td>
	<td>'.$row['PRODUCT_NAME'].'</td>
	
    <td>'.$row['PRODUCT_PRICE'].'</td></tr>';}
	echo '</table></div>';
	?>	
	 