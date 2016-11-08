

<html>
<head>
<style type="text/css">
body{
	
	padding:0;
	margin:0;
	background-image:url(sub1.jpg);
	background-repeat:no-repeat;
	background-size:100%;
}

#wrapper{
	
width:700px;
background-color: #FFEFD5;
min-height: 400px;
margin-left:550px;
margin-top:30px;
border: 1px solid #999;
border-bottom: 3px solid #999;
border-radius:15px;	
}

#formDiv{
	
	margin:0px auto;
	margin-top:15px;
	border:1px;
	width:200px;
	
}
#wrap{
	width:400px;
background-color: #FFEFD5;
min-height: 200px;
float:left;
margin-top:40px;
border: 1px solid #999;
border-bottom: 3px solid #999;
border-radius:15px;	
margin-left:50px;
}

#formdiv1{
	margin:0px auto;
	margin-top:40px;
	border:1px;
	width:200px;
    	
}
label{
	
	font-family:Calibri;
	font-weight:50px;
   

	

}

header{
     height:60px;
	 position:absolute;
	 background-color:#BC8F8F;
	 width:100%;
	 top:0;
	margin-top:0px;
}

footer{

   position:relative;
   width:100%;
   height:30px;
   background:#BC8F8F;
    bottom:0;
	text-align:center;
	color:white;
	font-size:20px;
	
}

.copyright p{

  margin:0;
  padding:0;
  line-height:27px;
  color:#fff;

}
.logo{
	margin-top:7px;
}
h1{
	color:#fff;

text-shadow:0 0 5px #fff, 0 0 10px #fff, 0 0 15px #fff, 0 0 20px pink, 0 0 30px pink, 0 0 40px pink, 0 0 50px pink, 0 0 60px pink;
}
label{
	color:#616161;

text-shadow:#e0e0e0 1px 1px 0;
	
}
</style>
</head>
<body>
<header>
	<div class="logo">
   <center><a href="front.html" style="color:#fff;text-shadow:#fff 0 0 10px;text-decoration:none;font-size:40px;letter-spacing:10px;top:0px">Shopa-Shopa</a></center>
  </div>
  </header>
<marquee direction="down" behavior="alternate" height="150" style="margin-top:30px">
<marquee width="100%"  behavior="alternate"  style="font-size:60px;color:white;letter-spacing:.4em;text-shadow: 0 1px 0 #ccc,
               0 2px 0 #c9c9c9,
               0 3px 0 #bbb,
               0 4px 0 #b9b9b9,
               0 5px 0 #aaa,
               0 6px 1px rgba(0,0,0,.1),
               0 0 5px rgba(0,0,0,.1),
               0 1px 3px rgba(0,0,0,.3),
               0 3px 5px rgba(0,0,0,.2),
               0 5px 10px rgba(0,0,0,.25),
               0 10px 10px rgba(0,0,0,.2),
               0 20px 20px rgba(0,0,0,.15)"><b>Welcome to Shopaholic</b></marquee></marquee>

			   <div id="wrap">
<div id="formdiv1">
<h1>Login Here!</h1>
<form method="POST" action="customloginchk.php" enctype="multipart/form-data">
<label>Email_ID</label><br/>
<input type="text" name="email" style="background-color:#F5FFFA;"><br/><br/>
<label>Password</label><br/>
<input type="password" name="password" style="background-color:#F5FFFA;"><br/><br/>
<center><input type="submit" name="Login" value="Login"></center>
</form>
</div>
</div>
			   <div id="wrapper">

<div id="formDiv">
<h1>Register here!</h1>
<form method="POST" action="custregisterdb.php" enctype="multipart/form-data">

<label>UserName:</label><br/>
<input type="text" name="user" style="background-color:#F5FFFA;"><br/><br/>
<label>Email_id:</label><br/>
<input type="text" name="email" style="background-color:#F5FFFA;"><br/><br/>
<label>Password</label><br/>
<input type="password" name="pass" style="background-color:#F5FFFA;"><br/><br/>
<label>Street</label><br/>
<input type="text" name="street" style="background-color:#F5FFFA;"><br/><br/>
<label>Pin</label><br/>
<input type="text" name="pin" style="background-color:#F5FFFA;"><br/><br/>
<label>City</label><br/>
<input type="text" name="city" style="background-color:#F5FFFA;"><br/><br/>

<label>State</label><br/>
<input type="text" name="state" style="background-color:#F5FFFA;"><br/><br/>
<label>Phone-no.</label><br/>
<input type="text" name="phoneno" style="background-color:#F5FFFA;"><br/><br/>


<center><input type="submit" name="Register" value="Register"></center>


</form>
</div>
</div>



<footer>
   <div class="copyright">	
		<p>&copy: 2016 Copyright. All Rights Reserved</p>
</div>
</footer>
</body>
</html>

