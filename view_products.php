<?php 
//Start the session to see if the user is authencticated user. 
session_start(); //Check if the user is authenticated first. Or else redirect to login page 
if(isset($_SESSION['IS_AUTHENTICATED']) && $_SESSION['IS_AUTHENTICATED'] == 1){
	require('menu.php'); //Connect to mysql server 
	$link = mysqli_connect('dbms.iiitdmj.ac.in', 'username', 'password'); //Check link to the mysql server 
	if(!$link){ die('Failed to connect to server: ' . mysqli_error()); }
	//Select database 
	$db = mysqli_select_db($link,'yourdatabase'); 
	if(!$db){ 
	die("Unable to select database"); 
	}
	//Create query 
	$qry = "SELECT * FROM PLAYERS"; //Execute query 
	$result = mysqli_query($link, $qry); echo '<h1>The Players Details are - </h1>'; 
	//Draw the table for Players 
	echo 
	'<table border="1">
	<th>Player No</th> <th>Initials</th> <th>Name</th> 
	<th>Birth Date</th> <th>Sex</th> <th>Joined</th> <th>Street</th> 
	<th>House No</th> <th>Post Code</th> <th>Town</th> 
	<th>Phone no</th> <th>League No</th>';
	//Show the rows in the fetched resultset one by one 
	while ($row = mysqli_fetch_assoc($result)) { echo '<tr> <td>'.$row['PLAYERNO'].'</td> <td>'.$row['NAME'].'</td> 
	<td>'.$row['INITIALS'].'</td> <td>'.$row['BIRTH_DATE'].'</td>
<td>'.$row['SEX'].'</td> 
<td>'.$row['JOINED'].'</td>
 <td>'.$row['STREET'].'</td> 
 <td>'.$row['HOUSENO'].'</td> 
 <td>'.$row['POSTCODE'].'</td> 
 <td>'.$row['TOWN'].'</td>
 <td>'.$row['PHONENO'].'</td> 
 <td>'.$row['LEAGUENO'].'</td> </tr>'; } echo '</table>'; } else{ header('location:login_form.php'); exit(); } ?>