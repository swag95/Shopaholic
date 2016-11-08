<html>

<head>
<style type="text/css">
#menu1 ul{
	
	width: 300px;
	background-color:#00e699;
	display: block;
	height:auto;
	margin-bottom:0;
	padding: 0;
	width:306px;
	margin-top:50px;
	text-decoraion:none;
	
}
#content_area{
	margin-top:-500px;
	float:right;
	width:900px;
}

#menu1 li{
	
	list-style: none;
	display: block;
	width: 100%;
	height: auto;
	border-bottom: 1px solid #fff;
    color: #fffafa;
	font-family: Georgia,serif;
	font-size: 20px;
	padding: 20px;
	text-align: center;
	top:-190px;
	text-decoration:none;
}

#menu1 li:hover{
	
	background: #ff4500;
	width: 270px;
}

#menu1 li{
	
	-webkit-transition :all .9s ease;
	-moz-transition:all .9s ease;
	-ms-transition :all .9s ease;
	transition:all .9s ease;
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
	font-size:30px;
	top:30px;
	text-transform:uppercase;	
}
.top_content a {
	color:#aaa;
	text-decoration:none;
	mrgin-top:20px;
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

</style>
</head>
<body>
<div class="top">
	<div class="top_content">
    <a href="front.html" style="letter-spacing:5px">Sh&hearts;paholic</a>
    </div>
</div>
<marquee direction="right" behavior="alternate" scrollamount="7" style="font-style:Helvetica;font-size:30px;color:#ff80b3;color:#fff;
background-color:#696969;margin-top:-15px;
text-shadow:#ccc 0 1px 0, #c9c9c9 0 2px 0, #bbb 0 3px 0, #b9b9b9 0 4px 0, #aaa 0 5px 0,rgba(0,0,0,.1) 0 6px 1px, rgba(0,0,0,.1) 0 0 5px, rgba(0,0,0,.3) 0 1px 3px, rgba(0,0,0,.15) 0 3px 5px, rgba(0,0,0,.2) 0 5px 10px, rgba(0,0,0,.2) 0 10px 10px, rgba(0,0,0,.1) 0 20px 20px;">Shop with us..Explore all Latest Fashion.</marquee>

<div id="menu1">
	   <ul>
	        
		   <li><a href="electronics.html" style="color:#fff;text-decoration:none" >&#8487; Electronics</a></li>
		   <li><a href="men.html"  style="color:#fff;text-decoration:none">&#9794; Men</a></li>
		   <li><a href="women.html"  style="color:#fff;text-decoration:none">&#9792; Women</a></li>
		   <li><a href="kids.html"  style="color:#fff;text-decoration:none">&#9786; Kids</a></li>
		   <li><a href="books.html"  style="color:#fff;text-decoration:none">&#10002; Books</a></li>
		   		   <li><a href="contact.html"  style="color:#fff;text-decoration:none">Contact us:</a></li>

		 </ul>
		 </div>


<?php
	echo '<div id="content_area">';

    $link = mysqli_connect("localhost","root",""); //Check link to the mysql server 
	if(!$link){
		die("Failed to connect to server:" . mysqli_error());
		}
	//Select database 
	$db = mysqli_select_db($link,'SHOPAHOLIC'); 
	if(!$db){ 
	die("Unable to select database"); 
	}
	
	
	 
	 $search_query = $_POST['user_query'];
	 
	 //$search_query = preg_replace("#[^0-9a-z]#i","",$search_query);
	 
	 
	 
	 $get_pro = "SELECT * FROM PRODUCT WHERE PRODUCT_NAME LIKE '%".$search_query."%'";
	
	 
	 //$count = mysqli_num_rows($get_pro);
	 
	 /*if($count==0){
		 echo 'There was no search results!';
	 }*/
	
	 $run_pro = mysqli_query($link,$get_pro);
	 
	
	 
	 echo  '<table align="center">';
	while ($row = mysqli_fetch_assoc($run_pro)) { 
	echo '<tr><td width="10%"  valign="top"><a href="details.php"><img src = "images/'.$row['PRODUCT_IMAGE'].'" height="300" width="150"></a></td>
	<td width="50%">'.$row['PRODUCT_NAME'].'<br/>
	
    Rs. '.$row['PRODUCT_PRICE'].'<br/>
	'.$row['SPECIFICATION'].'<br/>
	<td style="align:left">
	<a href="cart1.php" style="text-decoration:none" class="styl2">ADD TO CART</a></td>
	</tr><br/>';}

	echo '</table></div>';
		 
		 
	 	
	 
 ?>
 <footer>
   <div class="copyright">	
		<p>&copy: 2016 Copyright. All Rights Reserved</p>
		
</footer>		
 </body>
 </html>

 
 