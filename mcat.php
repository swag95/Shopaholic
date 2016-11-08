<head><style type="text/css">
#sidebar{
	width:200px;
	height:800px;
	background:#000d33;
	float:left;
	margin-top:40px;
	
}
  
footer{

   position:fixed;
   width:100%;
   height:25px;
   background:black;
    bottom:0;
	text-align:center;
}
.copyright p{

  margin:0;
  padding:0;
  line-height:27px;
  color:#fff;

}

#side_title{
	color:white;
	background:#5b5b3e;
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
	color:cyan;
}
#content_area{
	margin-top:34px;
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

*{
	margin:0;
}

.top {
	background:#222;
	height:50px;
	line-height:50px;
	width:100%;
	box-shadow:0 1px 2px rgba(0,0,0,0.6);
	
	margin:0 auto;
}
.top_content {
	width:680px;
	 text-align:center;
	font-size:40px;
	top:30px;
	text-transform:uppercase;
    margin:0 auto;
}
.top_content a {
	color:#aaa;
	text-decoration:none;
	margin-top:20px;

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
#content-area a{
	
	text-decoration:none;
	
}
.styl2 {
	
	background:#000d33;
	background:-moz-linear-gradient(top,#000d33 0%,#00195b 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#000d33),color-stop(100%,#00195b));
	background:-webkit-linear-gradient(top,#000d33 0%,#00195b 100%);
	background:-o-linear-gradient(top,#000d33 0%,#00195b 100%);
	background:-ms-linear-gradient(top,#000d33 0%,#00195b 100%);
	background:linear-gradient(top,#000d33 0%,#00195b 100%);
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#000d33', endColorstr='#00195b',GradientType=0);
	padding:10px 15px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:16px;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border:1px solid #00050a;

}
</style>
</head>
<body>
<div class="top">
	<div class="top_content">
    <a href="front.html" style="letter-spacing:5px">Sh&hearts;paholic</a>
    </div>
</div>

<marquee direction="right" behavior="alternate" scrollamount="7" style="font-style:Helvetica;font-size:30px;color:#ff80b3;color:#fff;
background-color:#696969;
text-shadow:#ccc 0 1px 0, #c9c9c9 0 2px 0, #bbb 0 3px 0, #b9b9b9 0 4px 0, #aaa 0 5px 0,rgba(0,0,0,.1) 0 6px 1px, rgba(0,0,0,.1) 0 0 5px, rgba(0,0,0,.3) 0 1px 3px, rgba(0,0,0,.15) 0 3px 5px, rgba(0,0,0,.2) 0 5px 10px, rgba(0,0,0,.2) 0 10px 10px, rgba(0,0,0,.1) 0 20px 20px;">Find New Deals Everyday!!!</marquee>
</body>
<?php

echo '

<div class="content_wrap">
   <div id="sidebar">
			<div id="side_title">Categories</div>
			<ul id="cats">
				<li><a href="shirts.php">Shirts</li>
				<li><a href="tshirts.php">T-Shirts</li>
				<li><a href="jeans.php">Jeans</a></li>
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
	$qry = "SELECT * FROM PRODUCT WHERE PRODUCT_ID BETWEEN 2000 AND 3000"; //Execute query 
	$result = mysqli_query($link, $qry); 
	
  echo 
	'<table align="center" cellspacing="5" cellpadding="12" border="2px solid red">
	';
	while ($row = mysqli_fetch_assoc($result)) { 
	echo '<tr><td vlign="top" width="20%"><img src = "images/'.$row['PRODUCT_IMAGE'].'" height="300" width="150"></a></td>
	<td width="50% valign="center"><h2>'.$row['PRODUCT_NAME'].'</h2><br/>
	Rs. '.$row['PRODUCT_PRICE'].'<br/>
	'.$row['SPECIFICATION'].'
	</td><td>
	<a href="cart1.php" class="styl2" style="text-decoration:none">ADD TO CART</a></td></tr>';}
	echo '</table></div>';
	?>	
	<html>
<body>
	<footer>
   <div class="copyright">	
		<p>&copy: 2016 Copyright. All Rights Reserved</p>
		
		</div>
		</footer>
		</body>
		</html>
		
		
 