<?php


			
	$link = mysqli_connect("localhost","root",""); //Check link to the mysql server 
	if(!$link){ die("Failed to connect to server:" . mysqli_error());}
	//Select database 
	$db = mysqli_select_db($link,'SHOPAHOLIC'); 
	if(!$db){ 
	die("Unable to select database"); 
	}
	//Create query 
	$qry = "SELECT * FROM DEMO"; //Execute query 
	$result = mysqli_query($link, $qry); 
	
  echo 
	'<table border="1">
	';
	
		
	
	while ($row = mysqli_fetch_assoc($result)) { 
	   $pro_image=$row['IMAGE'];
	echo '<tr> <td>'.'<img height="300" width="300" src= ".pro_image." >'.'</td>
	<td>'.$row['NAME'].'</td>
	
    <td>'.$row['ID'].'</td></tr>';}
	echo '</table>';
	?>	
	 