<body bgcolor="cyan">

<?php
session_start();
$email=$_SESSION['email'];
$link = mysqli_connect('localhost', 'root','');
 //Check link to the mysql server
 if(!$link) { die('Failed to connect to server:'. mysqli_error()); }
 //Select database 
 $db = mysqli_select_db($link,'SHOPAHOLIC'); 
 if(!$db) { 
 die("Unable to select database");
 } 
 //Create query 
 $qry="SELECT STREET,CITY,PIN,STATE FROM CUSTOMER WHERE EMAIL_ID= '$email'";
 $result = mysqli_query($link, $qry);
 	echo '<a href="logout1.php" style="text-decoration:none;font-size:30px;color:red;">Logout</a>';
 echo '<center><h1>Thankyou For Shopping with us!</h1>
<h2>Your Item will be shipped to</h2></center>';
echo 
	'<table align="center" cellspacing="5" cellpadding="12" border="2px solid red">
	';
	while ($row = mysqli_fetch_assoc($result)) { 
	echo '<tr>
	<td width="50% valign="center">'.$row['STREET'].'<br/>
	'.$row['CITY'].'<br/>
	'.$row['PIN'].'<br/>
	'.$row['STATE'].'
	</td>
	</tr>';
	}
	
	echo '</table><br/>';
	


?>
</body>