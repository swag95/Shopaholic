<?php if ($_POST['submit'] == 'Login')
{ //Collect POST values 
$login = $_POST['login']; 
$password = $_POST['password']; 
if($login && $password)
{ 
//Connect to mysql server 
$link = mysqli_connect('localhost', 'root', '');
 //Check link to the mysql server
 if(!$link) { die('Failed to connect to server: ' . mysqli_error()); }
 //Select database 
 $db = mysqli_select_db($link, 'shopaholic'); 
 if(!$db) { 
 die("Unable to select database");
 } 
 //Create query 
 $qry="SELECT EMAIL_ID , PASSWORD FROM login WHERE EMAIL_ID= '$login' AND PASSWORD = '$password'";
 //echo $qry; 
 //Execute query
 $result=mysqli_query($link, $qry); //Check whether the query was successful or not 
 if($result){ $count = mysqli_num_rows($result); } 
 else{ //Login failed 
 include('login.php'); 
 echo '<center>Incorrect Username or Password !!!<center>'; exit(); } //if query was successful it should fetch 1 matching record from the table. 
 if($count == 1){
	 //Login successful set session variables and redirect to main page.
	 session_start(); $_SESSION['IS_AUTHENTICATED'] = 1; $_SESSION['EMAIL_ID'] = $login; header('location:front.html'); }
	 else{
		 //Login failed
 include('login.php'); echo '<center>Incorrect Username or Password !!!<center>'; exit(); }
} else{ include('login.php'); echo '<center>Username or Password missing!!</center>'; exit(); } } else{ header("location: login.php"); exit(); } ?>